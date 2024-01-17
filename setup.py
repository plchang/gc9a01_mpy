from setuptools import setup, find_packages

setup(
    name='gc9a01_mpy',
    version='0.1',
    packages=find_packages(),
    package_dir={'gc9a01_mpy'},
    entry_points={ 'console_scripts': ['gc9a01_mpy =__main__:main' ] }
)
