my %dict = (
    3 => "Fizz",
    5 => "Buzz",
);

my $output;

for my $i (1..100) {
    $output = "";
    for my $key (sort {$a <=> $b} keys %dict) {
        if ( $i % $key == 0) { $output .= $dict{$key}; }
    }
    if ($output eq "") { $output = $i; }
    print "$output\n";
}
