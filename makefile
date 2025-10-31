all: image image_pthreads image_openmp

image: image.c image.h
	gcc image.c -o image -lm

image_pthreads: image_pthreads.c image.h
	gcc image_pthreads.c -o image_pthreads -lm -lpthread

image_openmp: image_openmp.c image.h
	gcc image_openmp.c -o image_openmp -lm -fopenmp

clean:
	rm -f image image_pthreads image_openmp output.png
