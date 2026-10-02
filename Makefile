conway: life.o main.o
	cc main.o life.o -o conway

%.o: %.c
	cc -o $@ -c $^

clean:
	rm -f conway
	rm -rf *.o

install: conway
	sudo cp conway /usr/local/bin/
