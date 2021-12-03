build:
	@docker build -t containersolution/s3fs-fuse-pod .

run:
	@docker run -it containersolution/s3fs-fuse-pod sh

push:
	@docker push containersolution/s3fs-fuse-pod

login:
	@docker login --username containersolution

tag:
	@docker tag containersolution/s3fs-fuse-pod:latest containersolution/s3fs-fuse-pod:1.90
	@docker push containersolution/s3fs-fuse-pod:1.90


all: build login push tag
