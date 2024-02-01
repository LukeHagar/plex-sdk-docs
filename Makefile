.PHONY: *

docs:
	rm -rf src || true
	speakeasy generate docs --schema /github/workspace/openapi/openapi_0 --out ./ --langs python,typescript,go,curl --compile

build:
	pnpm run build

run-server:
	$(MAKE) build
	go run server.go