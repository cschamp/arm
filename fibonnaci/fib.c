#include <stdio.h>
#include <stdlib.h>

/*
 * Compute the Fibonacci sequence of 'n' numbers
 * and store result in 'sequence'.
 *
 * Return 1 on success, 0 on error
 *
 * First 6 numbers in a sequence starting at 1:
 * 0, 1, 1, 2, 3, 5
 *
 * For n > 1, F[n] = F[n-1] + F[n-2], F[0] = 0, F[1] = 1
 */
int fibonacci(int n, int *seq)
{
/* XXX    if (seq == NULL || n < 2) return 0; */

   *seq++ = 0;  /* F[0] */
   *seq++ = 1;  /* F[1] */
   n -= 2;
   while (n-- > 0) {
      *seq = *(seq - 1) + *(seq - 2);
      seq++;
   }

   return 1;
}

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
