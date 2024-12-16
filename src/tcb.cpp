//
// Created by os on 5/22/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createThread(Body body) {
    return new TCB(body, TIME_SLICE);
}

uint64 TCB::timeSliceCounter = 0;


void TCB::yield(){

    __asm__ volatile ("ecall");

}

void TCB::dispatch(){

    TCB* old = running;
    if (!old->isFinished()){
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();

}


