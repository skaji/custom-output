package App::CustomOutput;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";



1;
__END__

=encoding utf-8

=head1 NAME

App::CustomOutput - exec command with custom output

=head1 INSTALL

    > curl -LO https://raw.githubusercontent.com/shoichikaji/custom-output/master/bin/custom-output
    > chmod +x custom-output

=head1 SYNOPSIS

    > custom-output --append-time -- perl -v
    [2014-07-12 15:09:08]
    [2014-07-12 15:09:08] This is perl 5, version 20, subversion 0 (v5.20.0) built for x86_64-linux
    [2014-07-12 15:09:08]
    [2014-07-12 15:09:08] Copyright 1987-2014, Larry Wall
    [2014-07-12 15:09:08]
    [2014-07-12 15:09:08] Perl may be copied only under the terms of either the Artistic License or the
    [2014-07-12 15:09:08] GNU General Public License, which may be found in the Perl 5 source kit.
    [2014-07-12 15:09:08]
    [2014-07-12 15:09:08] Complete documentation for Perl, including FAQ lists, should be found on
    [2014-07-12 15:09:08] this system using "man perl" or "perldoc perl".  If you have access to the
    [2014-07-12 15:09:08] Internet, point your browser at http://www.perl.org/, the Perl Home Page.

=head1 DESCRIPTION

L<custom-output|https://github.com/shoichikaji/custom-output/blob/master/bin/custom-output> script allows you to exec a command and customize its output.

Here 'customize' means:

=over 4

=item append time, eg: 2014-07-12 15:09:08

=item append hostname, eg: www.example.com

=item append arbitrary strings, eg: task_name

=item write output to logfile too

=item restrict output by regular expressions

=back

=head2 MOTIVATION

When I run a command which will take a while and whose output is messy,
it is difficult to find out which output is important
or how many steps the command is executed.

This script may solve it.
Let's say your command outputs 'success step NAME' or 'failed step NAME' every end of step.
If you exec your command by

    > custom-output --grep 'success|failed' --logfile my.log -- your-command arg1 arg2

then while the whole output is in C<my.log>, STDOUT/STDERR output restrict lines
that matches C</success|failed/>.

=head1 LICENSE

Copyright (C) Shoichi Kaji.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Shoichi Kaji E<lt>skaji@cpan.orgE<gt>

=cut

