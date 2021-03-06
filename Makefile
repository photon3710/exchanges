FC = gfortran 
PROG = exchanges.x 
FFLAGS = -Og
LIBS = -llapack -lblas
LFLAGS = 

OBJ = parameters.o general.o iomodule.o find_nnbrs.o green_function.o

all: $(PROG)
 
exchanges.x:  $(OBJ) exchanges.o
	$(FC) $(LFLAGS) -o $@ exchanges.o $(OBJ) $(LIBS)

clean:
	rm *.o *.mod
	
%.o: %.f90
	$(FC) -c $(FFLAGS) -o $(*F).o $<
	
	
