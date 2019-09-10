
test : test.o
	gfortran -o test test.o -lgcov

%.o : %.F90
	gfortran -c -fprofile-arcs -ftest-coverage -o $@ $<
