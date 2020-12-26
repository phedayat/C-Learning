from distutils.core import setup, Extension

conv_module = Extension('_conv', 
                        sources=['conv_wrap.c', 'conv.c'])

setup(name= 'conv',
        version= '0.1',
        author='Parsia',
        description='Example SWIG module',
        ext_modules=[conv_module],
        py_modules=['conv'])