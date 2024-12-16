//
// Created by os on 5/21/24.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP


#include "list.hpp"

class TCB;

class Scheduler
{
public:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};


#endif //PROJECT_BASE_SCHEDULER_HPP
