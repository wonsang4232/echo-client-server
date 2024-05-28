all: echo-client echo-server

echo-client.o: echo-client.cpp

echo-server.o: echo-server.cpp

echo-client: echo-client.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

echo-server: echo-server.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f echo-client echo-server *.o
