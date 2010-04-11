all: generate compile

compile:
	gcc \
		-shared \
		-I /usr/include/python2.6/ -l python2.6 \
		-o xmlserialize.so \
		xmlserialize.c

generate:
	cython xmlserialize.py

gen: generate

