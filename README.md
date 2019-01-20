# test/unit gem - "ArgumentError: invalid byte sequence in Windows-31J" raised on Japanese Windows

## The error raised condition

* defining test in a "block" (not a method)
* no magic comment on a test script file

|test file name| pattern|error|
|:--|:--|:----:|
|[encoding_error_test.rb](test/encoding_error_test.rb)                              | __no magic comment__ / __test block__ |__raised__|
|[no_encoding_error_test.rb](test/no_encoding_error_test.rb)                        | magic commentted / __test block__ |none|
|[no_encoding_error_test_method_test.rb](test/no_encoding_error_test_method_test.rb)| __no magic comment__ / test method |none|


## Environment

* OS : Windows 10
* ruby : ruby 2.5.3p105 (2018-10-18 revision 65156) [x64-mingw32]
* test-unit (3.2.9)


## How to run tests

Open a command prompt and set the current directory to the folder path of this file.


```
> bundle
> rake
```

## Suggestion

I could get it solved by setting the test script encoding to UTF-8 if it doesn't have the magic comment. 

[default_script_encoding_to_utf-8.diff](default_script_encoding_to_utf-8.diff)
