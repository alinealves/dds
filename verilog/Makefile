all: compile run
	gtkwave wave.vcd
compile:
	iverilog -o dds dds.v test.v
run:
	./dds
