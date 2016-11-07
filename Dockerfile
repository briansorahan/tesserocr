FROM		jupyter/base-notebook

USER		root
WORKDIR		/root

RUN		apt-get update
RUN		apt-get install -qq -y gcc g++ make autoconf automake libtool libpng12-dev libjpeg-dev libtiff5-dev zlib1g-dev pkg-config

RUN		wget https://github.com/DanBloomberg/leptonica/archive/v1.71.tar.gz && tar xzf v1.71.tar.gz && cd leptonica-1.71 && chmod +x configure && ./configure && make && make install

RUN		wget https://github.com/tesseract-ocr/tesseract/archive/3.04.01.tar.gz && tar xzf 3.04.01.tar.gz && cd tesseract-3.04.01 && chmod +x configure && ./configure && make && make install

RUN		wget https://github.com/cython/cython/archive/0.25.1.tar.gz && tar xzf 0.25.1.tar.gz && cd cython-0.25.1 && python setup.py install

RUN		pip install --upgrade pip
RUN		pip install tesserocr
