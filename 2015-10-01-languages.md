# Title: Languages

Date: 2015-10-01 11:08
Tags: []
Categories: []

---

## Prelude

* Bash     : ref. <2014-09-09-linux.md>
* Java     : ref. <2014-12-10-java.md>
* Markdown : ref. <2015-01-27-markdown.md>
* Ruby     : ref. <2015-08-16-ruby.md>
* UML      : ref. <2015-01-27-uml.md>

## Languages

### Perl

* LTSV parser
		cat accesslog | perl -F'\t' -nale '%h=map{split/:/,$_,2}@F;print"$h{time}\t$h{ua}"'
	ref. [LTSVログをパースする最強のワンライナー集&middot;DQNEO起業日記](http://dqn.sakusakutto.jp/2014/02/ltsv_parser_oneliner.html)

* 最短一致にする場合には数量子の後ろに ? を付けます。
		s/a+?/1/;

### Python

* pip update
		sudo pip install pycrypto

### Node.js

* npm install
		sudo npm install -g eslint
* npm自身をupdate
		sudo npm update -g npm

