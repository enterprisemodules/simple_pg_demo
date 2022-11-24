[![Enterprise Modules](https://raw.githubusercontent.com/enterprisemodules/public_images/master/banner1.jpg)](https://www.enterprisemodules.com)
# Demo Puppet Postgres implementation

This repo contains a demonstration of a simple Postgres database installation. It uses the [`pg_profile`](https://forge.puppet.com/enterprisemodules/pg_profile) module to get a quick and easy start.

The name of the node indicates which version of Postgre will be installed in it i.e. pg11 has version 11 This demo is ready for Puppet 5 and higher,

## Starting the nodes masterless

All nodes are available to test with Puppet masterless. To do so, add `ml-` for the name when using vagrant:

```
$ vagrant up <ml-pg10|ml-pg11|ml-pg12|ml-pg13|ml-pg14|ml-pg15|ml-pgmulti>
```

## A multi-version, multi-instance example

The latest versions of the modules also support installing multiple versions and multiple instances per node. To run that example use:

```
$ vagrant up ml-multi
```


## Starting the nodes with PE

You can also test with a Puppet Enterprise server.  For the `pe-server` to run you need to have file `./modules/software/files/puppet-enterprise-2021.7.1-el-8-x86_64/puppet-enterprise-installer`. You can download the Puppet Enterprise binary from the Puppet Website.

Start the VM's, add `pe-` for the name when using vagrant:

```
$ vagrant up pe-pgserver
$ vagrant up <pe-pg10|pe-pg11|pe-pg12|pe-pg13|pe-pg14|pe-pg15|pe-pgmulti>
```

## ordering

You must always use the specified order:

1. pgserver
2. <pe-pg10|pe-pg11|pe-pg12|pe-pg13|pe-pg14"pe-pg15>

