//
// Created by os on 5/21/24.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP


#include "../lib/hw.h"

void* mem_alloc(size_t size);
int mem_free(void* s);

class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_exit();
void thread_dispatch();

class Semaphore;
typedef Semaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);
int sem_trywait(sem_t id);



#endif //PROJECT_BASE_SYSCALL_C_HPP
