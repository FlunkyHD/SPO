#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h>
#define IDENT 0;
#define OP +
#define SIZE 1024*257
//Long = 8 Bytes
//Array størrelse = SIZE * 8
//1024 * 1024 * 8 = 8.388.608‬ bit = 1024 KB
//Min computers L1 er 32KB
//1024 * 32 * 8 = 262144 bit = 32 KB
//Giver 330486 cycles
//1024 * 32 * 4 = 131072 bit = 16 KB
//136671 cycles
//1024 * 33 * 8 = 270336 bit = 33 KB
//273453 Cycles ????? hurtigere????
//1024 * 40 * 8 = 40 KB
//444285

//L2 = 256 KB
//1024 * 255 * 8 = 255 KB
// 2719614 Cycles
//1024 * 257 * 8 = 257 KB
// 2497026 Cycles??? Hurtigere igen :/
void average_array(long *arr) {

    int steps = SIZE;
    int lengthMod = steps - 1;

    for (int i = 0; i < steps; i++)
    {
        arr[(i * 16) & lengthMod]++; // (x & lengthMod) is equal to (x % arr.Length)
    }

}

long the_array[SIZE];

void init_array(long *arr, int size) {
    int i;
    for (i = 0; i < size; i++)
        arr[i] = rand() % 1024;
}


int main() {
    init_array(the_array, SIZE);

    unsigned long t1,t2;
    
    t1 = __rdtsc();
    average_array(the_array);
    t2 = __rdtsc();
    printf("Time %lu cycles\n", t2-t1);
  
    return 0;
}
