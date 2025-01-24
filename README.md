## Point of Sale 
This application calculates sales tax, import duties, and total price for items in a shopping basket. It parses an input file(`input.txt`), processes the data, and outputs the results, including the sales tax and total price after tax.

### Requirements
- `Ruby 3.3.0`

I didn't check if there will be any issues with the earlier versions but should be fine.

### Running instructions
Update the file `input.txt` with in the input and run in the terminal:

`ruby main.rb`

***Important: Input file only takes one input at a time***


#### To run the spec

```
bundle install
rspec
```

### Assumptions
- There is no input validation, assuming the input file contains a valid input
- For sales tax calculator, I assume that only following keywords are untaxable `['book', 'books', 'chocolate', 'chocolates', 'pill', 'pills']`
- And for imported item, I am just checking the `imported` keyword
