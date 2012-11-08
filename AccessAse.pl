#!/usr/bin/perl

use DBI;
use DBD::Sybase;
use Data::Dumper;

$dbh = DBI->connect('DBI:Sybase:server=FISK0810;database=pslab', 'sa', 'ngpadmin',
            { RaiseError => 1, AutoCommit => 1});
#$dbh->do($SQL);
$sth = $dbh->prepare("select nid, nnm, nhwtype from node");
$sth->execute();
while (@row = $sth->fetchrow_array) {
    foreach $_ (@row) {
		print $_, "\n";
    }
}

$sth->finish();
$dbh->disconnect();


