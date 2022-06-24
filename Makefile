.PHONY: all
all: deps, image

.PHONY: deps
deps:
	$(shell ./deps.sh)

.PHONY: image
image:
	docker build -t uhub.service.ucloud.cn/entropypool/alpine:3.16 .
	# docker push uhub.service.ucloud.cn/entropypool/alpine:3.16
