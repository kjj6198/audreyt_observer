use warnings;
# use strict;

require HTTP::Request;
use JSON; # import encode_json, decode_json, to_json, from_json
use LWP::UserAgent;
use List::MoreUtils;
use Term::ANSIColor;

my $ua = LWP::UserAgent->new(
  ssl_opts => { verify_hostname => 0 },
  protocols_allowed => ['https'],
);

my $req = HTTP::Request->new(GET => 'https://api.github.com/users/audreyt');
my $res = $ua->request($req);

# json -> hash

sub map_to_profile_data {
  my ($json_str) = @_;
  my $res_hash = from_json($json_str);
  my @keys = qw(html_url followers public_repos login);
  my %profile;
  
  foreach my $key (keys %$res_hash) {
    my $idx = List::MoreUtils::first_index {$_ eq $key } @keys;
    if ($idx != -1){
      $profile{$key} = $res_hash->{$key};
    } 
  }

  return %profile;
}

my %profile = map_to_profile_data($res->content);

sub color_string {
  my ($color, $str) = @_;

  print color($color);
  print $str;
  print "\n";
  print color('reset');
}

color_string("bold blue", "profile of: ");