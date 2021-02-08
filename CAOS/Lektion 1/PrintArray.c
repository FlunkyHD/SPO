#include <stdio.h>

/*
Write a function printArray with parameter type long array, that prints the resulting value as a long integer value and a long hexidecimal value respectively (using %lu respectively %lx as placeholders in printf, and use it to print a sample array "a" containing 20 elements each initialized with the value from 10+i (where i  is the index). Ie 10,11,...,29
 * */

void PrintArray(long array[]);
void PrintPointer(long *pPointer);
void Swap(long *pPoint1, long *pPoint2);
const int SIZE = 21;
	
int main(){
	long a[SIZE];
	for(int i = 0; i <= 20; i++){
		a[i] = i + 10;
	}

	PrintArray(a);
	long *x = &a[3];
	printf("Address of index 3: %p \n", &a[3]);
	PrintPointer(&a[4]);
	printf("Address of index 3: %p \n", x);
	printf("Value of index 3: %ld \n", *x);
	Swap(&a[0],&a[5]);
	PrintArray(a);

	long y = *(x+100);
	long yy = *(x+9);
	//long yyy = *(x+100000);
	printf("Hex value of y(x+9): %lx \n", yy);
	printf("Hex value of y(x+100): %lx \n", y);
	//printf("Hex value of y(x+100000): %lx \n", yyy);

	return 0;
}

void Swap(long *pPoint1, long *pPoint2){
	long temp = *pPoint1;
	*pPoint1 = *pPoint2;
	*pPoint2 = temp;
}

void PrintArray(long array[]){
	
	for(int i = 0; i < SIZE; i++){

		printf("INT: %ld --> HEX: %lx \n",array[i], array[i]);
	}
}

void PrintPointer(long *pPointer){
	printf("POINTER: %ln \n", pPointer); 
}

