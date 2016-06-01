FC = gfortran
FFLAGS = -DGFORTRAN
PROG = h1d_calc
OBJS = hydrus.o \
    hyster.o \
    input.o \
    material.o \
    output.o \
    sink.o \
    solute.o \
    temper.o \
    time.o \
    watflow.o

%.o: %.f
	$(FC) $(FFLAGS) -c $<

$(PROG) : $(OBJS)
	$(FC) $(FFLAGS) -o $@ $(OBJS)

clean :
	$(RM) $(OBJS)
	$(RM) $(PROG)

.PHONY : clean
