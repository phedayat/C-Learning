from distutils.core import setup, Extension

coord_module = Extension('_coord', 
                        sources=['coord_wrap.c', 'coord.c'])

setup(name= 'coord',
        version= '0.1',
        author='Parsia',
        description='Convert coordinates',
        ext_modules=[coord_module],
        py_modules=['coord'])