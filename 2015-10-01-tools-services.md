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

Commands      | Vim                   | Vrapper (Eclipse) | cVim (Crhome)  | tmux               | Cmder           | RLogin
---           | ---                   | ---               | ---            | ---                | ---             | ---
Cut           | `x`                   | `<C-x>`           | `n/a`          | `n/a`              | n/a             | ``
Copy          | `y`                   | `<C-c>`           | `n/a`          | `<C-b>[`           | n/a(mouse only) | ``
Paste         | `p`                   | `<C-v>`           | `n/a`          | `<C-b>]`           | `<A-v>`         | ``
Tab move      | `g{t,T}`              | `-`               | `g{t,T}`,`K,R` | `<C-b>{p,n}`       | ``              | TODO
Tab open      | `:tabedit`            | ``                | `<C-t>`        | `<C-b>c`           | `<C-t>`         | TODO
Pain move     | `<C-w>{h,j,k,l>`      | `-`               | `n/a`          | `<C-b><AllowKey>,` | ``              | TODO
Pain split    | `<C-w>s`,`:sp\[lit\]` | `-`               | `n/a`          | `<C-b>"`           | ``              | ``
Pain vsplit   | `<C-w>v`,`:vs[plit]`  | `-`               | `n/a`          | `<C-b>%`           | ``              | ``
Pain close    | `<C-w>c`,`:clo[se]`   | `<C-F4>`          | `x`            | `-`                | `<C-w>`         | ``
Pain maximize | `-`                   | `<C-m>`           | `F11`          | `<C-b>z`           | ``              | TODO
Shutdown      | `:qa[ll]`             | `<Alt-F4>`        | `<Alt-F4>`     | `-`                | ``              | TODO

#### After

Commands      | Vim          | Vrapper (Eclipse) | cVim (Chrome) | tmux               | Cmder             | RLogin
---           | ---          | ---               | ---           | ---                | ---               | ---
Cut           | `x`          | `x`               | -             | -                  | n/a               | n/a
Copy          | `y`          | `y`               | `y`           | `<C-s>[`           | n/a(mouse only)   | `<A-c>`
Paste         | `p`          | `p`               | `p`           | `<C-s>]`,`<C-S-v>` | `<A-v>`           | `<A-v>`
Tab move      | `<C-{h,l}>`  | `<C-{h,l}>`       | `<C-{h,l}>`   | -                  | TODO              | TODO
Tab open      | ``           | ``                | ``            | ``                 | ``                | TODO
Pain move     | `s{h,j,k,l>` | `s{h,j,k,l>`      | n/a           | `<C-s>{h,l,j,k}`   | `<C-S-{h,l,j,k}>` | TODO
Pain split    | `sp`         | `sp`              | -             | `<C-s>p`           | `<C-S-p>`         | `<C-S-p>`
Pain vsplit   | `sv`         | `sv`              | -             | `<C-s>v`           | `<C-S-v>`         | `<C-S-v>`
Pain close    | `<C-c>`      | `<C-c>`           | `x`           | `<C-s>c`           | `<C-S-c>`         | `<C-S-c>`
Pain maximize | `<C-t>`      | `<C-t>`           | TODO          | `<C-s>t`           | `<C-S-t>`         | TODO
Shutdown      | `:qa`        | `:qa`             | `:qa`         | `<C-s>q`           | `<C-S-q>`         | TODO

Hint

* `<C-S-hoge>`のような3キー同時押しは、cVim, Cmder, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* RLoginはやめて、Cmderをsshクライアントとしたい
* CmderのPasteが微妙(他と合ってない)

### Tools color unity

Tools   | dark/light | color
---     | ---        | ---
Vim     | dark       | Tomorrow-Night
GVim    | dark       | Tomorrow-Night
tmux    | dark       | default
Cmder   | dark       | Tomorrow-Night
Eclipse | light      | default(light)

Hint

* TODO Linux GVimで無駄にboldになるキーワードがある
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
