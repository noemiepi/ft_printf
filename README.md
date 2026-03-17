*This project has been created as part of the 42 curriculum by npillet.*

## Description
The goal of this project is to recreate the printf function from the C library.

## Instructions
To compile the files, use:
```bash
make
```
Then, for the tests, use the main file that will be provided during the evaluations. It reunites every conversions asked for in the subject.
Compile the main with this command:
```bash
cc -Wall -Werror -Wextra printf_main.c libftprintf.a
```
Use this one to execute the code:
```bash
./a.out
```

## Conversions

| Conversion | Description |
| :---: | :--- |
| `%c` | It prints a single character |
| `%s` | It prints a string |
| `%p` | It prints the pointer in hexadecimal format |
| `%d` | It prints a decimal number |
| `%i` | It prints an integer in base 10 |
| `%u` | It prints an unsigned decimal number |
| `%x` | It prints a number in the lower hexadecimal alphabet |
| `%X` | It prints a number in the upper hexadecimal alphabet |
| `%%` | It prints a '%' |
