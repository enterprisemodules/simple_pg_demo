#
# Create the directories we need for the tablespaces
#
class profile::create_tablespace_dir
{
  file {['/u01', '/u02']:
    ensure => 'directory'
  }

  file {['/u01/tablespaces', '/u02/tablespaces']:
    ensure => 'directory',
    owner  => 'postgres',
    group  => 'postgres',
  }
}
