# これは何か？
AtCoder の問題を Haskell で解くためのテンプレートである。

# 使い方
## Haddock の使い方
Haddock はソースコードのコメント文をもとに Haskell 用のドキュメントを生成するツールである。ここでは、例として `Main.hs` に対してドキュメントを生成する方法について述べる。

`Main.hs` に対するドキュメントを以下のコマンドで生成できる。なお、`-h` は HTML 形式でドキュメントを生成するオプションである。`-o` はドキュメントの格納先となるディレクトリを指定するオプションである。例では `doc` ディレクトリを指定している。
```console
$ haddock -h Main.hs -o doc
```
今回生成したドキュメントは HTML 形式であり、そのドキュメントの最上位ページは `doc/index.html` である。次のコマンドを実行することで `doc/index.html` の内容を確認できる。
```console
$ open doc/index.html
```
これらのコマンドをまとめて実行したい場合は次のように書けばよい。
```console
$ haddock -h Main.hs -o doc && open doc/index.html
```
さらに、ドキュメントの最上位ページではなく、`Main` モジュールの内容を確認できるページを、ドキュメント生成後に開きたい場合は次のように書けばよい。
```console
$ haddock -h Main.hs -o doc && open doc/Main.html
```
