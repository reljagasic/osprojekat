#ifndef PROJECT_BASE_PRINT_HPP
#define PROJECT_BASE_PRINT_HPP


#include "../h/syscall_c.hpp"

typedef unsigned long uint64;

extern "C" uint64 copy_and_swap(uint64 &lock, uint64 expected, uint64 desired);

void printString(char const *string);

char* getString(char *buf, int max);

int stringToInt(const char *s);

void printInt(int xx, int base=10, int sgn=0);


#endif //PROJECT_BASE_PRINT_HPP
