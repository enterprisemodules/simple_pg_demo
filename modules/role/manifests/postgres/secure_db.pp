# Docs
class role::postgres::secure_db()
{

  contain ::profile::base
  contain ::pg_profile::secured_database

  Class['::profile::base']
  -> Class['::pg_profile::secured_database']
}
