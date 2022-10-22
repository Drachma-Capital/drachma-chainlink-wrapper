# Drachma Capital`s Chainlink Wrapper for Python
## built by: jshuaaaa

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

### Current deployed token pairs
```python
moonriver_MOVRUSD = "0x9486E807Ca846fee51485c004f59C355D0f199B2"
moonriver_DOTUSD = "0x03B64921dA75416c470dea4fC43B76B065d4bf24"
moonriver_KSMUSD = "0x4d4C7472dDD2012587f566B13C3F7f036513B7ef"
```








