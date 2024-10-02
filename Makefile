# Joey Chessor makefile 10/2/24 to link employee progam in one program in a timely mannor.

CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = employee


#Do i link all files threw all or use class and then link them.
all: $(TARGET)


Test code?

#$(#TARGET):main.o Employee.o Officer.o Supervisor.o
# 	$(#CC) 

#Do these need classes to work ? or something else ?
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp -o main.o

Employee:Employee
	$(CC) $(CFLAGS) Employee.cpp -o Employee.o

Officer:Officer
	$(CC) $(CFLAGS) Officer.cpp -o Officer.o

Supervisor: Supervisor
	$(CC) $(CFLAGS) Supervisor.cpp -o Supervisor.o

clean:

	$(RM)Employee *.o *~
	$(RM)Officer *.o *~
	$(RM)Supervisor *.o *~

  #TEST ME 
        #rm -f *.o *~ $(#TARGET)
