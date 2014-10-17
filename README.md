# NAME

perlbrew-cron - Run scripts with cron from your perlbrew environment

# DESCRIPTION

This script will init your perlbrew environment and run perlbrew exec with
your command.

By default this script looks in $PERLBREW_HOME/init for the PERLBREW_ROOT
environment variable. If $PERLBREW_HOME isn't set then it will look in
$HOME/.perlbrew/init. It then includes $PERLBREW_ROOT/etc/bashrc to init the
perlbrew environment.

# SYNOPSIS

Test your environment
  
    ./perlbrew-cron perl -e 'print $]'

Run with a specific perl version and lib
  
    @daily perlbrew-cron --with perl-5.18.1@dev /home/andy/scripts/daily.pl
    
Run all installed perlbrew versions and their local libs
  
  	@weekly perlbrew-cron /home/andy/scripts/weekly.pl

Run script with a non-standard PERLBREW_HOME

	@weekly PERLBREW_HOME=/opt/perlbrew/home perlbrew-cron /home/andy/my_home.pl

# AUTHOR

Andy Gorman agorman@cpan.org

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Andy Gorman.

This is free software; you can redistribute it and/or modify it under the same
terms as the Perl 5 programming language system itself.