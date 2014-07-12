# NAME

App::CustomOutput - exec command with custom output

# INSTALL

    > curl -LO https://raw.githubusercontent.com/shoichikaji/custom-output/master/bin/custom-output
    > chmod +x custom-output

# SYNOPSIS

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

# DESCRIPTION

[custom-output](https://github.com/shoichikaji/custom-output/blob/master/bin/custom-output) script allows you to exec a command and customize its output.

Here 'customize' means:

- append time, eg: 2014-07-12 15:09:08
- append hostname, eg: www.example.com
- append arbitrary strings, eg: task\_name
- write output to logfile too
- restrict output by regular expressions

## MOTIVATION

When I run a command which will take a while and whose output is messy,
it is difficult to find out which output is important
or how many steps the command is executed.

This script may solve it.
Let's say your command outputs 'success step NAME' or 'failed step NAME' every end of step.
If you exec your command by

    > custom-output --grep 'success|failed' --logfile my.log -- your-command arg1 arg2

then while the whole output is in `my.log`, STDOUT/STDERR output restrict lines
that matches `/success|failed/`.

# LICENSE

Copyright (C) Shoichi Kaji.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Shoichi Kaji <skaji@cpan.org>
