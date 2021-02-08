#include <stdio.h>
#include <time.h>

// Function to swap numbers 
void swap(int* a, int* b) 
{ 
    int temp = *a; 
    *a = *b; 
    *b = temp; 
} 
  
/* This function takes last element as pivot, 
   places the pivot element at its correct 
   position in sorted  array, and places 
   all smaller (smaller than pivot) to left 
   of pivot and all greater elements to  
   right of pivot */
int partition(int arr[], int l, int h) 
{ 
    int x = arr[h]; 
    int i = (l - 1); 
  
    for (int j = l; j <= h - 1; j++) { 
        if (arr[j] <= x) { 
            i++; 
            swap(&arr[i], &arr[j]); 
        } 
    } 
    swap(&arr[i + 1], &arr[h]); 
    return (i + 1); 
} 
  
/* A[] --> Array to be sorted,  
l --> Starting index,  
h --> Ending index */
void quickSort(int A[], int l, int h) 
{ 
    if (l < h) { 
        /* Partitioning index */
        int p = partition(A, l, h); 
        quickSort(A, l, p - 1); 
        quickSort(A, p + 1, h); 
    } 
} 


int main(){

    double time_spent = 0.0;
    clock_t begin = clock();

    int arr[] = { 4, 3, 5, 2, 1, 3, 2, 3 }; 
    int n = sizeof(arr) / sizeof(*arr);
    quickSort(arr, 0, n - 1); 
  
    for (int i = 0; i < n; i++) {
	printf("%d ", arr[i]); 
    } 
    printf("\n");

    clock_t end = clock();
    time_spent += (double)(end - begin) / CLOCKS_PER_SEC;

    printf("Time elapsed is: %lf seconds \n", time_spent);

    return 0; 
}
