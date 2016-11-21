IMG = bsorahan/tesserocr

clean:
	rm -rf .image

image: .image

.image: Dockerfile
	@docker build -t $(IMG) .
	@touch $@

push: .image
	@docker push $(IMG)

.PHONY: clean image push
