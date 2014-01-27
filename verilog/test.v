module DDSAnalyser;
   /* Make a regular pulsing clock. */
   reg clk = 0;
   wire [15:0] out;
   reg [31:0] freq = 16;
   reg [31:0] ifreq = 128;

   always #0.5 clk = !clk;

   dds c1 (clk,ifreq,freq,out);

   initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0,clk);
      $dumpvars(1,freq);
      $dumpvars(2,ifreq);
      $dumpvars(3,out);
      #2560 $finish;
   end
endmodule // DDSAnalyser
