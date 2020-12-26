%module coord

%{
#define SWIG_FILE_WITH_INIT
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "coord.h"
%}

/*
    TODO: Look at section 32.3 of the SWIG doc ("A tour of basic C/C++ wrapping")
*/

extern struct Point{
    double x, y, z;
    char cSys;
};
void r2s(struct Point *p);