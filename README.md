## minimum-sqare-law
このコマンドはx,yの2個以上の座標から最小値二乗法に基づく、n次関数の係数を決定するものです。
2つ以上の座標を入力し、求めたい関数の次数nを入力することで求めることができます。
## 実行環境
- ubuntu24.04LTS
- python
   - 3.10~3.14
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
printfの中身は左から順番にx座標の点,y座標の点,求めたい関数の次数です。<br>
改行コード\nでx,y,次数それぞれを区切っています。<br>
今回の場合(1,1),(2,2),(3,3)から最小二乗法における1次関数の係数を求めています。
