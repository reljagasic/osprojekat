//
// Created by os on 5/22/24.
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie(){

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL){

        // interrupt: no, cause code: environment call from s code
        uint64 sepc = r_sepc() + 4; // ecall vraca na sebe a ne na seldecu funkciju zato pisemo + 4, instrukcije su 4 bajta
        uint64 sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);

    }else if (scause == 0x8000000000000001UL){

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

    }


}
