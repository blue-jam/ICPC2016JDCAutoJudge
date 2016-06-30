# !/bin/bash

url="http://icpc.iisf.or.jp/past-icpc/domestic2016/judgedata"

if [ $# -lt 1 ]; then
  echo "usage: $0 <ソースコードのディレクトリ>"
  exit 1
fi

dir=$1

for id in A B C D E F G H;
do
  # テストデータのダウンロード
  wget -r -np -nc -nd -P ${id}/tests ${url}/${id}
  i=1
  while [ $i -le 4 ];
  do
    ln -s $id$i ${id}/tests/"$id$i".in 2> /dev/null
    ln -s "$id$i".ans ${id}/tests/"$id$i".diff 2> /dev/null
    i=`expr $i + 1`
  done

  # ソースコードのコピー
  if [ -e ${dir}/${id}.cpp ]; then
    f=`ls "${dir}/${id}.cpp"`
    mkdir ${id}/cppcode
    cp $f "${id}"/cppcode/
    mv "${id}/cppcode/${id}.cpp" ${id}/cppcode/main.cc
    ln -s ../../CPPSOLUTION ${id}/cppcode/SOLUTION
  fi
done
