CXX17 = $(CXX) -std=c++17
PNGFLAGS = `pkg-config --cflags libpng`
#HOME=/home/pascual # not necessay

# WSQINC = -I/${HOME}/wsq-lib/inc
# WSQLIB = -L/${HOME}/wsq-lib/lib -lgrwsq

WSQINC = -I/${HOME}/lib-wsq/inc
WSQLIB = -L/${HOME}/lib-wsq/lib -lgrwsq


GINGER = ginger-devel

#TF = -L${HOME}/$(GINGER)/fnet/tensorflow -ltensorflow
#TF = -L/home/pascual/tensorflow15/lib -ltensorflow
TF = -L${HOME}/tf_c/tensorflow/lib -ltensorflow

INCS = -I${HOME}/${GINGER}/inc -I. -I${HOME}/${GINGER}/tools
LIBS_DIR = ${HOME}/${GINGER}/lib

LITTLE_INC = -I${HOME}/littlefinger
LITTLE_LIB = ${HOME}/littlefinger/liblittlefinger.a

LIBS = -lm -pthread `pkg-config --libs libpng` $(LIBS_DIR)/libginger.a $(LITTLE_LIB)


PROGS =  elft test_extract rank_statistic

all: $(PROGS)


elft: libelft.cpp
	$(CXX17) $(APP_CFLAGS) -c libelft.cpp $(INCS) 


test_extract: test_extract.cpp
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) elft_griaule.cpp test_extract.cpp extract.cpp loadimg.cpp util.cpp  libelft.o -lstdc++fs $(INCS) $(WSQINC) $(LITTLE_INC) -o test_extract  $(WSQLIB) $(LIBS)  $(TF) 

rank_statistic: rank_statistic.cpp
	$(CXX17) $(APP_CFLAGS) rank_statistic.cpp -o rank_statistic

tf_test:
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) test.cpp ../elft_griaule/loadimg.cpp ../elft_griaule/util.cpp  ../elft_griaule/libelft.o -lstdc++fs $(INCS) $(WSQINC) $(LITTLE_INC) -o test  $(WSQLIB) $(LIBS)  $(TF) 

tf_test2:
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) test.cpp ../elft_griaule/libelft.o -lstdc++fs $(INCS) $(WSQINC) $(LITTLE_INC) -o test2  $(WSQLIB) $(LIBS)  $(TF) 

save_png_test:
	$(CXX17) $(APP_CFLAGS) $(PNGFLAGS) save_png.c ../elft_griaule/loadimg.cpp ../elft_griaule/util.cpp  ../elft_griaule/libelft.o -lstdc++fs $(INCS) $(WSQINC) $(LITTLE_INC) -o save_png  $(WSQLIB) $(LIBS)  $(TF) 



clean:
	/bin/rm -f $(PROGS) *.o *~  
