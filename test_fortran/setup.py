from numpy.distutils.core import setup, Extension

setup(
    name='testf',
    install_requires=['numpy'],
    ext_modules=[Extension(name='testf', sources=['test.f'])]
#    packages=['telewavesim', 'telewavesim.tests'],
     )
