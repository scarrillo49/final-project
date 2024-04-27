# Documentation

## Project Overview

These pages are created to manage financial transactions and dog records. It allows users to search transactions by exact keywords.

## Technical Description

### Models

#### Transactions

- **Attributes**:
  - `date` (Date): The date when the transaction occurred.
  - `amount` (Decimal): The total value of the transaction.
  - `category` (String): The category of the transaction.
- **Validations**:
  - `date`: Presence must be true.
  - `amount`: Numericality, must be greater than 0.
  - `category`: Presence must be true.

#### Dogs

- **Attributes**:
  - `name` (String): The name of the dog.
  - `breed` (String): The breed of the dog.
  - `birth_date` (Date): The dog’s date of birth.
  - `weight` (Decimal): The weight of the dog in pounds.
- **Validations**:
  - `name`: Presence must be true.
  - `breed`: Presence must be true.
  - `birth_date`: Presence must be true, must be a valid date.
  - `weight`: Numericality, must be greater than 0.

## Challenges and Solutions

### Challenge 1

**Problem**: The transactions table didn't appear on the website.

**Solution**: The issue was the missing JavaScript file needed to render the table. Adding the script tag for `transactions.js` in the HTML made the table show up.

### Challenge 2

**Problem**: Incorrect Date Format in Seed Data

**Solution**: Updated the seed data script to ensure all dates are entered in the correct format.

### Challenge 3

**Problem**: The transactions table was not updating after searches.

**Solution**: Modified the update function to completely clear and then correctly update the table data using the .empty() method.
