//
// Created by os on 12/16/24.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    thread_exit();
    delete myHandle; // mora da se preklope new i delete
}

int Thread::start() {
    if (myHandle == nullptr){
        return thread_create(&myHandle, body, arg);
    }
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

// proveriti
Thread::Thread() {
    myHandle = nullptr;
    body = threadWrapper;
    arg = this;
}

void Thread::threadWrapper(void *thread) {
    if (thread){
        ((Thread*)thread)->run();
    }
}
// proveriti

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}
