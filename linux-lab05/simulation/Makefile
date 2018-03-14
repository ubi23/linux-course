CC=gcc
objs=main.o simulation.o

simulation: $(objs)
	$(CC) -Og $^ -o $@ -lm

simulation.o: simulation.c
	$(CC) -Og -c $<

main.o: main.c
	$(CC) -Og -c $<

.PHONY: clean
clean:
	rm *.o
