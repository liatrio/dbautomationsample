# Database Deployment Automation examples

This is an example program for doing database deployment automation.
It is supposed to be a cut down example solution for a number of best practice scenarios within
the Release Engineering/DevOps space.

This project uses:
	$ Vagrant for easy development environment provisioning
	$ Chef for environment configuration
	$ MySQL database
	$ Flyway Database Migration Tool (http://flywaydb.org/) for automated database version updates


**Note: This repository requires Ruby 1.9.x.**

## Getting Started

    $ librarian-chef install
    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant/databasetesting/maven/sampledb1
    $ mvn compile flyway:migrate

## Testing


## License

Just use it. If you can make it better please do.
