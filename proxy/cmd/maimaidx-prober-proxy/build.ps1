Set-Location -Path $PSScriptRoot
$version = "1.3.0"
$filename = "maimaidx-prober-proxy-windows-$version.exe"
go env -w CGO_ENABLED=1
go env -w GOOS=windows
go env -w GOARCH=amd64
go build -ldflags "-X main.version=$version" -o $filename
$filename = "maimaidx-prober-proxy-mac-$version"
go env -w CGO_ENABLED=0
go env -w GOOS=darwin
go env -w GOARCH=amd64
go build -ldflags "-X main.version=$version" -o $filename
$filename = "maimaidx-prober-proxy-linux-$version"
go env -w CGO_ENABLED=0
go env -w GOOS=linux
go env -w GOARCH=amd64
go build -ldflags "-X main.version=$version" -o $filename