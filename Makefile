ROOT_DIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: tests coverage

deps:
	composer install --dev && bash $(ROOT_DIR)/vendor/tedivm/dovecottesting/SetupEnvironment.sh

tests:
	bash $(ROOT_DIR)/tests/runTests.sh

coverage:
	php $(ROOT_DIR)/vendor/bin/coveralls -v
