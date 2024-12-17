//
// Created by os on 5/22/24.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "semaphore.hpp"


class TCB{
public:
    ~TCB(){ delete [] stack; }

    bool isFinished() const {return finished; }

    void setFinished(bool finished) { TCB::finished = finished;}

    uint64 getTimeSlice() const{
        return timeSlice;
    }

    using Body = void(*)(); // pokazivac na funkciju bez argumenata i povratnih vrednosti

    // static TCB *createThread(Body body); // stari sa snimka

    static int createThread(TCB** handle, Body body = nullptr, void* arg = nullptr, char* stackAlloc = nullptr);

    static void yield();

    static TCB* running;

    bool isBlocked() const;

    void setBlocked(bool blocked);


private:

//    explicit TCB(Body body, uint64 timeSlice) :
//                body(body),
//                stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
//                context({(uint64) &threadWrapper,
//                         stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
//                        }),
//                timeSlice(timeSlice),
//                finished(false) {
//         if (body != nullptr ) Scheduler::put(this);
//    }

    TCB(Body body, void* arg, char* stackSpace); // definisati ga u cpp

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack; // pokazivac na niz lokacija u steku
    Context context;
    uint64 timeSlice;
    bool finished; // da li je gotov thread
    void* arg;
    bool blocked;


    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;


    friend class Semaphore;

};


#endif //PROJECT_BASE_TCB_HPP
