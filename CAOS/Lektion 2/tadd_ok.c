#include <stdio.h>

int tadd_ok(int x, int y);

int main(){


}


int tadd_ok(int x, int y){

    int sum = x + y;
    int overflow = x >= 0 && y >= 0 && sum < 0;
    int underflow = x < 0 && y < 0 && sum >= 0;
    
    return !overflow && !underflow;
}
