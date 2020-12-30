#! /usr/local/bin/perl

use DBI;

#variabelen
$db="SHIPPING";
$host="192.168.56.10:3306";
$user="root";
$password="password";
$pinguin= "pinguin.png";

# connect to MySQL...
my $dbh   = DBI->connect ("DBI:mysql:database=$db:host=$host",
                          $user,
                          $password)
                          or die "Can't connect to database: $DBI:errstr\n";

#prepare the query
my $data = $dbh->prepare( "SELECT first_name, last_name FROM Persoon WHERE personid=1");

$data->execute( );

while (my @row = $data->fetchrow_array( ) ) {
        $retrieve = "@row\n";
}
warn "Problem in retrieving results", $data->errstr( ), "\n"
        if $data->err( );


my ($dir) = ".";
open (HTML,">","$dir/index.html") || die $!;

#-----Building HTML file---------------------------
print HTML "<!DOCTYPE html>
<html>
        <head>
        <title>Shipping Challenge</title>
        </head>";

print HTML "<body>
<h1>Hello $retrieve</h1>
<img src=$pinguin>";
print HTML "</body>
</html>";

close (HTML);
exit;
