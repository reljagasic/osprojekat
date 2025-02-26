//
// Created by os on 12/17/24.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void Semaphore::block() {
    TCB* thread = TCB::running;
    thread->setBlocked(true);
    blockedThreads.addLast(thread);
    TCB::running = Scheduler::get();
    TCB::contextSwitch(&thread->context, &TCB::running->context);
}

void Semaphore::unblock() {
    TCB* thread = blockedThreads.removeFirst();
    Scheduler::put(thread);
}

int Semaphore::wait() {
    val--;
    if (val<0){
        block();
    }
    if(this->closed) return -1;
    return 0;
}

int Semaphore::signal() {
    val++;
    if (val<=0){
        unblock();
    }
    return 0;
}

int Semaphore::tryWait() {
    if(this->closed) return -1;
    return (val-1 > 0);
}

int Semaphore::createSemaphore(Semaphore **handle, unsigned int init) {
    Semaphore semaphore = new Semaphore(init);
    if(!semaphore) return -1;
    *handle = semaphore;
    return 0;
}

int Semaphore::close(Semaphore *id) {
    if(id->isClosed()) return -1;
    id->setClosed(true);
    while(id->blockedThreads.peekFirst()){
        TCB* t = id->blockedThreads.removeFirst();
        Scheduler::put(t);
    }
    return 0;
}

bool Semaphore::isClosed() const {
    return closed;
}

void Semaphore::setClosed(bool closed) {
    Semaphore::closed = closed;
}
