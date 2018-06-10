include stdlib                       # Make sure the standard functions are available

$deployment_zone = lookup('deployment_zone', {default_value => 'undefined'})
#
# This is the schedule used for applying patches.
#
schedule { 'maintenance':
  range  => "00:00 - 23:59"  # Change to your requirements
}

lookup('role', {'merge' => unique,}).include
