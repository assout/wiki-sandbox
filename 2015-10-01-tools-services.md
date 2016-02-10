# Title: Tools / Services

Date: 2015-10-01 11:05
Tags: []
Categories: []

---

## Prelude

- Linux限定のものは、Refs: <2014-09-09-linux.md>
- Windows限定のものは、Refs: <2014-12-04-windows.md>
- 重要なものは別ファイル化
    - Git : <2015-02-02-git.md>
    - Docker : <2015-08-10-docker.md>
    - And other

## Lint tools

### List

- Ansible
    - Ansible-lint
- Dockerfile
    - dockerfile-lint
    - dockerlint : Deprecated (結構ゆるそう)
- Markdown(text)
    - Markdown lint tool (mdl)
    - Redpen : Deprecated ("textlint"のほうがモダンっぽい)
    - eslint-md
    - textlint
    - textstat : TODO: 実行時Error出る
- JavaScript
    - ESLint
- JSON
    - JSON Lint
- ShellScript
    - bashate
    - checkbashisms
    - shellcheck
- SQL
    - SQLint : TODO: Error出て入れれてない
- VimScript
    - vint
- YAML
    - JS-YAML
    - yaml-lint: Deprecated ("JS-YAML"に比べドキュメントがあんまなさそう)

### Redpen

- Spelling機能は半角スペースで区切られた単語にたいしてのみ動作する点に注意してください

### ShellCheck

- SC2034
    - -> for文とかではdummyとして`_`を使う

            for _ in ${1..10} ; do foo; done

### bashate

    bashate -i E002,E003

- E002: ensure that indents are only spaces, and not hard tabs
- E003: Not an indent with multiple of 4

## Pomodoro

決定

- Chrome Extension
    - Strict Workflow

方針

- msys2, linux両方で動く(office/home)
- tmux統合がある

候補

- Chrome Extension
    - Strict Workflow
    - Simple Pomodoro
