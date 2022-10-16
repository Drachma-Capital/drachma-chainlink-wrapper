from setuptools import setup

setup(
    name='drachma_chainlink_wrapper',
    version='1.0.1',    
    description='A wrapper to get live price data from chainlink oracles on-chain',
    url='https://github.com/Drachma-Capital/drachma-chainlink-wrapper',
    author='Joshua Finkelstein',
    author_email='joshfinkelstein3@gmail.com',
    license='BSD 2-clause',
    packages=['chainlink_wrapper'],
    install_requires=[
                      'web3',                     
                      ],

    classifiers=[
        'Development Status :: 1 - Planning',
        'Intended Audience :: Science/Research',
        'License :: OSI Approved :: BSD License',  
        'Operating System :: POSIX :: Linux',        
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
    ],
)