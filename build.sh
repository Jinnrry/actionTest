CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o t_linux_amd64  main.go

CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build  -o t_windows_amd64.exe  main.go

CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build  -o t_mac_amd64  main.go

CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build  -o t_mac_arm64  main.go

# 整理输出文件
rm -rf output
mkdir output
cd output
mv ../t_* .
cp ../README.md .