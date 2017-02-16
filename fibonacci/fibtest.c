#include <stdio.h>
#include <stdlib.h>

extern int fibonacci(int n, int *seq);

#define  SEQSIZE  21
static int sequence[SEQSIZE];

int main(int argc, char **argv)
{
   int i;
   if (!fibonacci(SEQSIZE, sequence)) {
      printf("error\n");
      exit(-1);
   }

   for (i = 0; i < SEQSIZE; i++)
      printf("%d ", sequence[i]);
   printf("\n");
   exit(0);
}
