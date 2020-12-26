#include <iostream>
#include <cmath>

using namespace std;

struct Point
{
    double x;
    double y;
    double z;
    char cSys;
};


void r2s(Point *p);

int main(){
    Point *test;
    test->x = 1;
    test->y = 0;
    test->z = 0;
    test->cSys = 'C';

    r2s(test);
    return 0;
}

void r2s(Point *p){
    if(p->x == 0 && p->y == 0 && p->z == 0){
        fprintf(stderr, "Error: Cannot use the zero vector\n");
        return ;
    }

    // Point pSph;

    double rho = sqrt(powl(p->x, 2) + powl(p->y, 2) + powl(p->z, 2));
    double theta = atan(p->y / p->x);
    double phi = acos(p->z / rho);
    char coords = 'S';

    cout << "Rho: " << rho <<
        "\nTheta: " << theta <<
        "\nPhi: " << phi <<
        "\nCoordinate System: " << coords;

    // pSph.x = sqrt(pow(p->x, 2) + pow(p->y, 2) + pow(p->z, 2));
    // pSph.y = atan(p->y / p->x);
    // pSph.z = acos(p->z / pSph.x);
    // pSph.cSys = 'S';

    // return pSph;
}