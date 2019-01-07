IMAGE_PREFIX := russellcardullo
IMAGE := $(IMAGE_PREFIX)/ipk

define build
@docker build \
  -t $(IMAGE):$(1) \
  --build-arg block_size=$(2) \
  --build-arg block_count=$(3) \
  .
endef

all: image1K image1M

image1K:
	$(call build,1k,1000,1)

image1M:
	$(call build,1m,1000,1000)

push:
	docker push $(IMAGE):1m; \
	docker push $(IMAGE):1k;

.PHONY: all image1K image1M push
