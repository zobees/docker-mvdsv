.PHONY: builder build buildershell shell clean
	
PROJECT=mvdsv
	
build: builder
	docker build -t zobees/$(PROJECT) .

builder:
	docker build -t zobees/$(PROJECT)-build build
	docker run --rm -it -v $(PWD)/build/mount:/build -v $(PWD)/files/qw:/qw zobees/$(PROJECT)-build

buildershell:
	docker build -t zobees/$(PROJECT)-build build
	docker run --rm -it -v $(PWD)/build/mount:/build -v $(PWD)/files/qw:/qw zobees/$(PROJECT)-build bash -l

shell:
	docker run --rm -it zobees/$(PROJECT) bash -l

clean:
	docker rmi zobees/$(PROJECT)-build
	docker rmi zobees/$(PROJECT)

run:
	docker run --rm -it zobees/$(PROJECT)

default: build