- Ruby
    - Thyme: Refs: [Thyme - Console Pomodoro Timer](http://hughbien.com/thyme/) デーモン実行がエラー、tmuxステータス領域がみづらい(時間経過後消えちゃうだけ)
    - pomo: 動かないっぽい
- Node.js
    - pomo(pomojs): tmux連携、動かない、ログが出力されない @msys2
    - pomodoro: tmux連携なし
    - pomodoro-timer: tmux連携なし

## Other tools

### Ctags

- langmap確認

        ctags --list-maps

### GitBook

- 初期化

        gitbook init

    \* SUMMARY.mdに従ってディレクトリ、ファイルを作成できる

- ビルド

        gitbook build

- サーブ

        gitbook serve

### Pacman

- リスト表示

        pacman -Sl

- 検索(パッケージ名と説明の両方)

        pacman -Ss grep

- インストール

        pacman -S grep

- アンインストール

        pacman -R grep

- 更新

        update-core
        pacman -Su

- ダウングレード
    > : /var/cache/pacman/pkg ディレクトリの中にもし古いバージョンのパッケージが保存されていた場合、簡単にダウングレードすることができます。
    > （つい最近に pacman -Scc をしたりしていない限り存在しているはずです）。
    > pacman -U /var/cache/pacman/pkg/pkgname-olderpkgver.pkg.tar.gz でその指定したバージョンのパッケージをインストールできます。

Refs:

- [pacman - ArchWiki](https://wiki.archlinuxjp.org/index.php/Pacman)
- [Pacman ヒント - ArchWiki](https://wiki.archlinuxjp.org/index.php/Pacman_%E3%83%92%E3%83%B3%E3%83%88)

### Pandoc

- markdownからtextileに変換

        pandoc -s hogehohe.md -o hogehohe.textile

## Tools key unity

### Before (Default)

| Commands      | tmux (Bash, Mintty) | Vim                   | Vrapper (Eclipse) | cVim (Crhome)     |
|---------------|---------------------|-----------------------|-------------------|-------------------|
| Cut           | n/a                 | `x`                   | `<C-x>`           | n/a               |
| Copy          | `<C-b>[`, `<C-S-c>` | `y`                   | `<C-c>`           | n/a               |
| Paste         | `<C-b>]`, `<C-S-v>` | `p`                   | `<C-v>`           | n/a               |
| Tab open      | `<C-b>c`            | `:tabe[dit]`          | `:tabe[dit]`      | `<C-t>`           |
| Tab move      | `<C-b>{p, n}`       | `g{t, T}`             | `g{t, T}`         | `g{t, T}`, `K, R` |
| Pain split    | `<C-b>"`            | `<C-w>s`, `:s[plit]`  | -                 | n/a               |
| Pain vsplit   | `<C-b>%`            | `<C-w>v`, `:v[split]` | -                 | n/a               |
| Pain move     | `<C-b><AllowKey>`   | `<C-w>{h, j, k, l>`   | -                 | n/a               |
| Pain close    | -                   | `<C-w>c`, `:clo[se]`  | `<C-F4>`          | `x`               |
| Pain maximize | `<C-b>z`            | -                     | `<C-m>`           | `F11`             |
| Shutdown      | -                   | `:qa[ll]`             | `<Alt-F4>`        | `<Alt-F4>`        |

### After

| Commands      | tmux (Gnome Terminal, Mintty) | Vim                   | Vrapper (Eclipse)       | cVim (Chrome)              |
|---------------|-------------------------------|-----------------------|-------------------------|----------------------------|
| Cut           | -                             | `x`                   | `x`                     | -                          |
| Copy          | `<C-s>[`, `<C-S-c>`           | `y`                   | `y`                     | `y`                        |
| Paste         | `<C-s>]`, `<C-S-v>`           | `p`                   | `p`                     | `p`                        |
| Tab open      | `<M-t>`                       | `<M-t>`, `:tabe[dit]` | `-`                     | `<C-t>`                    |
| Tab move      | `<M-{h, l}>`                  | `<M-{h, l}>`          | `<M-{h, l}>`            | `<M-{h, l}>`, `<C-{h, l}>` |
| Tab close     | `<M-c>`                       | `<M-c>`               | `-`                     | `x`                        |
| Pain split    | `<C-s>p`                      | `sp`                  | `sp`                    | -                          |
| Pain vsplit   | `<C-s>v`                      | `sv`                  | `sv`                    | -                          |
| Pain move     | `<C-s>{h, l, j, k}`           | `s{h, j, k, l}`       | `s{h, j, k, l}`         | n/a                        |
| Pain close    | `<C-s>c`                      | `sc`                  | `sc`, `sx`, `bd[elete]` | `x`                        |
| Pain maximize | `<C-s>m`                      | `sm`                  | `sm`                    | TODO:                       |
| Pain size     | `<C-s>{<, >, -, +}`           | `<C-w>{<, >, -, +}`   | TODO:                    | TODO:                       |
| Buffer delete | `<C-s>x`(kill session)        | `sx`, `:bd[elete]`    | `sc`, `sx`, `bd[elete]` | `x`                        |
| Shutdown      | `<C-s>q`                      | `:qa[ll]`             | `:qa[ll]`               | `:qa[ll]`                  |

Hint/TODOs

- `<C-S-hoge>`のような3キー同時押しは、cVim のみで可能
- `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
- TODO: Pain sizeを統一したい(<C-w>hogeのvim基準で合わせたい)

## Tools color unity

| Tools   | dark/light | color          |
|---------|------------|----------------|
| Vim     | dark       | hybrid         |
| GVim    | dark       | hybrid         |
| Mintty  | dark       | hybrid         |
| Eclipse | light      | default(light) |

Hint

- TODO: Linux GVimでTomorrow-Nightだと無駄にboldになるキーワードがある(無駄ではない?)

## Services (Web)

- Google Trends
- VISUALGO
- Cacoo
- gitignore.io
- Slack
- ttygif
- moqups
- PromiSEES - Promise visualization playground for the adventurous
- Restler
- Text 2 Mind Map

### Unused

- coggle : Mind Map (Alternative to "Text 2 Mind Map")

### Continuous Integration

- Travis CI : CI
- OpenShift : PaaS
    - Jenkins : CI
- Codecov   : Continuous code coverage
- COVERALLS : Continuous code coverage
