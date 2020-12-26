import coord
import math

p = coord.Point()
p.x = 1
p.y = 0
p.z = 0
p.cSys = 'C'

for i in range(10):
    print(f"\nPoint {i}:\n")
    p.z = p.z + math.pi/6
    coord.r2s(p)