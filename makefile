FC= gfortran
FLAGS= -O2 -g

#-----------------------------------------------------------------------
# suffixes
.SUFFIXES: .o .f .F .f90 .F90
.f.o: 
	${FC} -c ${FLAGS} $<
.F.o: 
	${FC} -c ${FLAGS} ${CPPFLAGS} $<
.f90.o: 
	${FC} -c ${FLAGS} $<
.F90.o: 
	${FC} -c ${FLAGS} ${CPPFLAGS} $<



testmin: test_minimize.o minimize.o
	${FC} ${FLAGS} -o $@ test_minimize.o minimize.o
