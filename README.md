# xeyes-docker


## コンテナのビルド
```
cd xeyes-docker  
docker build -t xeyes-docker .
```

<br>
  
## xeyesの実行(xeyes実行後はxをクリックして消して下さい)
```
docker run -it --rm -e DISPLAY=$DISPLAY xeyes-docker
```