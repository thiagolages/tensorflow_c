CXX17 = $(CXX) -std=c++17
PNGFLAGS = `pkg-config --cflags libpng`

TF = -L${HOME}/tensorflow_c/tensorflow/lib -ltensorflow

LIBS = -lm -pthread `pkg-config --libs libpng`

PROGS =  test save_png_test

all: $(PROGS)

tf_test:
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) src/test.cpp -lstdc++fs -o test $(TF) $(LIBS)

tf_save_png:
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) src/save_png.c -lstdc++fs -o save_png $(TF) $(LIBS)

clean:
	/bin/rm -f $(PROGS) *.o *~  
