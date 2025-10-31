# Build all versions
all: image image_pthreads image_openmp

# Original version
image: image.c image.h
	gcc -g image.c -o image -lm

# Pthreads version
image_pthreads: image_pthreads.c image.h
	gcc -g image_pthreads.c -o image_pthreads -lm -lpthread

# OpenMP version
image_openmp: image_openmp.c image.h
	gcc -g image_openmp.c -o image_openmp -lm -fopenmp

# Clean
clean:
	rm -f image image_pthreads image_openmp output.png
