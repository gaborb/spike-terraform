SHELL=/bin/sh
.PHONY: test

test:
	echo '{"config_json":"config.json"}' | ./get_customers_to_projects_mapping.sh