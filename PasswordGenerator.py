#Vsual Studio Code
#Python 3.9.1

import random

uppercase_letters = "AVBGRE"
lowercase_letters = "ciopwsl"
digits = "8954"
symbols = "/?#$@!"
unique = "*********"

upper, lower, nums, syms, unq = True, True, True, True, True

all = ""

if upper: 
    all += uppercase_letters
if lower:
    all += lowercase_letters
if nums:
    all += digits
if syms: 
    all += symbols
if unq:
    all += unique

length = 25
amount = 5

for x in range (amount):
    password = "".join(random.sample(all, length))
    print(password)
