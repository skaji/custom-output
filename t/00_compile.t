use strict;
use Test::More 0.98;

use_ok $_ for qw(
    App::CustomOutput
);

is system($^X, "-wc", "bin/custom-output"), 0;

done_testing;

