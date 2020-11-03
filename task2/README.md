# Simple example of e-shop test automation

---
## How to run
- requires Python 3
- install requirements.txt
```
pip install -r requirements.txt
``` 
- from task2 directory run test by typing
```
robot --variable URL:http://www.alza.cz add_to_cart.robot
```

---
## Test cases
### add_to_cart.robot
A test suite containing a single test case with the following steps:
1. open alza.cz
2. go to "Mobilni telefony" category
3. sort shopping items by price in an ascending order
4. add two most expensive items to cart
5. check that the number of items added to cart corresponds to the number of items displayed on the cart icon

---
## Note
This example test case is by no means intended to represent an exhaustive test of the functionality.
