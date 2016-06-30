# ICPC2017 国内予選 自動ジャッジ

ICPC2017のジャッジをサボりたい人のためのプログラム

[rime-plus](https://github.com/icpc-jag/rime-plus)と
[testlib](https://github.com/MikeMirzayanov/testlib)を使っています．
シンボリックリンクを使用している関係で，windowsでは動かない．

## 使い方

チェックしたいコードを，`A.cpp`, `B.cpp`, ..., `H.cpp`とし，
適当なディレクトリに突っ込む．
.gitがあるディレクトリで，
```
$ sh init.sh <コードがあるディレクトリ>
```
を叩く．

`rime test`でテストが動く．

Gの解答チェックが正しくかけているかは不明．
