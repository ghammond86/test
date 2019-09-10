MYFLAGS = -fprofile-arcs -ftest-coverage
LIBS += -lgcov

test : test.o
	gfortran -o test test.o ${LIBS}

%.o : %.F90
	gfortran -c ${MYFLAGS} -o $@ $<
