# Docker作業メモ

```bash
＃ Dockerイメージビルド
docker build -t [リージョン名]-docker.pkg.dev/[Google Cloud プロジェクトID]/[リポジトリ名]/[Dockerイメージ] .

# 動作確認用
docker run -p 8000:8000 --env-file .env [リージョン名]-docker.pkg.dev/[Google Cloud プロジェクトID]/[リポジトリ名]/[Dockerイメージ]

# Artifact Registryへpush
docker push [リージョン名]-docker.pkg.dev/[Google Cloud プロジェクトID]/[リポジトリ名]/[Dockerイメージ]
```