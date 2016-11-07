IMG = bsorahan/tesserocr

clean:
	rm -rf .image

image: .image

.image: Dockerfile
	@docker build -t $(IMG) .
	@touch $@

push: .image
	@docker push bsorahan/tesserocr

.PHONY: clean image push
