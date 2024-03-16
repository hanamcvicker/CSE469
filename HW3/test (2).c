#include "libmc/libmc.h"


extern int fib(int n);

int _double(int);

//int test(char *s) {
//   printf("%s\n", s);
//   int x = _double(5);
//}

typedef unsigned int uint32_t;
typedef signed int int32_t;



int f() {
    uint32_t    i_j;
    int32_t     i_s;
    int     i;
    for(i = 0; i < 10; i++)
        printf("%d\n", i);
}

int main() {
  
  int n = 10;
  int a = fib(n);
  printf("%d\n", a);

}

