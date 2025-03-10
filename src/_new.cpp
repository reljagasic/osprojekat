#include "../lib/mem.h"
#include "../h/syscall_cpp.hpp"


void *operator new (uint64 n){
    return __mem_alloc(n);
}

void *operator new[] (uint64 n){
    return __mem_alloc(n);
}

void operator delete (void *p) noexcept{
    __mem_free(p);
}

void operator delete[] (void *p) noexcept{
    __mem_free(p);
}