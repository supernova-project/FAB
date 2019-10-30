#!/usr/bin/python

from setuptools import setup, find_packages

__version__: str
exec(open('fabstrap/version.py').read())

setup(
    name='fabstrap',
    version=__version__,
    description='',
    url='',
    author='p01arst0rm',
    author_email='polar@ever3st.com',
    license='MIT',
    python_requires='y>=3.8.*',
    zip_safe=False,
    packages=[
        'fabstrap',
    ],
    scripts=[
        'bin/fabstrap',
    ]
)