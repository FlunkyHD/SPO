#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

//fib(n) = fib(n-1)+fib(n-2)
//fib(0)=0; fib(1)=1

//Only values 0-255 can be transferred using exit as it is normally intended to carry a simple exit code; not the result of a complex computation. 
//For training with fork only: it is hopelessly inefficient as parallelization of fib

int fib(int n) {
  
  pid_t c1;

  c1=fork();
  if(c1==0) {
    //CHILD
    printf("process %d\n", getpid());
    exit( 42); 
  } else {
    //PARENT
    pid_t c;
    int wStatus1=0;
    c=wait(&wStatus1);

    if( ( WIFEXITED(wStatus1) )  ){ //did child exit normally
      int exitValue1=WEXITSTATUS(wStatus1);
      printf("Process %d got %d from %d\n",
	getpid(), exitValue1, c);
      exit(43);
     }
  }
 printf("ONLY Reached if something went wrong!\n");
}

int main(int argc, char* argv[] ) {
 if(argc==2)  
	(void) fib(atoi(argv[1]));
}