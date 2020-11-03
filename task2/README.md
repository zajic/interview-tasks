# Simple example of e-shop test automation

---
## How to run
- requires Python 3
- install requirements.txt
```
pip install requirements.txt
``` 
- run test
robot add_to_cart.robot

---
## Test cases
#add_to_cart.robot
A test suite with single test case:
- open alza.cz
- go to "Mobilni telefony" category
- sort shopping items by price in an ascending order
- add two most expensive items to cart
- check that the number of items added to cart corresponds to the number of items displayed on the cart icon
