# URL参考

## HTTPS接続化による不具合

Cloud RunへDockerイメージをデプロイし、Webアプリケーションへアクセスした場合、不具合が発生した。
CSS, JSへのアクセスが不可となっていた。(strict-origin-when-cross-origin)

よく見てみるとhttpプロトコルでアクセスしており、corsで引っかかっていた。
Cloud Runはhttpsプロトコルでアクセスするため、httpsプロトコルでリソースアクセスする必要ある。

[HTTPS化時のリソース対応](https://qiita.com/e_tyubo/items/c25df0c545b1af8494c7)