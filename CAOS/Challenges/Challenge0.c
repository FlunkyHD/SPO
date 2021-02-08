#include <stdio.h>
#include <stdlib.h>

// function to convert decimal to binary
void decToBinary(int n)
{
    // array to store binary number
    int binaryNum[32];

    for(int k = 0; k <= 32; k++){
    	binaryNum[k] = 0;
    }

    // counter for binary array
    int i = 0;
    while (n > 0) {

        // storing remainder in binary array
        binaryNum[i] = n % 2;
        n = n / 2;
        i++;
    }

    // printing binary array in reverse order
    for (int j = i - 1; j >= 0; j--){
	    if(j % 8 == 7){
	    	printf(" ");
	    }
	printf("%d",binaryNum[j]);
    }
    printf("\n");

    char byte1[8];
    char byte2[8];
    char byte3[8];
    char byte4[8];
    int count = 39;

    for(int l = 0; l < 32; l++){
    	if(l < 8)
		byte1[count % 8] = binaryNum[l];
	else if(l < 16)
		byte2[count % 8] = binaryNum[l];
	else if(l < 24)
		byte3[count % 8] = binaryNum[l];
	else
		byte4[count % 8] = binaryNum[l];

	count--;
    }


    char tmp = 0;
    for(int m = 0; m < 8; m++){
    	tmp |= byte1[m] << (8-1-m); 
    }
	printf("%c", tmp);

     tmp = 0;
    for(int m = 0; m < 8; m++){
        tmp |= byte2[m] << (8-1-m);
    }

    printf("%c", tmp);

    tmp = 0;
    for(int m = 0; m < 8; m++){
        tmp |= byte3[m] << (8-1-m);
    }

    printf("%c", tmp);

    tmp = 0;
    for(int m = 0; m < 8; m++){
        tmp |= byte4[m] << (8-1-m);
    }
 

    printf("%c", tmp);


    printf(" ");

}

int main(){

	decToBinary(539913291);
	decToBinary(539767857);
	decToBinary(759570537);
	decToBinary(1651862635);
	decToBinary(560883042);



//Besked2
	
/*	
	unsigned char *kode [] = {
		(unsigned char *) 0x7ffff7dd5129,(unsigned char *) 0x7ffff7dd5377, (unsigned char *)0x7ffff7dd7192, (unsigned char *)0x7ffff7dd5190, (unsigned char *)0x7ffff7dd536b, (unsigned char *)0x7ffff7dd5072, (unsigned char *)0x7ffff7dd54b0, (unsigned char *)0x7ffff7dd5342, (unsigned char *)0x7ffff7dd50d0, (unsigned char *)0x7ffff7dd53a2, (unsigned char *)0x7ffff7dd5072, (unsigned char *)0x7ffff7dd539c, (unsigned char *)0x7ffff7dd5717, (unsigned char *)0x7ffff7dd5342, (unsigned char *)0x7ffff7dd5520  
	};

	for(int i = 0; i < 15; i++){
		printf("%d: ",*kode[i]);
	}
	*/
/*
	unsigned char * p1 = (unsigned char *) 0x7ffff7dd5129;
	int * p2 = (int *) 0x7ffff7dd5129;
	int * p3 = (int *) 0x7ffff7dd5377;
	unsigned int * p4 = (unsigned int *) 0x7ffff7dd5377;
	float * p5 = (float *) 0x7ffff7dd5129;
	unsigned char * p6 = (unsigned char *) 0x7ffff7dd5129;
	unsigned int * p7 = (unsigned int *) 0x7ffff7dd5129;
	unsigned char * p8 = (unsigned char *) 0x7ffff7dd5342;
	unsigned char * p9 = (unsigned char *) 0x7ffff7dd50d0;
	unsigned char * p10 = (unsigned char *) 0x7ffff7dd53a2;
	unsigned char * p11 = (unsigned char *) 0x7ffff7dd5072;
	unsigned char * p12 = (unsigned char *) 0x7ffff7dd539c;
	unsigned char * p13 = (unsigned char *) 0x7ffff7dd5717;
	unsigned char * p14 = (unsigned char *) 0x7ffff7dd5342;
	unsigned char * p15 = (unsigned char *) 0x7ffff7dd5520;
	printf("TEST: %c %c \n", *p6, *p8);
*/
	return 0;
}
