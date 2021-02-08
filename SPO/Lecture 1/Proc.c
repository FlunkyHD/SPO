#include <stdio.h>
#include <time.h>

int proc(int a[]);

int main(){
        // to store execution time of code
    double time_spent = 0.0;
    clock_t begin = clock();

    int array[1000000];
    proc(array);

    clock_t end = clock();
    time_spent += (double)(end - begin) / CLOCKS_PER_SEC;
 
    printf("Time elpased is %f seconds\n", time_spent);
    return 0;
}

int proc(int a[]) {
    int sum = 0, i;
    for (i=0; i < 1000000; i++)
        sum += a[i];
    return sum;
}
