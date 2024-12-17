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
    return retVal;
}

void thread_dispatch() {
    sysCall(0x13);
}
