##
## This simple makefile allows to build RTBkit samples
## you may need to adjust it to your needs.
## 
CPPFLAGS  = -I$(RTBKIT_HOME)/include 
CPPFLAGS += -I$(RTBKIT_HOME)/include/rtbkit/
CPPFLAGS += -I$(RTBKIT_HOME)/include/rtbkit/leveldb/include
CXXFLAGS += -std=c++0x -ggdb -Wno-deprecated-declarations
LDFLAGS   = -Wl,--rpath-link,$(RTBKIT_HOME)/lib -L$(RTBKIT_HOME)/lib 
LDFLAGS  += -Wl,--copy-dt-needed-entries
LDFLAGS  += -Wl,--no-as-needed
LOADLIBES = -lrtbkit -lexception_hook -ltcmalloc -ldl 
EXECS     = multi_agent  data_logger_ex             bidding_agent_console bidding_agent_ex             bid_request_endpoint             adserver_endpoint             integration_endpoints

all: $(EXECS)

clean:
	$(RM) $(EXECS) *.o

.PHONY: all clean
