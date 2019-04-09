//
//  LYFunTime.c
//  TestFun
//
//  Created by lyle on 2019/3/29.
//  Copyright © 2019年 lyle. All rights reserved.
//

//#include "LYFunTime.h"

#include "stdio.h"
#include "sys/time.h"
#include "time.h"

long fun_b(){
    struct timeval star;
    gettimeofday(&star, NULL);
    long b = star.tv_sec * 1000000 + star.tv_usec;
    return b;
}

void fun_e(char *name, long b){
    struct timeval end;
    gettimeofday(&end, NULL);
    long e = end.tv_sec * 1000000 + end.tv_usec;
    long t = e - b;
    printf("%s %ld us\n",name, t);
}
