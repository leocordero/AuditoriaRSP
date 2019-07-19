#!/usr/local/bin/perl5
##use strict;
use warnings;
use lib "/home/lchaconz/";
use lib "/usr/local/lib/perl5/";
use XML::Parser;
use POSIX qw(strftime);
#$ENV{'PATH'} = "/opt/CSCOossh/bin:/opt/CSCOossh/man:/usr/bin:/usr/sbin:/usr/openwin/bin:/usr/local/bin:/usr/cisco/bin";

#############
# Variables #
#############
my $routersFile = "./routers.txt";
my $outputCommandsDirectory = "./logs/";
my $commandsFile = "./commands.txt";
my $secondServerUser = "soporte_cisco";
my $secondServerPassword = "xQM5CCrvAF";
#my $thirdServerUser = "ana371";     
#my $thirdServerPassword = "ana371";

my $thirdServerUser = "root";     
my $thirdServerPassword = "cisco123";

my $routerUser = "ampujana";
my $routerPassword = "wgn&p0J5";
my $enablePassword = "NO";

my $datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
# or for GMT formatted appropriately for your locale:
$datestring = strftime "%e%m%Y", gmtime;

# Remove previous files in the Directory folder file #
######################################################
system("rm -rf logs");
system("mkdir logs");
################################################
# Call getCOM-CE.exp                           #
################################################
print "Inicio Script...\n";
@args = ($routersFile, $outputCommandsDirectory, $commandsFile, $secondServerUser, $secondServerPassword, $thirdServerUser, $thirdServerPassword, $routerUser, $routerPassword, $datestring);
@args = ($routersFile, $outputCommandsDirectory, $commandsFile, $secondServerUser, $secondServerPassword, $thirdServerUser, $thirdServerPassword, $routerUser, $routerPassword, $datestring);
system("./reportRSP.exp", @args);
#print $datestring;
print "DONE!\n"
