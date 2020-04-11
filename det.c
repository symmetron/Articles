#include<stdio.h>
#include<stdlib.h>
#define N 4

void sort(int* array, int k)
{
	int i, j, noswap;
	int temp;
	for (i = 0; i<k - 1; i++)
	{
		noswap = 1;
		for (j = 0; j<k - i - 1; j++)
		{
			if (array[j + 1]<array[j])
			{
				temp = array[j];
				array[j] = array[j + 1];
				array[j + 1] = temp;
				noswap = 0;
			}
		}
		if (noswap)
			break;
	}
}

void next(int* array)
{
	int count;
	for (count = N - 1; count>0; count--)
	{
		if (array[count - 1]<array[count])
		{
			break;
		}
	}
	int chosen = count;
	int i;
	for (i = count; i<N; i++)
	{

		if (array[i]>array[count - 1] && array[i]<array[chosen])
			chosen = i;
	}
	int temp;
	temp = array[count - 1];
	array[count - 1] = array[chosen];
	array[chosen] = temp;
	sort(array + count, N - count);
	for (i = 0; i<N; i++)
	{
		printf("%d", array[i]);
	}
	printf("\n");
}

int main()
{
	int* array = (int*)malloc(sizeof(int)*N);
	int i;
	int jc = 1;
	for (i = 0; i<N; i++)
	{
		array[i] = i + 1;
		jc *= i + 1;
	}
	for (i = 0; i<N; i++)
	{
		printf("%d", array[i]);
	}
	printf("\n");
	for (i = 0; i<jc - 1; i++)
		next(array);
	return 0;
}