(cd ..;ls) # これはサブシェルで実行されるので親プロセスはディレクトリを移動しない
{cd ..;ls} # これはカレントシェルで実行されるのでその後のコマンドも影響を受ける
echo `cd ..;ls`

# つまり、グルーピングの実行結果をクォーテーションに代入することもできる。
echo "$(ls;)"

# これはグルーピングの効果が発動しない。ダブルクォートは()を特殊文字として扱わないため。
echo "(ls;)"

echo "${ ls; }" #これはエラーになるが...

exec ls