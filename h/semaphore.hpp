//
// Created by os on 12/17/24.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "list.hpp"
#include "tcb.hpp"
#include "riscv.hpp"

class Semaphore {

private:
    int val;
    List<TCB> blockedThreads;
    bool closed;
public:
    bool isClosed() const;

    void setClosed(bool closed);

protected:
    void block();
    void unblock();
public:
    Semaphore(unsigned init){
        this->val = init;
        this->closed = false;

    }
    int wait();
    int signal();
    int getVal() {
        return val;
    }
    int createSemaphore(Semaphore** handle, unsigned init);
    int close(Semaphore* id);
    int tryWait();

    friend class Riscv;


};


#endif //PROJECT_BASE_SEMAPHORE_HPP
