# Title: Tools/Services

Date: 2015-10-01 11:05
Tags: []
Categories: []

---

## Prelude

* Linux限定のものは、ref. <2014-09-09-linux.md>
* Windows限定のものは、ref. <2014-12-04-windows.md>
* 重要なものは別ファイル化
	* Git : <2015-02-02-git.md>
	* Docker : <2015-08-10-docker.md>
	* And other

## Tools

### Lint tool list

* ansible
	* ansible-lint
* json
	* jsonlint
* shell
	* shellcheck
	* bashate
	* checkbashisms
* sql
	* sqlint : Error出て入れれてない
* markdown
	* mdl
* yaml
	* js-yaml
	* yaml-lint
* text
	* Redpen

### Pacman

* リスト表示
		pacman -Sl
* 検索
		pacman -Ss grep
* インストール
		pacman -S grep

### Pandoc

* markdownからtextileに変換
		pandoc -s hogehohe.md -o hogehohe.textile

### Redpen

* Spelling機能は半角スペースで区切られた単語にたいしてのみ動作する点に注意してください

### Shell Syntax check tools

* ShellCheck
* bashate
* checkbashisms

#### ShellCheck

* SC2034
	* -> for文とかではdummyとして`_`を使う
			for _ in ${1..10} ; do foo; done

#### bashate

	bashate -i E002,E003

* E002: ensure that indents are only spaces, and not hard tabs
* E003: Not an indent with multiple of 4

### Tools key unity

#### Before (Default)

Commands      | tmux (Bash)        | Cmder           | Vim                  | Vrapper (Eclipse) | cVim (Crhome)  | RLogin
---           | ---                | ---             | ---                  | ---               | ---            | ---
Cut           | n/a                | n/a             | `x`                  | `<C-x>`           | n/a            | TODO
Copy          | `<C-b>[`,`<C-S-c>` | n/a(mouse only) | `y`                  | `<C-c>`           | n/a            | TODO
Paste         | `<C-b>]`,`<C-S-v>` | `<M-v>`         | `p`                  | `<C-v>`           | n/a            | TODO
Tab open      | `<C-b>c`           | `<C-t>`         | `:tabe[dit]`         | `:tabe[dit]`      | `<C-t>`        | TODO
Tab move      | `<C-b>{p,n}`       | `<C-Tab>`       | `g{t,T}`             | `g{t,T}`          | `g{t,T}`,`K,R` | TODO
Pain split    | `<C-b>"`           | TODO            | `<C-w>s`,`:s[plit]`  | -                 | n/a            | TODO
Pain vsplit   | `<C-b>%`           | TODO            | `<C-w>v`,`:v[split]` | -                 | n/a            | TODO
Pain move     | `<C-b><AllowKey>`  | TODO            | `<C-w>{h,j,k,l>`     | -                 | n/a            | TODO
Pain close    | -                  | `<C-w>`         | `<C-w>c`,`:clo[se]`  | `<C-F4>`          | `x`            | TODO
Pain maximize | `<C-b>z`           | TODO            | -                    | `<C-m>`           | `F11`          | TODO
Shutdown      | -                  | TODO            | `:qa[ll]`            | `<Alt-F4>`        | `<Alt-F4>`     | TODO

#### After

Commands      | tmux (Bash)        | Cmder           | Vim                  | Vrapper (Eclipse)    | cVim (Chrome)           | RLogin
---           | ---                | ---             | ---                  | ---                  | ---                     | ---
Cut           | -                  | n/a             | `x`                  | `x`                  | -                       | n/a
Copy          | `<C-s>[`,`<C-S-c>` | n/a(mouse only) | `y`                  | `y`                  | `y`                     | `<M-c>`
Paste         | `<C-s>]`,`<C-S-v>` | `<C-S-v>`       | `p`                  | `p`                  | `p`                     | `<M-v>`
Tab open      | `<M-t>`            | `<C-S-t>`       | `<M-t>`,`:tabe[dit]` | `<M-t>`,`:tabe[dit]` | `<C-t>`                 | TODO
Tab move      | `<M-{h,l}>`        | `<C-S-{h,l}`    | `<M-{h,l}>`          | `<M-{h,l}>`          | `<M-{h,l}>`,`<C-{h,l}>` | TODO
Tab close     | `<M-c>`            | TODO            | `<M-c>`              | `<C-c>`              | `c`,`x`                 | TODO
Pain split    | `<C-s>p`           | `<M-p>`         | `sp`                 | `sp`                 | -                       | `<C-S-p>`
Pain vsplit   | `<C-s>v`           | `<M-v>`         | `sv`                 | `sv`                 | -                       | `<C-S-v>`
Pain move     | `<C-s>{h,l,j,k}`   | `<M-{h,l,j,k}>` | `s{h,j,k,l}`         | `s{h,j,k,l>`         | n/a                     | TODO
Pain close    | `<C-s>c`           | `<M-c>`         | `sc`                 | `sc`                 | `x`                     | `<C-S-c>`
Pain maximize | `<C-s>m`           | `<M-m>`         | `sm`                 | `<C-t>`              | TODO                    | TODO
Buffer delete | `<C-s>x`           | `<M-x>`         | TODO                 | TODO                 | `x`                     | TODO
Shutdown      | `<C-s>q`           | `<M-q>`         | `:qa[ll]`            | `:qa[ll]`            | `:qa[ll]`               | TODO

Hint

* `<C-S-hoge>`のような3キー同時押しは、cVim, Cmder, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* Cmderは使わない(tmux on windows(msys2)を使う)
* CmderのPasteが微妙(他と合ってない)
* RLoginはやめて、Cmderをsshクライアントとしたい

### Tools color unity

Tools   | dark/light | color
---     | ---        | ---
Vim     | dark       | hybrid
GVim    | dark       | hybrid
tmux    | dark       | default
Cmder   | dark       | Tomorrow-Night
Eclipse | light      | default(light)

Hint

* TODO Linux GVimでTomorrow-Nightだと無駄にboldになるキーワードがある(無駄ではない?)
* TODO 同じTomorrow-NightなのにGVimとCmder -> vimでsyntax highlightが異なる

## Services (Web)

* Google Trends
* VISUALGO
* Cacoo
* gitignore.io
* Slack
* ttygif
* moqups
* PromiSEES - Promise visualization playground for the adventurous
* Restler

### Unused

* coggle : Mind map
