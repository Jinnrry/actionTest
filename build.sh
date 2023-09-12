CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o t_linux_amd64  main.go


# 整理输出文件
rm -rf output
mkdir output
cd output
mv ../t_* .
cp ../README.md .