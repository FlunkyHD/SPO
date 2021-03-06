#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h>
#define IDENT 0;
#define OP +

void average_array(long *arr, int size, long* res) {
    int i;
    int limit = size - 9;
    long acc0 = IDENT
    long acc1 = IDENT
    long acc2 = IDENT
    long acc3 = IDENT
    long acc4 = IDENT
    long acc5 = IDENT
    long acc6 = IDENT
    long acc7 = IDENT
    long acc8 = IDENT
    long acc9 = IDENT

    for (i = 0; i < limit; i+=10) {
        acc0 = acc0 OP arr[i];
        acc1 = acc1 OP arr[i+1];
        acc2 = acc2 OP arr[i+2];
        acc3 = acc3 OP arr[i+3];
        acc4 = acc4 OP arr[i+4];
        acc5 = acc5 OP arr[i+5];
        acc6 = acc6 OP arr[i+6];
        acc7 = acc7 OP arr[i+7];
        acc8 = acc8 OP arr[i+8];
        acc9 = acc9 OP arr[i+9·];
    }

    for (; i < size; i++){
        acc0 = acc0 + arr[i];
    }

    *res = (acc0 + acc1 + acc2 + acc3 + acc4 + acc5 + acc6 + acc7 + acc8 + acc9) / size;
}

//#define SIZE 1024*1024*32
#define SIZE 1024
long the_array[SIZE];

void init_array(long *arr, int size) {
    int i;
    for (i = 0; i < size; i++)
        arr[i] = rand() % 1024;
}


int main() {
    init_array(the_array, SIZE);
    long avg = 0;

    unsigned long t1,t2;
    
    t1 = __rdtsc();
    average_array(the_array, SIZE, &avg);
    t2 = __rdtsc();
    printf("Time %lu cycles \t Average: %ld\n", t2-t1, (long) avg);
  
    return 0;
}
