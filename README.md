##Bank tech test

This program aims to allow a user to interact with a bank account via REPL.
It is built in Ruby, designed to be run in IRB, has 100% test coverage with Simple Cov, and is linted with Rubocop.

###Specification

####Requirements

```
As a customer,
So I can store my hard earned cash,
I'd like the ability to deposit money into my account
```

```
As a customer,
So I can enjoy my life,
I'd like the ability to withdraw money from my account
```
```
As a customer,
To keep an eye on my finances,
I'd like to see a statment of all my recent transactions
```

###Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

#### Approach

I split this program into three classes, an Account Class which the user interacts with to make transactions and to display the statment of transactions, a Transaction class to deal with the logic of withdrawing/depositing into their account, and a Statement class to format the statment form above.

#### How to run

clone this repo, run bundle install, then open irb
