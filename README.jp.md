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

## 提案

マジックコメントがないテストスクリプトの場合に、デフォルトのエンコーディングとしてUTF-8にすることで解決できそうでした。

[default_script_encoding_to_utf-8.diff](default_script_encoding_to_utf-8.diff)

## 結果

[Issue #161](https://github.com/test-unit/test-unit/issues/161)

test-unit (3.3.0) で、修正していただきました

https://github.com/test-unit/test-unit/blob/master/doc/text/news.md#330---2019-01-23-version-3-3-0
