#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h>

void average_array(long *arr, int size, long* res) {
    int i;
    int limit = size - 9;
    long acc0 = 0;
    long acc1 = 0;
    long acc2 = 0;
    long acc3 = 0;
    long acc4 = 0;
    long acc5 = 0;
    long acc6 = 0;
    long acc7 = 0;
    long acc8 = 0;
    long acc9 = 0;

    for (i = 0; i < limit; i+=10) {
        acc0 = acc0 + arr[i];
        acc1 = acc1 + arr[i+1];
        acc2 = acc2 + arr[i+2];
        acc3 = acc3 + arr[i+3];
        acc4 = acc4 + arr[i+4];
        acc5 = acc5 + arr[i+5];
        acc6 = acc6 + arr[i+6];
        acc7 = acc7 + arr[i+7];
        acc8 = acc8 + arr[i+8];
        acc9 = acc9 + arr[i+9];
    }

    for (; i < size; i++){
        acc0 = acc0 + arr[i];
    }
    acc0 = acc0 + acc1 + acc2 + acc3 + acc4 + acc5 + acc6 + acc7 + acc8 + acc9;
    *res = acc0 / size;
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
