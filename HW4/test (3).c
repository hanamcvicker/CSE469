#include "libmc/libmc.h"


//extern int fib(int n);
extern int hw4(const char *s);
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
  
  char* c = "-123456";
  int a = hw4(c);
  printf("%d\n", a);

}

