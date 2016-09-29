#!/bin/bash

docker cp spam.eml freeposte_imap_1:/tmp/
docker-compose exec imap cp /var/lib/dovecot/before.sieve /tmp/before.sieve
docker-compose exec imap sieve-test /tmp/before.sieve /tmp/spam.eml
