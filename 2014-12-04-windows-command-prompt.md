# Title: Windows / Command Prompt

Date: 2014-12-04 15:00
Tags: []
Categories: []

<!-- toc -->

---

## Operating Environment

- OS: Windows 7 (64bit)

## Settings

- コントロールパネル
    - システム
        - システムの詳細設定
            - 詳細設定
                - パフォーマンス : 設定
                    - 以下以外を未選択にする(一度"パフォーマンスを優先する"を選ぶと楽)
                        - ウィンドウとボタンに視覚スタイルを使用する
                        - スクリーン フォントの縁を滑らかにする
                        - ドラッグ中にウィンドウの内容を表示する
    - 個人設定
        - デスクトップの背景
            - 単色 - 最上行の右から3列目の青系
    - 電源オプション
        - プラン設定の変更
            - コンピュータをスリープ状態にする: なし

## Tools

### List

- ANSIFilter                        : [Downloads](http://www.andre-simon.de/zip/download.php)
- AutoHotKey                        : msys2でのvim ime offに使用 : [AutoHotkey Downloads](https://autohotkey.com/download/)
- C/Migemo for Windows              : For vim-migemo : [C/Migemo KaoriYa](http://www.kaoriya.net/software/cmigemo/)
- Cabal                             : For ShellCheck
- Ctrl2cap                          : キーボード配置変更(Caps LockをCtrlにする) : [Ctrl2cap](https://technet.microsoft.com/ja-jp/sysinternals/bb897578.aspx)
- Eclipse                           : Refs: <2014-09-09-eclipse.md>
- Everything Command-line Interface : [Downloads](http://www.voidtools.com/downloads/)
- Everything Search Engine          : [Everything Search Engine](http://www.voidtools.com/)
- GCViewer                          : [Releases · chewiebug/GCViewer · GitHub](https://github.com/chewiebug/GCViewer/releases)
- GHC                               : For Cabal
- Google Chrome                     : Refs: <2014-11-13-chrome.md>
- Java Decompiler (JD-GUI)
- MSYS2                             : <http://sourceforge.net/p/msys2/wiki/MSYS2%20installation/>, <http://sourceforge.net/projects/msys2/files/Base/x86_64/>
- Microsoft Lync
- Pandoc                            : markdown - textile 変換 等。
- PlantUML                          : TODO: 未確認 TODO: Graphvizもいりそう
- Rapid Environment Editor          : editor for environment : [Rapid Environment Editor](http://www.rapidee.com/ja/about)
- Remote Mouse                      : For home.
- ShellCheck
- Tar for Windows                   : For unarchive msys2 install file : <http://gnuwin32.sourceforge.net/packages/gtar.htm>
- Vim(kaoriya)                      : Refs: <2014-09-30-vim.md> : [Vim ; KaoriYa](http://www.kaoriya.net/software/vim/)
- WinSCP                            : Free SFTP, SCP and FTP client for Windows
- WinShot
- XZ Utils                          : For unarchive msys2 install file : <http://tukaani.org/xz/>
- astah\* community
- ghq                               : [GitHub - motemen/ghq: Remote repository management made easy](https://github.com/motemen/ghq)
- kSar                              : [ksar : a sar grapher 日本語情報トップページ - OSDN](https://osdn.jp/projects/sfnet_ksar/)
- nkf                               : 文字コード変換 : [nkf.exe nkf32.dll Windows用の詳細情報 : Vector ソフトを探す！](http://www.vector.co.jp/soft/win95/util/se295331.html)
- p                                 : pomodoro by bash. Refs: [GitHub - chrismdp/p: A simple yet powerful pomodoro tracker in pure Shell](https://github.com/chrismdp/p)
- 侍

Caution:

- エクセルアドインは Refs: <2014-09-18-microsoft-excel.md>
- MSYS2内で利用するものは Refs: <# MSYS2>

#### Rare, Deprecated

- Apache JMeter
- Apache Maven
- Apache Tomcat
- CarotDAV                       : WebDav client. For Gxxxxmax Collaboration
- Chat & Messenger               : IP Messengerの高機能版。\* 使用者同士が表示されるので場合によっては使わない。Slackに以降!
- DF                             : 基本diff使うが。フォルダ比較、バイナリ比較時に使う
- DropCompres                    : 一括unzipなどで使用。基本MSYS2で行うがたまに使う
- FileSum                        : 基本MSYS2(du,df)を使う
- Flexible Renamer               : 基本MSYS2(rename,mv)を使う
- Git for Windows (Portable Git) : 基本MSYS2を使うが初回cloneできないことがあるためこっちのgit-cmd.exe使う Refs: [Releases ・ git-for-windows/git ・ GitHub](https://github.com/git-for-windows/git/releases)
- SQL Developer
- SizeOf                         : Java インスタンスのメモリサイズ計測 Refs: [いー ドット ぷりんとすたっくとれーす : Javaのインスタンスが使っているメモリサイズをみたい](http : //edotprintstacktrace.blogspot.jp/2007/04/java.html)
- TeraTerm                       : 基本MSYS2 (ssh)を使う

### On Startup

- AutoHotKey
- WinShot

### On Task bar

1. MSYS2 MINGW64 Shell
1. Google Chrome
1. Internet Explorer
1. Explore
1. Outlook
1. PowerPoint
1. Excel
1. Word
1. Eclipse
1. GVim

### On Task Notice

以下に対し"アイコンと通知を表示"を選択

- AutoHotKey
- Everything Search Engine
- Microsoft Lync
- Microsoft Outlook
- WinShot

### Details

#### AutoHotKey

Refs: [Vimを使う上でのIME(日本語入力)の取り扱い with AutoHotKey](http://rcmdnk.github.io/blog/2013/08/04/computer-windows-autohotkey/)

#### Everything Command-line Interface

- 文字化け対策

        winpty es.exe hoge
        es.exe hoge | nkf32.exe -w

- 正規表現で検索

        es.exe -r hoge

#### Microsoft Lync

- Lync - オプション - 全般 - タスクバーではなく... : チェック

#### Ctrl2cap

    ctrl2cap /install
    \* reboot

#### MSYS2

##### Initial Settings

- Task Bar - 作業フォルダ - `D:\admin`

- Create bash_profile

        touch ~/.bash_profile

        if [ -e ~/.inputrc ]; then
                export INPUTRC=~/.inputrc
        else
                export INPUTRC=/etc/inputrc
        fi
        if [ -e ~/.bashrc ]; then
                . ~/.bashrc
        elif [ -e ~/.bash_profile ]; then
                . ~/.bash_profile
        elif [ -e /etc/bash_profile ]; then
                . /etc/bash_profile
        fi

- Edit bat

        vim ming64_shell.bat
        start %WD%mintty -i /msys2.ico /bin/env CHERE_INVOKING=1 /usr/bin/bash --login %* -c "export CHERE_INVOKING=1 && tmux"

- Edit fstab (パーミッションのため)

        vim /etc/fstab
        noacl -> acl
    - Refs: [MSYS2と格闘 (2) - できないことはやりたくない](http://yaritakunai.hatenablog.com/entry/2014/12/09/202743)
    - Caution: ただ全ファイルがデフォルト777になってしまうっぽく出来ればやりたくない

- Workaround for openssh

        mkdir /home
        cmd //c "mklink /D D:\\admin\\Tools\\msys64\\home\\admin D:\\admin" 2>&1 | nkf32.exe -w

- Workaround for git
    - http,httpsプロトコルの際のユーザID,パスワード省略

            cat << EOS >> ~/.netrc 2>&1
            machine {gitlab host name}
            login {gitlab user id}
            password {gitlab password}

            machine {github host name}
            login {github user id}
            password {github Personal access token}
            EOS

        - GitHubはログインパスワードでなく"Personal access token"じゃないとダメらしい
          Refs: [\[Git\]\[GitHub\]GitHubにPushする際に認証失敗する DevAchieve](http://wada811.blogspot.com/2014/05/failed-to-push-to-github-over-https.html)

    - /etc/gitconfigの設定

            # Eclipse(EGit)から参照できるように以下にsystemのgitconfigを作成
            D:\admin\Tools\msys64\etc\gitconfig
            # Eclipseからも参照できるようにシンボリックリンクを作成 Caution: 逆方向のリンクにするとEclipse上おかしくなる
            mkdir /d/etc
            cmd //c "mklink D:\\etc\\gitconfig D:\\admin\\Tools\\msys64\\etc\\gitconfig" 2>&1 | nkf32.exe -w

##### Install with pacman

    update-core
    pacman -Su

    pacman -S \
    bc \
    ctags \
    diffutils \
    expect \
    gcc \
    git \
    lftp \
    make \
    man-pages-posix \
    mingw-w64-x86_64-ansicon-git \
    mingw-w64-x86_64-connect \
    mingw-w64-x86_64-gcc \
    mingw-w64-x86_64-libnotify \
    mingw-w64-x86_64-nodejs \
    mingw-w64-x86_64-ruby \
    msys2-launcher-git \
    p7zip \
    procps \
    python \
    python2 \
    rsync \
    sshpass \
    tar \
    tmux \
    tree \
    unzip
    vim \
    winpty \
    zip \

- Note: `xmllint`はデフォルトで入ってるっぽい
- Note: `procps`は`pgrep`, `pkill`, `ps`, `watch`コマンドなどが入ってる
- TODO: 現状npmの実行がエラーになる @2016-01-29
    - -> 暫定対応

            cmd //c "mklink /J D:\\mingw64 D:\\admin\\Tools\\msys64\\mingw64"

- Note: `mingw-w64-x86_64-gcc`は`fzf`のために入れてる(結局`fzf`はうまく動いてないが)

##### Install with npm

プロキシ設定

/c/Users/admin/.npmrcを作成

    proxy={proxy url}
    registry=http://registry.npmjs.org/

インストール

    npm install -g dockerfile_lint
    npm install -g jsonlint
    npm install -g js-yaml
    npm install -g markdown-html
    npm install -g markdown-to-slides
    npm install -g tldr

##### Install with gem

    gem install mdl
    gem install yaml-lint

##### Install other

- p

        curl https://raw.githubusercontent.com/chrismdp/p/master/p > /usr/local/bin/
        chmod +x /usr/local/bin/p

##### Options...

Refs: .minttyrc

Color設定は以下のhybridを使う(Caution vimのエラーメッセージが見づらいのでWhite,BoldWhiteの行を削除する -> TODO: 素vimで選択範囲の文字列がまったくみえない。hybridいけてないかも)

Refs: [Hybrid color settings for the Cygwin mintty terminal. $ cat .minttyrc-hybrid ; ~/.minttyrc ・ GitHub](https://gist.github.com/wakuworks/2232246c4c1b6ce2c019)

参考 - tomorrow (256色じゃなさそうなので使わない)
Refs: [mintty-color-schemes/base16-tomorrow.minttyrc at master ・ oumu/mintty-color-schemes ・ GitHub](https://github.com/oumu/mintty-color-schemes/blob/master/base16-mintty/base16-tomorrow.minttyrc)

##### Other Settings

- <https://sourceforge.net/p/msys2/mailman/message/34599465/>
    - 作業フォルダー:

        D:\admin

- [msys2での$HOMEとOpenSSHでのホームディレクトリの違い - Qiita](http://qiita.com/nana4gonta/items/622571c66bfe7f1c7150)

- vimのundo file用のディレクトリ作成

        mkdir -p ~/.vim/undo

##### Tips, Cautions

- コマンドプロンプトを起動(別アプリとして)

        start

- システムの関連付けでファイルを開く

        start hoge

    - エクスプローラを開く

            start .
            explorer .

    - URLも開ける

            start http://google.co.jp

- SJISのファイルをgrepしたい場合、一時的に Options - Text - Character setをSJISに変更する
- maven 3.3.3では$HOME/.m2でなく$USERPROFILE/.m2を見るみたいなので、settings.xmlはC:\Users\admin\.m2に配置する
- `cygpath`で、Windowsパス形式をUnix形式に変換できる

###### 文字化け関連

- 出力結果がSJISのコマンドを実行する場合nkfをかます

        mvn clean package | nkf32.exe -w

    - 標準エラーも対応

        mvn clean package 2>&1 | nkf32.exe -w

- winptyをかませば文字化けも解決することがある

        winpty ping localhost

- Java, Mavenの結果が化ける場合(↑だと標準出力がリアルタイムに見れないので)

        export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"
        mvn hoge

    Refs: [mavenで文字化けを解消するための備忘録 - 備忘録のようなもの](http://d.hatena.ne.jp/black-vinegar/touch/20120211/p1)

#### Vim

- 翻訳用辞書をローカルに保存
    - ファイル取得
            [GENE95 Dictionary](http://www.namazu.org/~tsuchiya/sdic/data/gene.html)
    - ローカルに格納

            ~/vimfiles/dict/gene95/GENE.TXT

    - UTF8に変換

            nkf -w --overwrite ~/vimfiles/dict/gene95/GENE.TXT

#### Eclipse

##### ShellEd

Preferences

- Man pages : `D:\admin\Tools\msys32\usr\bin\man.exe`
- Shell Script
    - Interpreters
        - Add... : bash.exe - D:\admin\Tools\msys32\usr\bin\bash.exe

#### ShellCheck

Windowsでのインストール手順

- Cabalをインストール
    - 一括(Haskell Platformごと)(簡単)
        - [Download Haskell Platform](https://www.haskell.org/platform/)
    - 個別(cabal,ghc)
        - [The Haskell Cabal](https://www.haskell.org/cabal/download.html)
        - [GHC: Download version 7.10.2](https://www.haskell.org/ghc/download_ghc_7_10_2#windows)

ShellCheckをインストール

    export PATH="/d/admin/Tools/ghc-7.10.2/bin:$PATH" # Haskell Platformごと入れた場合不要
    export http_proxy=http://USERNAME:PASSWORD@PROXYURL:PORT
    cabal update
    cabal install shellcheck
    -> C:\Users\admin\AppData\Roaming\cabal\bin # 任意にPATH追加

#### WinShot

- 基本設定
- 接頭語 : `\F\M\D_\H\m\s_WinShot`
- 品質／減色
    - JPEG品質 : 100
- ホットキー
    - ビットマップで保存(デスクトップ)         : PrintScreen
    - ビットマップで保存(アクティブウィンドウ) : Alt + PrintScreen
- その他の設定
    - トレイアイコンのダブルクリック動作 : ビットマップで保存(矩形範囲指定)
    - 自動保存時の拡張子                 : ビットマップ .png

#### astah\* community

- ツール
    - システム プロパティ
        - ファイル
            - プロジェクト保存時にバックアップファイルを作成する: unchecked

## Settings

### IME - プロパティ

- Note: 常に半角スペースにする設定はしない(デフォルトでShift + Spaceでできるため)
- Note: 無変換、変換キーの指定等はAutoHotKeyで実施する

### Keys

- Caps Lock -> Ctrl (use [Change Key] tool)

### PATH

- System Variables

        Path=C:\ProgramData\Oracle\Java\javapath;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Intel\OpenCL SDK\3.0\bin\x86;C:\Program Files (x86)\Intel\OpenCL SDK\3.0\bin\x64;C:\Program Files (x86)\Graphviz 2.28\bin

- User Variables

        HOME=D:\admin
        Path=D:\admin\Tools\apache-maven-3.3.9\bin;D:\admin\Tools\nkfwin\vc2005\win32(98,Me,NT,2000,XP,Vista,7)Windows-31J;D:\admin\Tools\msys64\mingw64\bin;D:\admin\Tools\msys64\usr\bin;D:\admin\Tools\xz-5.2.1-windows\bin_x86-64;D:\admin\Tools\tar-1.13-1-bin\bin
        http_proxy={http_proxy}
        _JAVA_OPTIONS=-Dfile.encoding=UTF-8

## Directory hierarchy (office)

- /d/admin
    - Backup
    - Desktop
    - Development
        - github
            - dotfiles
            - scripts
        - gitlab
        - local
        - workspace
    - Documents
        - caputure
        - memolist
        - misc
        - shortcuts
        - spell
        - task
        - templates
        - todo
    - Downloads
    - Tools
    - .vim
        - plugged
        - dict
            - gene95
                - GENE.TXT
            - utf-8
                - {for migemo dict}
    - .ssh
    - dotfiles(junction)

            cmd //c "mklink /J D:\\admin\\dotfiles D:\\admin\\Development\\dotfiles"

    - memolist(junction)

            cmd //c "mklink /J D:\\admin\\memolist D:\\admin\\Documents\\memolist"

以下のディレクトリを↑の場所に変更

- Desktop
- Downloads
- Documents

## Desktop icons

- Today
- admin (C drive)
- admin (D drive)
- ごみ箱
- コンピュータ
- ネットワーク
- IE
- Others

## Tips

- エクスプローラーでドットファイル作るときに、末尾もドットにしないといけない(.gitignore. とか)
- タスクバーのプログラム実行時の引数、作業ディレクトリを変更する。Refs: [Windows/Windows7/タスクバーに固定したアプリの引数を指定する方法 - TOBY SOFT wiki](http://tobysoft.net/wiki/index.php?Windows%2FWindows7%2F%A5%BF%A5%B9%A5%AF%A5%D0%A1%BC%A4%CB%B8%C7%C4%EA%A4%B7%A4%BF%A5%A2%A5%D7%A5%EA%A4%CE%B0%FA%BF%F4%A4%F2%BB%D8%C4%EA%A4%B9%A4%EB%CA%FD%CB%A1)
    - -> タスクバー上のアイコンを`Shift + 右クリック`からプロパティを選択
- 資格情報マネージャの削除

        cmdkey /list
        cmdkey /delete {target name}

### PATH

- Windowsのホームディレクトリ

        $USERPROFILE (%USERPROFILE%)

## 引っ越し時にやること

### 持ってくもの

- Office
    - 辞書ファイル

            C:\Users\admin\AppData\Roaming\Microsoft\UProof

    - IMEの辞書ファイルを保存

            C:\Users\admin\AppData\Roaming\Microsoft\IMJP14\imjp14cu.dic

    - Themes,Templates (TODO: どちらかでよいかも)

            C:\Users\admin\AppData\Roaming\Microsoft\Templates
            C:\Users\admin\AppData\Roaming\Microsoft\Templates\Document Themes

- /d/admin配下のGithub管理してないもの
    - Documents
    - memolist
        - local
    - scripts
        - local
- $HOMEフォルダ配下のGitHub管理してないもの
    - hoge.local

### 出るときにやること

- 各種設定ファイルエクスポート(configurationディレクトリへ格納)
    - ChromeのBookmark
    - Word,Excel,PowerPoint - オプション - クイックアクセスツールバー - インポート/エクスポート
- 最新の環境変数PATHを当ファイルに更新
- 「プログラムと機能」からアンインストール
- [Ctrl2cap] での設定を戻す `ctrl2cap /uninstall`
- IMEの設定を戻す
- レジストリの設定を戻す
    - Edit with GVim -> Refs: <2014-09-30-vim.md #その他>
- メールファイルをバックアップ TODO: 手順
- 以下の「場所」を標準に戻す
    - Desktop
    - Documents
    - Downloads
- ショートカット、シンボリックリンクを削除
- Dドライブ配下を削除
- [スタートアップ]配下を削除

### 入るときにやること

↑の逆

## Dos

### Notes

@echo off
rem 指定フォルダ配下のファイル/ディレクトリを再帰的に
rem 処理するバッチファイルサンプル

- rem 指定フォルダ直下のファイルに対する処理

        for %%a in (%1\*) do call filecmd.bat "%%a"

- rem 下位フォルダを再帰的に処理

        for /d %%a in (%1\*) do call foldercmd.bat "%%a"

- シンボリックリンク作成

        mklink <link(リンクの場所)> <target(リンクが参照するパス>

    - ディレクトリが対象

            mklink /D <link> <target>

    - ジャンクションを作成

            mklink /J <link> <target>

#### シンボリックリンクとジャンクションの違い

ググってもよくわからない。。

- ジャンクションにcdした先にシンボリックリンクがあるとFunction not Implemented が出力されるのでシンボリックリンクを使う
- シンボリックリンク上でgit pullが失敗するため、gitディレクトリはジャンクションを使う。
- シンボリックリンクで無効なパスのものを作ってしまうとExplorer上から削除できないことがあった

大まかな違い Refs: [Windowsのジャンクション(junction)とシンボリック・リンク(symblic link)違い - Gobble up pudding](http://fa11enprince.hatenablog.com/entry/2015/07/25/231114)

| 機能                     | ジャンクション    | シンボリックリンク |
|--------------------------|-------------------|--------------------|
| ファイル・システム       | NTFS              | NTFS               |
| 作成に必要な権限         | 一般ユーザー権限  | 管理者権限が必要   |
| ファイルへのリンク       | ×                 | ○                  |
| ディレクトリへのリンク   | ○                 | ○                  |
| dirコマンド出力での表記  | JUNCTION          | SYMLINK SYMLINKD   |
| ネットワーク先へのリンク | ×（ローカルのみ） | ○                  |
| 他マシンから参照(\*1)    | ○                 | ×                  |
| 作成コマンド             | mklink /j         | mklink mklink /d   |
| エクスプローラの表示     | アイコンに矢印    | アイコンに矢印     |

