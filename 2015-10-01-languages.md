# Title: Languages

Date: 2015-10-01 11:08
Tags: []
Categories: []

---

## Prelude

* Bash     : Refs: <2014-09-09-linux.md>
* Java     : Refs: <2014-12-10-java.md>
* Markdown : Refs: <2015-01-27-markdown.md>
* Ruby     : Refs: <2015-08-16-ruby.md>
* UML      : Refs: <2015-01-27-uml.md>

## Languages

### Perl

* LTSV parser
        cat accesslog | perl -F'\t' -nale '%h=map{split/:/,$_,2}@F;print"$h{time}\t$h{ua}"'
    Refs: [LTSVログをパースする最強のワンライナー集&middot;DQNEO起業日記](http://dqn.sakusakutto.jp/2014/02/ltsv_parser_oneliner.html)

* 最短一致にする場合には数量子の後ろに ? を付けます。
        s/a+?/1/;

* 置換
    * 複数行置換
            perl -0pe 's/aaa\nbbb/ccc/m' foo.txt
    * 置換後保存
            perl -pi -e 's/aaa/ccc/g' foo.txt
* ドキュメントを読む
        perldoc hoge
        perldoc perldoc
        perldoc perlintro

### Python

* pip update
        sudo pip install pycrypto

### Node.js

* npm install
        sudo npm install -g eslint
* npm自身をupdate
        sudo npm update -g npm
* すべてのGlobalパッケージをアップデート
        npm update -g

