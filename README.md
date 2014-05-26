roman-numerals
==============

Epicodus Week 3 Day 3 Project

Summary
-------
This is a command line Ruby program that will convert a number entered into its Roman Numeral equivalent.
Roman numerals are based on seven symbols:

Symbol  Value
I       1
V       5
X       10
L       50
C       100
D       500
M       1,000

Rules and Exceptions
--------------------
The most basic rule is that you add the value of all the symbols: so II is 2, LXVI is 66, etc.

The exception is that you can't have more than three of the same character is a row: instead, you switch to subtraction. 
So instead of writing IIII for 4, you write IV (for 5 minus 1); and instead of writing LXXXX for 90, you write XC.

You also have to separate ones, tens, hundreds, and thousands. In other words, 99 is XCIX, not IC.
