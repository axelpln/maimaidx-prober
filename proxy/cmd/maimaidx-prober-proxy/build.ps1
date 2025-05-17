Set-Location -Path $PSScriptRoot
$version = "1.3.0"
$filename = "maimaidx-prober-proxy-windows-$version.exe"
$env:CGO_ENABLED = "1"
$env:GOOS = "windows"
$env:GOARCH = "amd64"
go build -ldflags "-X main.version=$version" -o $filename
$filename = "maimaidx-prober-proxy-mac-$version"
$env:CGO_ENABLED = "0"
$env:GOOS = "darwin"
$env:GOARCH = "amd64"
go build -ldflags "-X main.version=$version" -o $filename
$filename = "maimaidx-prober-proxy-linux-$version"
$env:CGO_ENABLED = "0"
$env:GOOS = "linux"
$env:GOARCH = "amd64"
go build -ldflags "-X main.version=$version" -o $filename