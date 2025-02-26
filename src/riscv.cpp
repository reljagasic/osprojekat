//
// Created by os on 5/22/24.
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie(){

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 scause = r_scause();
    uint64 code = r_a0();
    uint64 arg1 = r_a1();
    uint64 arg2 = r_a2();
    uint64 arg3 = r_a3();
    uint64 arg4 = r_a4();
    uint64 arg5 = r_a5();

    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){

        // interrupt: no, cause code: ecall from any mode
        uint64 sepc = r_sepc() + 4; // ecall vraca na sebe a ne na seldecu funkciju zato pisemo + 4, instrukcije su 4 bajta
        uint64 sstatus = r_sstatus();

        switch (code){
            case 0x11:{
                // thread_create
                TCB** handle = (TCB**)arg1;
                TCB::Body startRoutine = (TCB::Body)arg2;
                void* arg = (void*)arg3;
                char* stackSpace = (char*)arg4;
                int retVal = TCB::createThread(handle, startRoutine, arg, stackSpace);
                // funkcija za vracanje povratne vrednosti u riscv

                // za vracanje povratnih vrednosti, kod greske se upisuje u a0, on se posle vadi i cita se; videti syscall_c.cpp
                Riscv::w_a0(retVal); // u a0 upisati retVal

                break;
            }
            case 0x12: {
                //thread_exit
                TCB::running->setFinished(true);
                TCB::dispatch();
                break;
            }
            case 0x13: {
                //thread_dispatch
                TCB::dispatch();
                break;
            }
            case 0x21: {
                //sem_open
                Semaphore** handle = (Semaphore**)arg1;
                unsigned int init = (unsigned int)arg2;
                int retVal = Semaphore::createSemaphore(handle, init);
                Riscv::w_a0(retVal); // u a0 upisati retVal
                break;
            }
            case 0x22: {
                //sem_close
                Semaphore* id = (Semaphore*)arg1;
                int retVal = Semaphore::close(id);
                // funkcija za vracanje povratne vrednosti u riscv
                Riscv::w_a0(retVal); // u a0 upisati retVal
                delete id;
                break;
            }
            case 0x23: {
                //sem_wait
                Semaphore* id = (Semaphore*)arg1;
                int retVal = Semaphore::wait();
                // funkcija za vracanje povratne vrednosti u riscv
                Riscv::w_a0(retVal); // u a0 upisati retVal
                break;
            }
            case 0x24: {
                //sem_signal
                Semaphore* id = (Semaphore*)arg1;
                int retVal = Semaphore::signal();
                // funkcija za vracanje povratne vrednosti u riscv
                Riscv::w_a0(retVal); // u a0 upisati retVal
                break;
            }
            case 0x26:{
                //sem_tryWait
                Semaphore* id = (Semaphore*)arg1;
                int retVal = Semaphore::tryWait();
                // funkcija za vracanje povratne vrednosti u riscv
                Riscv::w_a0(retVal); // u a0 upisati retVal
                break;
            }
        }

        TCB::timeSliceCounter = 0; // ovo mozda i ne treba jer ne radim nista asinhrono
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);

    } else if (scause == 0x8000000000000001UL){

        // interrupt: yes, cause code: supervisor software interrupt (timer)
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);

    } else if (scause == 0x8000000000000009UL){

        // interrupt: yes, cause code: supervisor external interrupt (timer)
        console_handler();

    } else{

        // unexpected trap cause
        // print scause
        // print sepc
        // print stval

        size_t volatile sepc = r_sepc();
        printString("Exception! scause: ");
        printInt(scause);
        printString("\n sepc: ");
        printInt(sepc);
        while (true) {}

    }
}
