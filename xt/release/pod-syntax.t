#!perl
# 
# This file is part of Test-Reporter
# 
# This software is copyright (c) 2010 by Authors and Contributors.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use Test::More;

eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;

all_pod_files_ok();