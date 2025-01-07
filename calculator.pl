# calculator.pl
use strict;
use warnings;
use Config;

sub add {
    my ($x, $y) = @_;
    return $x + $y;
}

sub subtract {
    my ($x, $y) = @_;
    return $x - $y;
}

sub multiply {
    my ($x, $y) = @_;
    return $x * $y;
}

sub divide {
    my ($x, $y) = @_;
    return $y == 0 ? "Error! Division by zero." : $x / $y;
}

sub calculator {
    print "$Config::TITLE\n";
    print "Select operation:\n";
    print "1. Add\n";
    print "2. Subtract\n";
    print "3. Multiply\n";
    print "4. Divide\n";

    while (1) {
        print "Enter choice (1/2/3/4): ";
        my $choice = <STDIN>;
        chomp($choice);

        if ($choice =~ /^[1-4]$/) {
            print "Enter first number: ";
            my $num1 = <STDIN>;
            chomp($num1);

            print "Enter second number: ";
            my $num2 = <STDIN>;
            chomp($num2);

            if ($choice == 1) {
                print "$num1 + $num2 = " . add($num1, $num2) . "\n";
            } elsif ($choice == 2 {
                print "$num1 - $num2 = " . subtract($num1, $num2) . "\n";
            } elsif ($choice == 3) {
                print "$num1 * $num2 = " . multiply($num1, $num2) . "\n";
            } elsif ($choice == 4) {
                print "$num1 / $num2 = " . divide($num1, $num2) . "\n";
            }
        } else {
            print "Invalid choice! Please select a valid operation.\n";
        }

        print "Do you want to perform another calculation? (yes/no): ";
        my $next_calculation = <STDIN>;
        chomp($next_calculation);
        last if lc($next_calculation) ne 'yes';
    }
}

calculator();