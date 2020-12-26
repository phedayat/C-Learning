#include <stdio.h>
#include <stdlib.h>
#include "conv.h"

int hello(){
    struct Point *x = (struct Point *) malloc(sizeof(struct Point));
    x->x = 1;
    x->y = 2;
    x->z = 3;
    x->cSys = 'C';

    printf("x-coord: %f\n", x->x);
    printf("y-coord: %f\n", x->y);
    printf("z-coord: %f\n", x->z);
    printf("Coordinate System: %c\n", x->cSys);
    printf("Hello World!\n");
    return 23;
}