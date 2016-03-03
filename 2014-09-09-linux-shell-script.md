# Title: Linux / Shell script

Date: 2014-09-09 13:34
Tags: []
Categories: []

<!-- toc -->

---

## Bash

### Grammar - 文法

- Shebang - シバン(グ)

        #!/bin/sh
        #!/bin/bash

#### Array - 配列

- 宣言

        fooArray=()
        fooArray=("hoge" "fuga")

- データ追加

        fooArray+=("piyo")
        fooArray+=("hogera")

#### test command

- ファイルが存在するか

        if [ -e fooFile ] ; then ...

### Idiom, Notes

- 標準[エラー]出力
    - 標準エラー出力をリダイレクト

            command 2> /dev/null

    Refs: [UNIXの部屋 コマンド検索:リダイレクト (*BSD/Linux)](http://x68000.q-e-d.net/~68user/unix/pickup?%A5%EA%A5%C0%A5%A4%A5%EC%A5%AF%A5%C8)

    - 標準出力とエラー出力両方をリダイレクト :

            command > /dev/null 2>&1

    - 標準出力とエラー出力両方を別コマンドに渡す :

            command 2>&1 | less

    - 標準エラー出力のみを別コマンドに渡す :

            command 2>&1 1>/dev/null | less

    - 標準出力と標準エラー出力を別ファイルにリダイレクト :

            command 1> file1 2> file2

    - echoの出力を標準エラーに出力 :

            echo "msg" >&2

- for文ワンライナー :

        for name in $(ls) ; do echo ${name} done
        for i in `seq 1 10` ; do echo $i; done

- for文 - 一般的な記法 :

        for (( i=0; i<10; i++ ))

- while文ワンライナー(無限ループとか) :

        while true ; do ls ; sleep 2; done

- 元いたディレクトリに戻る :

        cd -

- エイリアスを一時的に無効にする  
    コマンドの先頭にバックスラッシュをつける

        \cd

- ビルトインコマンドリスト表示

        help

- bashのプロセス置換機能 - [bashのプロセス置換機能を活用して、シェル作業やスクリプト書きを効率化する - 双六工場日誌](http://sechiro.hatenablog.com/entry/2013/08/15/bash%E3%81%AE%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9%E7%BD%AE%E6%8F%9B%E6%A9%9F%E8%83%BD%E3%82%92%E6%B4%BB%E7%94%A8%E3%81%97%E3%81%A6%E3%80%81%E3%82%B7%E3%82%A7%E3%83%AB%E4%BD%9C%E6%A5%AD%E3%82%84%E3%82%B9)
    - 出力対象としてプロセス置換を使う
        - スクリプト出力のすべてをログに取る

                exec 1> >(tee -a stdout.log)

    - 入力対象としてプロセス置換を使う
        - コマンド結果をdiff [一時ファイルを作成せずに、コマンドの実行結果のdiffを取る (bashのProcess Substitutionで) - うまいぼうぶろぐ](http://hogem.hatenablog.com/entry/20090530/1243612485)

                diff <(grep -v "exclude" inputfile) <(sed -e 's/a/b/' inputfile)

- 連番作成

        for i in {1..10} ; do echo $i ; done

- &&と|| - コマンドの実行結果によって別コマンドを実行する。Refs: [bashの&&と: みズとおかズ](http://okazu.air-nifty.com/blog/2010/04/bash-f628.html)
    - コマンド成功したら別コマンドを実行

            make && make install

    - コマンド失敗したら別コマンドを実行

            [ -f /usr/sbin/sendmail ] || exit 0

- 三項演算子(条件演算子)

        [ -f $file ]  && success $file || failure $file

    Refs: [シェルスクリプトで三項演算子ぽいやつ - harry’s memorandum](http://dharry.hatenablog.com/entry/2014/05/20/023644)
    - -> shellcheckで警告出る。厳密にはダメみたい。Refs: [SC2015 · koalaman/shellcheck Wiki · GitHub](https://github.com/koalaman/shellcheck/wiki/SC2015)

### 特殊変数

- reference : [bash - 特殊変数 - あんみのの備忘録](http://d.hatena.ne.jp/anmino/20090802/1249206149)
- list :

        $0    スクリプトの名前
        $1-9  スクリプトに指定された引数の値(数値は引数の位置)
        $#    スクリプトに指定された引数の数
        $*    スクリプトに指定された引数全部 "$*"の場合は "$1 $2..."
        $@    スクリプトに指定された引数全部 "$@"の場合は "$1" "$2" ...
        $?    直前のコマンドの終了ステータス
        $$    カレントシェルのプロセスID
        $!    直前のバックグランドジョブのプロセスID
        $-    カレントシェルの動作オプション

### パラメータ展開

| 記述                   | 機能                   |
|------------------------|------------------------|
| `${parameter:-word}`   | デフォルト値への置換   |
| `${parameter:=word}`   | デフォルト値の代入     |
| `${parameter:?[word]}` | 値の検査とエラー       |
| `${parameter:+word}`   | 代替値の使用           |
| `${#parameter}`        | 文字列長の取得         |
| `${parameter%word}`    | 最短後置パターンの削除 |
| `${parameter%%word}`   | 最長後置パターンの削除 |
| `${parameter#word}`    | 最短前置パターンの削除 |
| `${parameter##word}`   | 最長前置パターンの削除 |

Refs: [shell - シェルの変数展開 - Qiita](http://qiita.com/bsdhack/items/597eb7daee4a8b3276ba)

パラメータ展開をネストすることはできない

Refs: [Can ${var} parameter expansion expressions be nested in bash? - Stack Overflow](http://stackoverflow.com/questions/917260/can-var-parameter-expansion-expressions-be-nested-in-bash)

### ヒアドキュメント

- 基本文法

        cat << EOS
        hoge
        fuga
        piyo
        EOS

- ヒアドキュメント結果をリダイレクト

        cat << EOS >> /tmp/hoge 2>&1
        hoge
        piyo
        EOS

- 簡易ヒアドキュメント？(ぐぐっても出てこない。`tldr bc`でみつけた)

        cat <<< abc
        bc <<< "1 + 2"

### Tips / Notes

- ステップ実行

        trap 'read -p "$BASH_COMMAND"' DEBUG

    Refs: [shellのデバッグ方法(1279) teratail](https://teratail.com/questions/1279)

### Style Guide - スタイルガイド(コーディング基準)

Refs: [Shell Style Guide](https://google.github.io/styleguide/shell.xml)

Rules

- Naming Conventions - 命名規則
    - Source Filenames - ファイル名: Lowercase

### Refs.

- [コマンドラインプログラムにおける引数、オプションなどの標準仕様 プログラマーズ雑記帳](http://yohshiy.blog.fc2.com/blog-entry-260.html)

## Regex - Regular Expression

### Kind - 種類

- BRE (基本正規表現) メタ文字セット
- ERE (拡張正規表現) メタ文字セット
    - サブセット
        - AWKのサブセット
    - スーパーセット
        - GNU拡張正規表現メタ文字セット
        - Perl拡張正規表現メタ文字セット

### META Character set - 各コマンドの対応しているメタ文字セット

| コマンド       | 対応しているメタ文字セット |
|----------------|----------------------------|
| AWK            | EREのAWKサブセット         |
| ed             | BREメタ文字セット          |
| egrep          | EREメタ文字セット          |
| ex             | BREメタ文字セット          |
| grep('-E'なし) | BREメタ文字セット          |
| grep('-E'あり) | EREメタ文字セット          |
| more           | BREメタ文字セット          |
| sed            | BREメタ文字セット          |
| vi             | BREメタ文字セット          |

Important:

> 参考までに述べておくと、GNU拡張やPerl拡張、JavaScript拡張は、いずれもEREのスーパーセットである。ということはすなわち、EREメタ文字セットを覚えておけばそれらの上でも動くということだ。
> Refs: [どのUNIXコマンドでも使える正規表現 - Qiita](http://qiita.com/richmikan@github/items/b6fb641e5b2b9af3522e)

### Perl拡張正規表現

- 改行を含む検索

        grep -P 'bbb[\s\S]*?ddd' test.txt

    - 改行を含む検索でマッチした部分のみ表示

            grep -oP 'bbb[\s\S]*?ddd' test.txt

- 肯定否定先読み戻り読み Refs: [正規表現(肯定先読み、否定先読み、肯定戻り読み、否定戻り読み) - satosystemsの日記](http://d.hatena.ne.jp/satosystems/20100519/1274237784)
    - 肯定先読み - (?=regex)

            # "Windows 2000" の "Windows" には一致するが、"Windows 3.1" の "Windows" には一致しない。
            Windows (?=95|98|NT|2000)
            # static ネストクラスを保持するJUnitテストクラスを検索
            grep -lroP "public class .+Test[\s\S]*?(?=static class)" . --include="*Test.java"
            grep -lroP "public\s(final\s)?class\s.+Test[\s\S]*?(?=static\s(final\s)?class)" . --include="*Test. java" | v -

    - 否定先読み - (?!regex)

            "Windows (?!95|98|NT|2000)" は、"Windows 3.1" の "Windows" には一致するが、"Windows 2000" の "Windows" には一致しない。

    - 肯定戻り読み - `(?<=regex)`

            "(?<=Ubuntu|Debian GNU) Linux" は、"Ubuntu Linux" の "Linux" には一致するが、"Vine Linux" の "Linux" には一致しない。

    - 否定戻り読み - `(?<!regex)`

            "(?<!Ubuntu|Debian GNU) Linux" は、"Vine Linux" の "Linux" には一致するが、"Ubuntu Linux" の "Linux" には一致しない。


## Commands

### Grep

    grep PATTERN target_directory

- 再帰的にgrep :

        grep -r PATTERN target_directory

- 複数条件指定

        grep -e pattern1 -e pattern2
        grep -e pattern1 | grep pattern2

- マッチ箇所の行番号を表示

        grep -n foo bar

- file名のみを表示 :

        grep -l

- マッチ部分のみを表示 :

        grep -o

- バイナリを除外 :

        grep -I

- Perl Regexオプション使う(Note: もう正規表現はこれ限定にしてもよいかも)

        grep -P pattern target

- 特定のファイル名を除外

        grep --exclude="*.swp" pattern target

- 特定のディレクトリ名配下のファイルを除外

        grep --exclude-dir=".git" pattern target

- ディレクトリの扱いを指定する
    - スキップする

            grep hoge * -d skip

    - 再帰的にたどる

            grep hoge * -d recurese
            grep hoge * -r

- 隠しファイルを対象にする

        grep hoge .*

    - 隠しファイルも含めて全ファイルを対象

            grep hoge .* *

### Sed

- 標準出力せず直接ファイルを置換する(GNU sed限定)

        sed -i "s/うっおとしい/うっとおしい/g" kujo.csv

- 後方参照を使う

        sed -e 's/h\(og\)e/\1/g'
        sed -e 's/hoge/\0_bk/g'
        cat config.xml  | sed -e 's?/threads>?\0\n\t\t<limit>10</limit>?g'

    - Refs: [sed テキストの置換,正規表現のメタ文字や後方参照の方法など](http://bi.biopapyrus.net/linux/sed.html)
- 改行を含めて置換する

        sed -e 's/hoge/hoge\nhage/g'

- 末尾一文字を削除する

        echo hogehoge | sed -e 's/.$//'

- 指定した行番号の行のみ置換

        sed -e '3s/date/Date/g'

- ある文字を含む行を削除する

        cat input.file | sed '/abc/d'

- 最後の行だけ削除する

        cat input.file | sed -e '$d'

- html, xmlタグ削除

        sed -e 's/<[^>]*>//g'

- 改行のみの行を削除

        sed '/^$/d'

- スペースのみの行を削除

        sed '/^  *$/d'

- 改行のみの行およびスペースのみの行を削除

        sed '/^ *$/d'

#### Address - アドレス

- 範囲指定

        # L1 ~ L5
        sed -e '1,5p'

- 最後の行

        sed -e '$p'

- オフセット指定

        # L10 ~ L15
        sed -e '10,+5p'

### (De)Compression commands

- 7z - 7-zip操作

        7z x filename.7z

- zip/unzip - zip圧縮・解凍 :
    - 圧縮

            zip -r foo.zip bar

    - 解凍

            unzip archive.zip
            unzip -d 解凍先 archive.zip

        - 内容確認

            unzip -l file

        - 特定のファイルのみ解凍

            unzip file.zip [files ...]
            unzip file.zip */*.log

- pigz - マルチコアで圧縮
    - 圧縮

            pigz hoge

    - 解凍

            pigz -d hoge

- tar.gz (tar + gzip) :
    - 解凍 :

            tar zxvf filename

    - 圧縮 :

            tar zcvf archive.tar.gz filename

    - 中身確認

            tar tvfz foo.tar.gz

- tar.bz2 (tar + bzip2) :
    - 解凍 :

            tar jxf filename

    - 圧縮 :

            tar jcf package.tar.bz2 package-dir

    - 中身確認

            tar tvfj foo.tar.bz2

- tar.xz (tar + xz) :
    - 解凍(Note: Required tar 1.22)

            tar Jxvf foo.tar.xz

- tar
    - 展開

            tar xvf foo.tar

    - 中身確認

            tar tvf foo.tar

#### 圧縮率、速度比較

結論からいうととりあえずbzip2がオールマイティに良い。

以下を比較

- gzip
- bzip2
- xz
- zip
- 7zip
- lzh

対象は以下

- text
- binary

Refs: [DigiLoog » Linuxの各圧縮コマンド実行速度と圧縮率を測定してみた gzip/bzip2/xz/zip/7zip/lzh](http://www.ns-lab.org/digiloog/2014/06/article_2384/)

### Built-in commands

- read - ユーザ入力を受け取る

        read
        read hoge

### Performance

- TODO
    - free
    - sar
    - top
    - vmstat

- sar - システム情報取得(ファイルから) :

        sar -f /var/log/sa/sa18

- top - システムの負荷
    - コマンド名だけでなくコマンドライン全体を表示

            top -c

### Network

- TODO
    - dig
    - ifconfig
    - netstat
    - ping
    - route
    - traceroute

- netstat - リッスンしているポートの確認 :

        netstat -tanp | grep LISTEN

### Useful commands

- chown - 再帰的に所有者変更 :

        chown user:group dir -R

- cut - 文字列を切り出す :
    - 先頭から3文字カット

            cut -c 3 hoge.txt

    - 末尾文字をカット

            echo hoge | head -c-3

- du - ディレクトリサイズ表示 :

        du -h --max-depth=1

    - 一階層のみ :

            -s

- `find` - 検索:

        find パス -name "name"

    - 除く
        - `-prune`

            find -name "hoge" -prune
            find -name "exclude" -prune -o -name "include"

        - `-not`

            find -name "include" -not -path "*exclude*"

    - ファイルの最終更新日が3日より前のファイルを検索する

            find . -mtime +3

    - ファイルの最終更新日時が3分より前のファイルを検索する

            find . -mmin +3

    - パスのマッチする対象を検索

            find -path "./sr*sc"
            find -path "*/foo/*/bar.log"

    - ディレクトリのみ対象

            find -type d

    - ファイルのみ対象

            find -type f

    - 階層を指定

            find -maxdepth 2

- gpasswd - グループ操作
    - ユーザを追加

            gpasswd -a guest7 testgrp

    - ユーザを削除

            gpasswd -d guest7 testgrp

- groups - ユーザの所属グループを表示

            groups {user_name}

- less, tail - ファイル内容を監視

        less +F file
        tail -f file

    \* less の場合、監視中にCtrl + c でファイル全体を参照できる。そこからF入力で監視再開できる。便利。

    - tailで複数ファイルを監視できる

        tail -f foo bar

- ln - (シンボリック)リンクを貼る
        - シンボリックリンク

                ln -s source [dest]

- ls - ファイルリスト表示
    - タイムスタンプ順にソート :

            ls -t

    - 逆順 :

            ls -r

    - ディレクトリに対して/を加えて表示する

            ls -p

- lsof - プロセスが使用しているファイルを調べる Refs: [lsofの使い方 - プロセスが使用中のファイルを調べる - うまいぼうぶろぐ](http://hogem.hatenablog.com/entry/20070223/1172221315)
    - プロセスID指定

            lsof -p 12345
            # バッククォート使うとこんな感じ
            lsof -p `pgrep -n java`

- man - マニュアル閲覧
    - 関連キーワードを検索

            man -k hoge

- nkf - 文字コード変換 Refs: [文字コード変換コマンドの nkfの使い方と実例をまとめました。 - それマグで！](http://takuya-1st.hatenablog.jp/entry/20100511/1273585953)
    - 文字コード確認

            nkf -g filename
            nkf -g *.txt

    - UTF8に変換

            nkf -w filename

    - SJISに変換

            nkf -s filename

    - UTF8に変換し上書き

            nkf -w --overwrite *.java *.java

    - BOM追加

            nkf --overwrite --oc=UTF-8-BOM filename

    - BOM削除

            nkf --overwrite --oc=UTF-8 filename

    - 特定ファイルを一括変換

            nkf -w --overwrite *.java
            nkf -w --overwrite `find -name "*.java"`

    - caution
        - msysgitのだとnkf32.exe,nkfwin32.exeが入ってて後者はうまく動かなかった
- nohup - ログアウトしてもバックグラウンドジョブを継続する

        nohup ./hoge.sh &

- paste - 各ファイルの行を結合する
    - 一度にひとつのファイルを貼り付ける(行列入れ替えとかに使える)

            paste -s foo.txt bar.txt

    - 区切り文字を指定する

            paste -d , foo.txt bar.txt

- pgrep - プロセスをgrep

        pgrep -f fooProc

    - プロセス名も表示

            pgrep -fl fooProc

    - 最近のバージョンでは以下の通り(pgrep from procps-ng)
        - プロセス名表示

                pgrep -fl fooProc

        - プロセス名、コマンド全体表示

                pgrep -fa fooProc

- pkill - プロセスをkill

        pkill -f fooProc

    - シグナル指定

            pkill -9 -f fooProc

- rsync - ファイル・ディレクトリを同期する

            rsync -ra hogeFile fooHost:/fugaDir/

    - 特定ディレクトリを除外

            rsync -ra --exclude 'hoge' fugaFile fooHost:/piyoDir/

- sort - ソートする
    - 数値としてソート

            sort -n

    - カラムを指定してソート

            sort -k 2 #2カラム目以降のキーでソート
            sort -k 2,2 #2カラム目のみでソート

        - 複数カラムを指定

                sort -k 2,2 -k 4,4

    - 区切り文字を指定

        sort -t " " -k 2

- ulimit - コマンドに割り当てる資源を制限する :
    - すべての値を表示する

            ulimit -a

    - ファイル・ディスクリプタの数を最大N個に制限する

            ulimit -n 1024

    - ユーザー1人が起動できるプロセス数を最大N個に制限する(スレッド数も!)

            ulimit -u 1024

    - 永続的に変更する

            /etc/security/limits.conf

        - ファイルディスクリプタ

                @group soft nofile 4096
                @group hard nofile 4096

        - プロセス数

                @group soft nproc 4096
                @group hard nproc 4096

- usermod - ユーザ情報変更
    - グループに追加

            usermod -g group user

- xargs - 引数を標準入力から与える :

        find パス -name "name" | xargs rm

### Seldom used commands

- bc - 複雑な計算する(電卓として使う) :

        bc
        echo 1 + 2 | bc
        bc <<< "1 + 2"

- cal - カレンダを表示する :

        cal [options...]

- install - ファイルをコピーし、その属性を設定する :

        install [options] [-s] [--strip] source dest

    Refs: [Man page of INSTALL](http://linuxjm.sourceforge.jp/html/gnumaniak/man1/install.1.html)

    - ディレクトリを作成

        install -d {directory}

    - 所有者、グループを設定

        install {source} {dest} -g {group} -o {user}

    - 権限を設定

        install {source} {dest} -m {permission(e.g. 600)}

- nl - 行番号を付けてファイルを出力する :

        nl [options...]

- rename - ファイル名の一括変更(リネーム・一括置換) :

        rename from to file...

- tee - 標準出力に加えファイルにも出力する

        ls | tee foo.log

    - ファイルに追記

            ls | tee -a foo.log

    - 標準エラー出力も対象

            ls 2>&1 | tee foo.log

- time - コマンドの時間計測やリソース使用量を表示する :

        time [options] command [arguments ...]

- tr - 文字の置換・変換をする

        cat ./src.txt | tr '>' '\n' > ./dst.txt

- w - ログインしている人とその人がやっていることを表示する :

        w

- yes - kill されるまで文字列を繰り返して出力する :

        yes [string...]

### Complex commands

- 複数jarの中から特定クラスを探す :

        unzip -l '*.zip' | grep foo.class

- 複数ファイルから文字列を一括置換

        find ./path/to/file -type f | xargs sed -i "s/hoge/hage/g"
        find -name "config.xml" | xargs sed -i -e 's?<dispatch>?\0\n\t\t<limit>10</limit>?g'

- grep結果件数を表示

        grep foo bar | wc -l

- grep結果を一括置換

        grep -l 'hoge' ./foo* | xargs sed -i -e 's/hoge/hage/g'

    Refs: [複数のファイル内の文字列をまとめて置換するLinuxコマンド - Qiita](http://qiita.com/kkyouhei/items/b4ff839a2f36ba194df3)

- grep結果表示を置換

        grep 'hoge' ./foo* | sed -e 's/hoge/hage/g'

    Refs: [シェル・スクリプト・リファレンス - 【 文字列を置換する「sed」 】：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060228/231161/)

- grep結果の大文字小文字を変換

        egrep "# [a-z]" *.md | sed -e 's/\(#\+ \)\(.\)/\1\U\2/'
        egrep -l "# [a-z]" *.md | xargs sed -i -e 's/\(#\+ \)\(.\)/\1\U\2/'

- mv した先に cd (前のコマンドの引数を指定)

        mv foo.file barDir/
        cd $_
        # ↓も
        cd !$

- lsでディレクトリのみ表示

        find . -maxdepth 1 -type d
        ls -l | grep ^d
        ls -F | grep .*/$

- find結果などのファイル名のみ取得する

        find . -name '*.deb' | xargs -n1 basename

- find結果などのディレクトリ名のみ取得する

        find . -name '*.deb' | xargs -n1 dirname

- 複数ファイルの拡張子を一括変更(renameコマンド使わない場合)

        for filename in *.dmp; do mv $fliename ${filename%.dmp}.sql; done

- プロセスの起動時間を確認する

        ps -eo lstart,pid,args | grep hoge

- スクリプトファイルの場所を取得する
        - 実行されたシェルの場所(sourceコマンドなどで呼ばれた場合、呼び元が取得される)

                script_dir=$(cd "$(dirname "$0")"; pwd)

        - 常に実行シェルの場所(sourceコマンドなどで呼ばれた場合、呼び先が取得される)

                here="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"

- 4ファイル以上間のdiffを取る(3ファイルはdiff3コマンドが使えそう) TODO: もっといいやり方ないか

        for i in `find -name operation.sh` ; do echo $i; diff $(find -name operation.sh | head -1) $i ; done

- プロセスが存在しているかどうかで処理を分ける

        if kill -0 $PID; then
            echo "exists"
        else
            echo "not exists"
        fi

- カレントディレクトリ内のディレクトリをすべてzipする(\* Caution: これだけだとディレクトリ以外も対象となる)

        for t in `ls`; do zip -r ${t}{. zip,} ; done
        # サブディレクトリをすべて
        for t in `ls`; do (cd ${t}; for tt in `ls` ; do zip -r ${tt}{. zip,} ; done) ; done

## Key-shortcuts

Refs: [shell のショートカットキー適当にまとめてみた。 Lonely Mobiler](http://loumo.jp/wp/archive/20120305090532/)

- 行頭へ移動:

        ctrl+a

- 行末へ移動:

        ctrl+e

- 一文字後に移動:

        ctrl+f

- 一文字前に移動:

        ctrl+b

- 一単語後に移動:

        Alt(Meta)+f

- 一単語前に移動:

        Alt(Meta)+b

- ヒストリー(戻る) :

        ctrl+p

- ヒストリー(進む) :

        ctrl+n

- 一文字削除(Backspace) :

        ctrl+h

- 一文字削除(Delete) :

        ctrl+d

- 一単語削除(Backspace)(パス区切り文字を単語扱いする) :

        alt+backspace (alt+ctrl+h)

- 一単語削除(Backspace)(パス区切り文字は単語扱いしない) :

        ctrl+w

- 一単語削除(Delete) :

        Alt(Meta) + d

- 行頭まで削除:

        ctrl+u

- 行末まで削除:

        ctrl+k

- 貼り付け

        ctrl+y

- クリア:

        ctrl+l

- Enter:

        ctrl+j
        ctrl+m
        ctrl+o -> これは使わない。 vim で history back 。

- Tab(補完):

        ctrl+i

## Tips

- ssh鍵認証を設定する <http://www.tooyama.org/ssh-key.html>
    - client

            cd ~/.ssh
            ssh-keygen -t ecdsa
            Enter passphrase: <Enter>
            ls ~/.ssh
            -> id_ecdsa:秘密鍵, id_ecdsa.pub:公開鍵

    - server

            mkdir .ssh
            chmod 700 .ssh
            cd ~/.ssh
            ssh client "cat ~/.ssh/id_ecdsa.pub" >> authorized_keys
            chmod 600 authorized_keys

- lessで色付き表示をする

        ls --color="always" | less -R

- 複数ファイルの改行コードを置換する
    - LF -> CRLF

            nkf --windows --overwrite *.txt
            nkf --window  --overwrite `find -name "*.log"`
            unix2dos *.txt

    - CRLF -> LF

            nkf --unix --overwrite *.txt
            nkf --unix --overwrite `find -name "*.log"`
            dos2unix *.txt

- sshログインして指定のディレクトリに移動

        ssh -t user@host "cd hoge; bash"

- 先頭に-（ハイフン）があるファイルを操作する

        mv -- -c foo
        mv ./-c foo

- 複数行の置換はPerl使うのがいちばん楽そう Refs: <2015-10-01-languages.md>

- ミリ秒単位で時刻を表示する Refs: [dateコマンドでミリ秒まで出す２ - 揮発性のメモ](http://d.hatena.ne.jp/iww/20131214/dash)

        date +'%Y-%m-%d %H:%M:%S.%3N'
        echo  $(date +%c) $(printf '%03d' $(expr `date +%N` / 1000000))

- `Ctrl + s`でキー入力受け付けられなくなる。(操作できなくなる)
    Ctrl + qで解除
    Refs: [「Ctrl」＋「S」でキー入力が受け付けられなくなる - ITmedia エンタープライズ](http://www.itmedia.co.jp/help/tips/linux/l0612.html)

### スペシャルファイル

- nullデバイス

        /dev/null

- 標準(エラー)出力デバイス

        /dev/stdout
        /dev/stderr

## Tools

### Systemd

- システムブート時のサービスの起動設定

        systemctl enable/disable [Unit名(e.g. docker)]

- 起動

        systemctl start [Unit名(e.g. docker)]

### tmux

- すべてのセッションを終了させる

        tmux kill-server

Keys(dotfilesでカスタマイズ済み)

- prefix

        Ctrl-s

- ペイン横分割

        [prefix]p

- ペイン縦分割

        [prefix]v

- ペイン移動

        [prefix]h, j, k, l

- ペイン最大化・最小化トグル

        [prefix]m

- すべてのセッションを終了させる

        [prefix]q

