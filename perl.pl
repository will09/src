#!/usr/bin/perl
use warnings;
#use diagnostics;

# http://search.cpan.org/
print ("------------------a start-----------------\n");
print "Hello, world!\n";

@lines = `perldoc -u -fatan2`; # use ` to run external command.
foreach (@lines) {
	s/\w<([^>]+)>/\U$1/g;
	print;
}

# number operator
print ("---------------number operator --------------\n");
print ("2+3 = ", 2+3,"\n");
print ("5.1-2.4 = ", 5.1-2.4, "\n");
print ("3*12 = ", 3*12, "\n");
print ("14/12 = ", 14/12, "\n");
print ("10.2/0.3 = ", 10.2/0.3, "\n");
print ("10/3", 10/3, "\n");
print ("10%3 =",10%3, "\n");

# string operator
print ("---------------string operator-----------\n");
print ("hello" . "world", "\n");
print ("hello" . ' ' . "world" . "\n");
print ('hello world' . "\n");
print ("fred"x3, "\n");
print ("barney"x(4+1), "\n");
print (5x4.8, "\n");
print ("Z".5*7, "\n");

# variable assignment
print ("---------------variable assignment--------------\n");
$fred = 17;
print ("1 fred = ", $fred, "\n");
$barney = 'hello';
print ("2 barney = ", $barney, "\n");
$barney = $fred+3;
print ("3 barney = fred + 3 => ", $barney, "\n");
$barney = $barney*2;
print ("4 barney = barney * 2 => ", $barney, "\n");

# binary assignment operator
print ("---------------binary assignment operator------------\n");
$fred = $fred+5;
print ("fred = fred + 5 => ", $fred, "\n");
$fred +=5;
print ("fred += 5 => ", $fred, "\n");
$barney = $barney*3;
print ("barney = barney*3 =>", $barney, "\n");
$barney *= 3;
print ("barney *=3 ", $barney, "\n");
$str = "string_1";
print ("str = ", $str, "\n");
$str = $str."_2";
print ("str .= \"_2\" =>", $str, "\n");

# variable interpolation
print ("-------------variable interpolation------------\n");
$meal = "brontosaurus steak";
print ("meal = ", $meal, "\n");
$barney = "fred ate a $meal";
print ("barney = \"fred ate a \$meal\" =>", $barney, "\n");
$barney = 'fred ate a '.$meal;
print ("barney = \'fred ate a \'.\$meal =>", $barney, "\n");
# avoid ambiguity
$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n";
print "fred ate $n ${what}s.\n";
$alef = chr(0x05D0);
print ("chr(0x05D0) = ", $alef, "\n");
$alpha = chr(hex('03B1'));
print ("chr(hex(\'03B1\')) = ", $alpha, "\n");
$omega = chr(0x03C9);
print ("chr(0x03C9) = ", $omega, "\n");
$code_point=ord('?');
print ("ord(\'?\') = ", $code_point, "\n");
print ("x{03B1}x{03C9} = \x{03B1}\x{03C9} \n");












