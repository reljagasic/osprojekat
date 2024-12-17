//
// Created by os on 5/22/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

//TCB *TCB::createThread(Body body) {
//    return new TCB(body, TIME_SLICE);
//}

int TCB::createThread(TCB **handle, TCB::Body body, void *arg, char *stackAlloc) {
    TCB* newThread = new TCB(body, arg, stackAlloc);
    if (!newThread){
        *handle = nullptr;
        return -1
    }
    *handle = newThread
    return 0;
}

TCB::TCB(TCB::Body body, void *arg, char *stackSpace) {
    this->body = body;
    this->arg = arg;
    this->stack = stackSpace;
    this->finished = false;
    this->context.ra = (uint64) &threadWrapper;
    this->context.sp = stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0;
    this->timeSlice = DEFAULT_TIME_SLICE;
    if (body != nullptr ) Scheduler::put(this);

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






