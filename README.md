## minimum-sqare-law
このコマンドはx,yの座標を2個以上入力すると最小値二乗法に基づく、n次関数の係数を決定するものです。
2つ以上の座標を入力し、求めたい関数の次数nを入力することで求めることができます。
## 実行環境
- ubuntu24.04
- python3
## セットアップ
```bash
git clone https://github.com/s25c1090mn-web/sakuya.git
cd sakuya
```
このプログラムではNumPyを使用します。<br>
以下のコマンドでインストールしてください。

```bash
sudo apt update
sudo apt install python3-numpy
```

## 実行方法
```bash
printf"1 2 3\n1 2 3\n1" | ./minimum-sqare-law
```
printfの中身は左から順番にx座標の点,y座標の点,求めたい関数の次数です。改行コード\nでx,y,次数それぞれを区切っています。