import conv as cnv
import math

print("* From conv.c:\n")
print(cnv.hello())

p1 = cnv.Point()
p1.x = 2
p1.y = 3
p1.z = math.pi / 2
p1.cSys = 'R'

print("\n* From tester.py using C structures:\n")
print(f"Coordinate System: {p1.cSys}")
print(f"x-coord: {p1.x}")
print(f"y-coord: {p1.y}")
print(f"z-coord: {p1.z}\n")

