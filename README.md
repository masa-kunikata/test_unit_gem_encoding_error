# test/unit gem - "ArgumentError: invalid byte sequence in Windows-31J" raised

## The error raised condition

* defining test in a "block" (not a method)
* no magic comment on a test script file

|test file name| pattern|error|
|:--|:--|:----:|
|encoding_error_test.rb| __no magic comment__ / __test block__ |__raised__|
|no_encoding_error_test.rb| magic commentted / __test block__ |none|
|no_encoding_error_test_method_test.rb| __no magic comment__ / test method |none|


## Environment

* OS : Windows 10
* ruby : ruby 2.3.3p222 (2016-11-21 revision 56859) [x64-mingw32]



## How to run tests

Open a command prompt and set the current directory to the folder path of this file.


```
> bundle
> rake
```

## Question

Is it necessary to specify an encoding magic comment, when writing tests in blocks?
