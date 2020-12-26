#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "coord.h"

int main(){
    struct Point *x1 = (struct Point *) malloc(sizeof(struct Point));
    x1->x = 1;
    x1->y = 0;
    x1->z = 0;
    x1->cSys = 'C';

    r2s(x1);
    return 0;
}

void r2s(struct Point *p){
    if(p->x == 0 && p->y == 0 && p->z == 0){
        fprintf(stderr, "Cannot input zero vector");
        return ;
    }

    double rho = sqrt(pow(p->x, 2) + pow(p->y, 2) + pow(p->z, 2));
    double theta = atan(p->y / p->x);
    double phi = acos(p->z / rho);
    char coordSys = 'S';

    printf("Rho: %f\nTheta: %f\nPhi: %f\nCoordinate System: %c\n", rho, theta, phi, coordSys);
}

