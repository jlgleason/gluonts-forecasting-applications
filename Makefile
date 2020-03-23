build:
	@echo "Building Image"
	DOCKER_BUILDKIT=1 docker build -t gluonts-apps .

run:
	@echo "Running"
	docker-compose run gluonts-apps

notebook:
	@echo "Starting a Jupyter notebook to with mxnet and AWS GluonTS package" 
	docker-compose run -p 8889:8888 gluonts-apps \
		jupyter notebook --ip=0.0.0.0 \
		--NotebookApp.token='' --NotebookApp.password='' \
		--no-browser --allow-root \
		--notebook-dir="notebooks"