# Docs
class role::postgres::simple_db()
{

  contain ::profile::base
  contain ::pg_profile::database

  Class['::profile::base']
  -> Class['::pg_profile::database']
}
