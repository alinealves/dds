module DDSAnalyser;
   /* Make a regular pulsing clock. */
   reg clk = 0;
   wire [15:0] out;
   reg [15:0] freq = 1;
   reg [15:0] ifreq = 128;

   always #1 clk = !clk;

   dds c1 (clk,ifreq,freq,out);

   initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0,clk);
      $dumpvars(1,freq);
      $dumpvars(2,ifreq);
      $dumpvars(3,out);
      #1000 $finish;
   end
endmodule // DDSAnalyser
