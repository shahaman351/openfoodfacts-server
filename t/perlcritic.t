#!/usr/bin/perl -w

use Modern::Perl '2012';

use Test::More;

eval { require Test::Perl::Critic };
plan skip_all => 'T::P::Critic required for this test' if $@;

Test::Perl::Critic->import(-profile => '.perlcriticrc');
Test::Perl::Critic::all_critic_ok('lib', 'cgi', 'scripts');
