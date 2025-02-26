//
// Created by os on 5/21/24.
//

#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../h/riscv.hpp"

void sysCall(size_t arg0, size_t arg1 = 0, size_t arg2 = 0, size_t arg3 = 0, size_t arg4 = 0, size_t arg5 = 0) {
    __asm__ volatile("ecall");
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    if (!handle) return -1;
    void* stackSpace = nullptr;
    if (start_routine){
        start_routine = __mem_alloc(DEFAULT_STACK_SIZE);
        if(!stackSpace) return -1;
    }
    sysCall(0x11, (size_t)handle,(size_t)start_routine,(size_t)arg, (size_t)stackSpace);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;
}

int thread_exit() {
    sysCall(0x12);
    int volatile retVal = (int)Riscv::r_a0();
    // ovde mozda ima greske

    return retVal;
}

void thread_dispatch() {
    sysCall(0x13);
}

int sem_open(sem_t *handle, unsigned int init) {
    if (!handle) return -1;
    sysCall(0x21, (size_t)handle, init);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;

}

int sem_close(sem_t handle) {
    if (!handle) return -1;
    sysCall(0x22, (size_t)handle);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;
}

int sem_wait(sem_t id) {
    if (!id) return -1;
    sysCall(0x23, (size_t)id);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;
}

int sem_signal(sem_t id) {
    if (!id) return -1;
    sysCall(0x24, (size_t)id);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;
}

int sem_tryWait(sem_t id) {
    if (!id) return -1;
    sysCall(0x26, (size_t)id);
    int volatile retVal = (int)Riscv::r_a0();
    return retVal;
}




