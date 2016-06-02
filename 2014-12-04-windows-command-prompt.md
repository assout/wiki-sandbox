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

- _ANSIFilter_                        : [Downloads](http://www.andre-simon.de/zip/download.php)
- _AutoHotKey_                        : msys2でのvim ime offに使用 : [AutoHotkey Downloads](https://autohotkey.com/download/)
- _C/Migemo for Windows_              : For vim-migemo : [C/Migemo KaoriYa](http://www.kaoriya.net/software/cmigemo/)
- _Cabal_                             : For ShellCheck
- _Ctrl2cap_                          : キーボード配置変更(Caps LockをCtrlにする) : [Ctrl2cap](https://technet.microsoft.com/ja-jp/sysinternals/bb897578.aspx)
- _Eclipse_                           : Refs: <2014-09-09-eclipse.md>
- _Everything Command-line Interface_ : [Downloads](http://www.voidtools.com/downloads/)
- _Everything Search Engine_          : [Everything Search Engine](http://www.voidtools.com/)
- _GCViewer_                          : [Releases ・ chewiebug/GCViewer ・ GitHub](https://github.com/chewiebug/GCViewer/releases)
- _GHC_                               : For Cabal
- _Google Chrome_                     : Refs: <2014-11-13-chrome.md>
- _Java Decompiler (JD-GUI)_
- _MSYS2_                             : <http://sourceforge.net/p/msys2/wiki/MSYS2%20installation/>, <http://sourceforge.net/projects/msys2/files/Base/x86_64/>
- _Microsoft Lync_
- _Pandoc_                            : markdown - textile 変換 等。
- _PlantUML_                          : TODO: 未確認 TODO: Graphvizもいりそう
- _Rapid Environment Editor_          : editor for environment : [Rapid Environment Editor](http://www.rapidee.com/ja/about)
- _Remote Mouse_                      : For home.
- _ScreenToGif_                       : [ScreenToGif - Home](https://screentogif.codeplex.com/)
- _ShellCheck_
- _TODO.TXT Command Line Interface_   : [GitHub - ginatrapani/todo.txt-cli: A simple and extensible shell script for managing your todo.txt file.](https://github.com/ginatrapani/todo.txt-cli)
- _Tar for Windows_                   : For unarchive msys2 install file : <http://gnuwin32.sourceforge.net/packages/gtar.htm>
- _Vim(kaoriya)_                      : Refs: <2014-09-30-vim.md> : [Vim ; KaoriYa](http://www.kaoriya.net/software/vim/)
- _WinMerge_                          : 基本vimdiff使うがexcelの差分とか見れたはず
- _WinSCP_                            : Free SFTP, SCP and FTP client for Windows
- _WinShot_
- _XZ Utils_                          : For unarchive msys2 install file : <http://tukaani.org/xz/>
- _astah\* community_
- _ghq_                               : [GitHub - motemen/ghq: Remote repository management made easy](https://github.com/motemen/ghq)
- _hub_                               : [GitHub - github/hub: hub helps you win at git.](https://github.com/github/hub)
- _kSar_                              : [ksar : a sar grapher 日本語情報トップページ - OSDN](https://osdn.jp/projects/sfnet_ksar/)
- _nkf_                               : 文字コード変換 : [nkf.exe nkf32.dll Windows用の詳細情報 : Vector ソフトを探す！](http://www.vector.co.jp/soft/win95/util/se295331.html)
- _p_                                 : pomodoro by bash. Refs: [GitHub - chrismdp/p: A simple yet powerful pomodoro tracker in pure Shell](https://github.com/chrismdp/p)
- _peco_                              : [GitHub - peco/peco: Simplistic interactive filtering tool](https://github.com/peco/peco)
- _侍_

Caution:

- エクセルアドインは Refs: <2014-09-18-microsoft-excel.md>
- MSYS2内で利用するものは Refs: <# MSYS2>

#### Installing

- _TODO.TXT Command Line Interface_

         curl -L https://github.com/ginatrapani/todo.txt-cli/releases/download/v2.10/todo.txt_cli-2.10.tar.gz | tar zx -C ~/Tools/
         chmod +x ~/Tools/todo.txt_cli-2.10/todo.sh

- _gibo_

         curl --create-dirs -Lo /usr/local/bin/gibo https://raw.github.com/simonwhitaker/gibo/master/gibo
- _hub_

        wget -P /tmp https://github.com/github/hub/releases/download/v2.2.3/hub-windows-amd64-2.2.3.zip
        unzip -d ~/Tools/hub /tmp/hub-windows-amd64-2.2.3.zip

- _seq2gif_

        wget -P /tmp https://github.com/saitoha/seq2gif/releases/download/v0.10.3/seq2gif-windows-0.10.3.zip
        unzip -d ~/Tools/seq2gif /tmp/seq2gif-windows-0.10.3.zip

- _peco_ : TODO 後で書く

#### Rare, Deprecated

- _Apache JMeter_
- _Apache Maven_
- _Apache Tomcat_
- _CarotDAV_                       : WebDav client. For Gxxxxmax Collaboration
- _Chat & Messenger_               : IP Messengerの高機能版。\* 使用者同士が表示されるので場合によっては使わない。Slackに以降!
- _DF_                             : 基本diff使うが。フォルダ比較、バイナリ比較時に使う
- _DropCompres_                    : 一括unzipなどで使用。基本MSYS2で行うがたまに使う
- _FileSum_                        : 基本MSYS2(du,df)を使う
- _Flexible Renamer_               : 基本MSYS2(rename,mv)を使う
- _Git for Windows (Portable Git)_ : 基本MSYS2を使うが初回cloneできないことがあるためこっちのgit-cmd.exe使う Refs: [Releases ・ git-for-windows/git ・ GitHub](https://github.com/git-for-windows/git/releases)
- _SQL Developer_
- _SizeOf_                         : Java インスタンスのメモリサイズ計測 Refs: [いー ドット ぷりんとすたっくとれーす : Javaのインスタンスが使っているメモリサイズをみたい](http : //edotprintstacktrace.blogspot.jp/2007/04/java.html)
- _TeraTerm_                       : 基本MSYS2 (ssh)を使う

### On Startup

- _AutoHotKey_ (ahkファイルを置かないとダメかも)
- _Everything_
- _WinShot_

### On Task bar

1. _MSYS2 MINGW64 Shell_
1. _Explore_
1. _Google Chrome_
1. _Internet Explorer_
1. _Outlook_
1. _Excel_
1. _Word_
1. _PowerPoint_
1. _GVim_
1. _Eclipse_

### On Task Notice

以下に対し"アイコンと通知を表示"を選択

- _AutoHotKey_
- _Everything Search Engine_
- _Microsoft Lync_
- _Microsoft Outlook_
- _WinShot_

### Details

#### AutoHotKey

Refs: [Vimを使う上でのIME(日本語入力)の取り扱い with AutoHotKey](http://rcmdnk.github.io/blog/2013/08/04/computer-windows-autohotkey/)

- プロパティ- 互換性 - 管理者としてこのプログラムを実行する

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
    - Property - 互換性 - 特権レベル: 管理者としてこのプログラムを実行する (シンボリックリンクを張るために必要)

- Edit ini

        vim ming64.ini
        MSYS=winsymlinks:nativestrict
        CHERE_INVOKING=1
        MSYS2_PATH_TYPE=inherit

        vim /etc/pacman.conf
        # 32bit用のリポジトリは無効にする
        # [mingw32]
        # Include = /etc/pacman.d/mirrorlist.mingw32

- Edit fstab (パーミッションのため)

        vim /etc/fstab
        noacl -> acl

    - Refs: [MSYS2と格闘 (2) - できないことはやりたくない](http://yaritakunai.hatenablog.com/entry/2014/12/09/202743)
    - Caution: ただ全ファイルがデフォルト777になってしまうっぽく出来ればやりたくない

- Workaround for openssh

        mkdir /home && ln -sf ~/ /home/admin

    Refs: [msys2での$HOMEとOpenSSHでのホームディレクトリの違い - Qiita](http://qiita.com/nana4gonta/items/622571c66bfe7f1c7150)

- Workaround for git
    - http,httpsプロトコルの際のユーザID,パスワード省略

            cat << EOS >> ~/.netrc 2>&1
            machine {gitlab host name}
            login {gitlab user id}
            password {gitlab password}

            machine github.com
            login assout
            password {github Personal access token}
            EOS

        - GitHubはログインパスワードでなく"Personal access token"じゃないとダメらしい
          Refs: [\[Git\]\[GitHub\]GitHubにPushする際に認証失敗する DevAchieve](http://wada811.blogspot.com/2014/05/failed-to-push-to-github-over-https.html)

    - /etc/gitconfigの設定

            # Eclipse(EGit)から参照できるように以下にsystemのgitconfigを作成。/etc/gitconfigが存在することが前提
            ln -sf /etc /d/etc

- hostsをwindowsと共用する(二重管理が嫌なため。またsshが/etc/hostsのほう見ないっポイ)

        ln -s /c/Windows/System32/drivers/etc/hosts /etc/hosts

##### Install with pacman

    pacman -Syu

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
    mingw-w64-x86_64-go \
    mingw-w64-x86_64-libnotify \
    mingw-w64-x86_64-make \
    mingw-w64-x86_64-nodejs \
    mingw-w64-x86_64-python3-pip
    mingw-w64-x86_64-ruby \
    patch \
    patchutils \
    p7zip \
    procps \
    python \
    python2 \
    rsync \
    sshpass \
    subversion \
    tar \
    tig \
    tmux \
    tree \
    ttyrec \
    unzip
    vim \
    wget \
    winpty \
    zip \

- Note: `xmllint`はデフォルトで入ってるっぽい
- Note: `procps`は`pgrep`, `pkill`, `ps`, `watch`コマンドなどが入ってる
- Note: `mingw-w64-x86_64-gcc`は`fzf`のために入れてる(結局`fzf`はうまく動いてないが)

##### Install with npm

プロキシ設定

${HOME}/.npmrcを作成

    proxy={proxy url}
    registry=http://registry.npmjs.org/

インストール

    npm install -g \
    dockerfile_lint \
    eslint \
    eslint-config-google \
    jsonlint \
    js-yaml \
    markdown-html \
    markdown-to-slides \
    tldr \

##### Install with gem

    gem install \
    mdl \
    yaml-lint \

##### Install with ghq

- ghqで取得

        ghq get https://github.com/assout/dotfiles/
        ghq get https://github.com/assout/memolist/
        ghq get https://github.com/assout/scripts/
        ghq get https://github.com/assout/todo.txt-note
        ghq get https://github.com/assout/todo.txt-p

        ghq get https://github.com/chrismdp/p
        ghq get https://github.com/dwyl/english-words
        ghq get https://github.com/github/hub
        ghq get https://github.com/timpulver/todo.txt-graph

- git hook用設定
    - コミット禁止文字列ファイルの作成

            touch ~/.git_prohibited_words
            vi ~/.git_prohibited_words

- install dict

        mkdir -p /usr/share/dict/
        ln -sf $(cygpath $(ghq root))/github.com/dwyl/english-words/words.txt /usr/share/dict/words

- todo.sh add-ons

        ghq look assout/todo.txt-note

        mkdir -p ~/.todo.actions.d
        ln -sf $(cygpath $(ghq root))/github.com/assout/todo.txt-note/note ~/.todo.actions.d/
        ln -sf $(cygpath $(ghq root))/github.com/assout/todo.txt-p/p ~/.todo.actions.d/
        ln -sf $(cygpath $(ghq root))/github.com/timpulver/todo.txt-graph/ ~/.todo.actions.d/graph

##### Install with go

    go get github.com/yuroyoro/gommit-m

##### Others

##### Options...

Refs: .minttyrc

Color設定は以下のhybridを使う(Caution vimのエラーメッセージが見づらいのでWhite,BoldWhiteの行を削除する -> TODO: 素vimで選択範囲の文字列がまったくみえない。hybridいけてないかも)

Refs: [Hybrid color settings for the Cygwin mintty terminal. $ cat .minttyrc-hybrid ; ~/.minttyrc ・ GitHub](https://gist.github.com/wakuworks/2232246c4c1b6ce2c019)

参考 - tomorrow (256色じゃなさそうなので使わない)
Refs: [mintty-color-schemes/base16-tomorrow.minttyrc at master ・ oumu/mintty-color-schemes ・ GitHub](https://github.com/oumu/mintty-color-schemes/blob/master/base16-mintty/base16-tomorrow.minttyrc)

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

- Windowsパス形式をUnix形式に変換できる

        cygpath $(pwd)

- SJISのファイルをgrepしたい場合、一時的に Options - Text - Character setをSJISに変更する
- maven 3.3.3では$HOME/.m2でなく$USERPROFILE/.m2を見るみたいなので、settings.xmlはC:\Users\admin\.m2に配置する

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

- vimのundo file用のディレクトリ作成

        mkdir -p ~/.cache/undo

- vim-plug

        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim -c "PlugInstall"

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

- Man pages : `D:\msys64\usr\bin\man.exe`
- Shell Script
    - Interpreters
        - Add... : bash.exe - `D:\admin\msys64\usr\bin\bash.exe`

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
        - 更新確認
            - 起動時に更新確認を行う: unchecked

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
        Path=%JAVA_HOME%\bin;C:\Users\admin\AppData\Roaming\cabal\bin;D:\msys64\usr\bin
        http_proxy={http_proxy}
        _JAVA_OPTIONS=-Dfile.encoding=UTF-8

## Directory hierarchy (office)

- /d/admin
    - Backup
    - Desktop
    - Development
        - {ghq management repos}
        - local
        - workspace
    - Documents
        - caputure
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
    - memolist@

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

