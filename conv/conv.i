%module conv

%{
#define SWIG_FILE_WITH_INIT
#include <stdio.h>
#include "conv.h"
%}

extern int hello();
extern struct Point{
    double x, y, z;
    char cSys;
};
