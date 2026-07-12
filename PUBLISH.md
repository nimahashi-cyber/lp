# 公開手順（GitHub Pages）

このフォルダは git リポジトリとして初期化済み・コミット済みです。
あとは GitHub にリポジトリを作って push → Pages を有効化するだけです。

## 1. GitHub で空のリポジトリを作成
- https://github.com/new
- Repository name: `one-launch-lp`（この名前を前提に下記URLを組んでいます）
- Public を選択
- 「Add a README」などは**チェックしない**（空のまま作成）

## 2. リモート登録して push
PowerShell でこのフォルダにて（`YOURNAME` を自分の GitHub ユーザー名に置換）:

```powershell
git remote add origin https://github.com/YOURNAME/one-launch-lp.git
git branch -M main
git push -u origin main
```

## 3. Pages を有効化
- リポジトリ → Settings → Pages
- Source: **Deploy from a branch**
- Branch: **main** / **/(root)** → Save
- 1〜2分待つと公開されます。

## 4. 公開URL
- サイト（ショーケース）: `https://YOURNAME.github.io/one-launch-lp/`
- 各テンプレのダウンロード:
  - サロン:            `.../one-launch-lp/dl/one-launch-salon.zip`
  - クリニック/コスメ: `.../one-launch-lp/dl/one-launch-clinic-cosme.zip`
  - ショップ:          `.../one-launch-lp/dl/one-launch-shop.zip`
  - スポーツ:          `.../one-launch-lp/dl/one-launch-sports.zip`
  - EV:                `.../one-launch-lp/dl/one-launch-ev.zip`
  - スタンダード:      `.../one-launch-lp/dl/one-launch-standard.zip`

公開URLが確定したら教えてください。LINE の自動応答／リッチメニューの
プレースホルダURL（`https://YOURNAME.github.io/...`）を実URLに差し替えます。

## メモ
- ダウンロードZIPは `build-downloads.ps1` で再生成できます（テンプレ更新時）。
- `dl/` 配下のZIPは git 追跡対象・Pages で配信されます。
- 生成スクリプト・ジョブJSON・`.claude/` は `.gitignore` で公開対象外にしています。
