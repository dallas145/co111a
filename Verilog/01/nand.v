`include "ch01.v"

module nandtest;
reg a,b;
wire ab;

Nand g (a, b, ab);

initial
begin
    a=0;
    b=0;
    $monitor("%4dns Nand: a=%d b=%d out=%d", $stime, a, b, ab);
end

always #50 begin
    b=b+1;
end

always #100 begin
    a=a+1;
end

initial #150 $finish;
endmodule