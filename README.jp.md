# test/unit gem - "ArgumentError: invalid byte sequence in Windows-31J" エラーが、日本語Windowsで起きる件

## エラーの起きる条件

* テストを”ブロック”に書く（メソッドではなく）
* マジックコメントを書かない

|テストファイル名| パターン|エラー|
|:--|:--|:----:|
|[encoding_error_test.rb](test/encoding_error_test.rb)                              | __マジックコメントなし__ / __ブロックにテスト__ |__起きる__|
|[no_encoding_error_test.rb](test/no_encoding_error_test.rb)                        | マジックコメントあり / __ブロックにテスト__ |なし|
|[no_encoding_error_test_method_test.rb](test/no_encoding_error_test_method_test.rb)| __マジックコメントなし__ / メソッドでテスト |なし|


## 環境

* OS : Windows 10
* ruby : ruby 2.5.3p105 (2018-10-18 revision 65156) [x64-mingw32]
* test-unit (3.2.9)


## サンプルテストの起動方法

コマンドプロンプトで、このファイルのフォルダをカレントにして、下記実行


```
> bundle
> rake
```

## 質問

ブロックにテストを書く場合は、マジックコメントの明示が必要でしょうか？