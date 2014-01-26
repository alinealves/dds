// CCSL - philipsDDS

module dds (clk,ifreq,freq,out);
   input clk;
   input [15:0] freq, ifreq;
   output [15:0] out;

   wire clk;
   wire signed [15:0] out;
   wire [15:0] freq,ifreq;

   reg [2:0] counter = 0;
   reg [15:0] div = 0;
   reg [15:0] cycles;

   wire signed [15:0] sin [7:0];
   assign sin [0] = 0;
   assign sin [1] = 23170;
   assign sin [2] = 32768;
   assign sin [3] = 23170;
   assign sin [4] = 0;
   assign sin [5] = -23170;
   assign sin [6] = -32768;
   assign sin [7] = -23170;

   always @(posedge clk) begin
      cycles <= (freq*ifreq)/8; // 8 = tamanho da tabela (2^n) :. n=num de bits

      div <= div+1;

      if (div >= cycles-1) begin // N cycles - 1
	 div <= 0;
	 counter <= counter+1;
      end
   end
   
   assign out = sin[counter];
endmodule
