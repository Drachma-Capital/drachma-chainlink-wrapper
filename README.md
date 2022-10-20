# Drachma Capital`s Chainlink Wrapper for Python

## WARNING: This is a private tool used for Drachma Capital's operations, please do not outsource this to any associates outside of Drachma Capital.

### Installation
1.    ``` git clone https://github.com/Drachma-Capital/drachma-chainlink-wrapper.git ``` 
2.    ``` cd ./drachma-chainlink-wrapper ```
3.    ``` pip install . ```


### Usage
Now that we have installed the chainlink-wrapper I will show you how to setup the oracle client

```python 
from chainlink_wrapper import OracleClient 
```
This command will import the OracleClient from package

In order to use the client, setting up the environment takes two arguments like so

```python
client = OracleClient(address, rpc)
```
The address is the address to the PriceFeed contract deployed live on the blockchain, and the rpc argument is the rpc url to connect to the blockchain that has the feed deployed
#### (BOTH ARGUMENTS ARE STRINGS)

We also have pre-deployed variables for some PriceFeeds are constantly adding more for easier use of this tool

#### EXAMPLE CODE SNIPPET TO GET LIVE PRICE IN USD

```python
from chainlink_wrapper import OracleClient
from chainlink_wrapper.rpc import *
from chainlink_wrapper.token_pairs import *

client = OracleClient(moonriver_KSMUSD, moonriver_rpc)

client.price_usd_pair() # prints KSM price in usd value
```

#### NOTE: not all chainlink oracles are paired against usd, if the oracle is paired against ETH you will use the following function to get the price in usd:

```python
client.price_eth_pair_to_usd()
```
and if you want to get the price denominated in eth

```python
client.price_eth_pair()
```

### Deployed OracleFactory Contracts:
| Chain     | Address | 
| :---        |    :----:   |        
| Moonriver     |   [0xFbDd9d2056B645fe80ED4793Ac5bDbCeCa16c565](https://moonriver.moonscan.io/address/0xFbDd9d2056B645fe80ED4793Ac5bDbCeCa16c565#code)     | 







