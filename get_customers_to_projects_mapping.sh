#!/usr/bin/env bash
eval "$(jq -r '@sh "CONFIG_JSON=\(.config_json)"')"
jq 'reduce .projects[] as $project ({}; . + reduce $project.customers[] as $customer ({}; . + {($customer.id): $project.id}))' $CONFIG_JSON