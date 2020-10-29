# This code goes in the file 'test_main.py'
# This is an example of testing the return value from a function in main.py
import main

def test_30_105():
    assert main.gcf(30,105) == 15, 'Incorrect result for gcf(30, 105)'
