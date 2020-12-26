/*
    Author: Parsia Hedayat
    Description: Better understand pointers
*/

#include <stdio.h>

int main(int argc, char **argv){
    printf("Suppose we have:\n\n\tint i = 10;\n\tint *p = &i;\n\nWhat's really going on here?\n\n");
    
    // We first declare a primitive, like an int or char
    int i = 10;

    // Then we declare a pointer to take the ADDRESS of i
    int *p = &i;

    // Now we print out the results to examine
    printf("Value of i (i):\t%d\nAddress of i (&i):\t%p\n", i, &i);
    printf("Address of p (&p):\t%p\nAddress p points to (p):\t%p\nValue of p at the address it points to (*p):\t%d\n", &p, p, *p);

    /*
        Notice how the address of i (&i) and the address p POINTS to (i.e. the value of p without any 
        operators) are the same. The address of p (&p) will be its own separate thing, which we could 
        technically use to assign a value to a pointer such as int **p0 = &p; In fact, let's try this 
        and see what happens.
    */

   int **p0 = &p;

   printf("\nSuppose we also have:\n\n\tint **p0 = &p;\n\n");
   printf("Address of p0 (&p0):\t%p\nAddress p0 points to (p0):\t%p\nValue of p0 at the address it points to (*p0):\t%p\nValue of p0 by going to the address it points to then following that address (**p0):\t%d\n", &p0, p0, *p0, **p0);
}