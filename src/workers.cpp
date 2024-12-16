//
// Created by os on 5/21/24.
//

#include "../h/workers.hpp"
#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void workerBodyA(){

    for(uint64 i = 0; i < 10; i++){
        printString("A: i=");
        printInt(i);
        printString("\n");
        for(uint64 j = 0; j < 10000; j++){
            for(uint64 k = 0;k<30000;k++){
                // busy wait
            }
            //TCB::yield;
        }
    }
}

void workerBodyB(){

    for(uint64 i = 0; i < 10; i++){
        printString("B: i=");
        printInt(i);
        printString("\n");
        for(uint64 j = 0; j < 10000; j++){
            for(uint64 k = 0;k<30000;k++){
                // busy wait
            }
            //TCB::yield;
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) {
        TCB::yield();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyC()
{
    uint8 i = 0;
    for (; i < 3; i++)
    {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }

    printString("C: yield\n");
    __asm__ ("li t1, 7");
    TCB::yield();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1=");
    printInt(t1);
    printString("\n");



    uint64 result = fibonacci(20);
    printString("C: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 6; i++)
    {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }


    //TCB::yield

}

void workerBodyD()
{
    uint8 i = 10;
    for (; i < 13; i++)
    {
        printString("D: i=");
        printInt(i);
        printString("\n");
    }

    printString("D: yield\n");
    __asm__ ("li t1, 5");
    TCB::yield();


    uint64 result = fibonacci(23);
    printString("D: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++)
    {
        printString("D: i=");
        printInt(i);
        printString("\n");
    }

    //TCB::yield;

}


