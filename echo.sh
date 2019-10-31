#!/bin/sh

echo "<<<<<<<<<<<<<<<<<<< ENV >>>>>>>>>>>>>>>>>>>>"
env
echo "<<<<<<<<<<<<<<<<<<< --- >>>>>>>>>>>>>>>>>>>>"

echo "<<<<<<<<<<<<<<<<<<< GOAL >>>>>>>>>>>>>>>>>>>>"
cat $ATOMIST_GOAL
echo "<<<<<<<<<<<<<<<<<<< ---- >>>>>>>>>>>>>>>>>>>>"

echo "<<<<<<<<<<<<<<<<<<< SECRETS >>>>>>>>>>>>>>>>>>>>"
cat $ATOMIST_SECRETS
echo "<<<<<<<<<<<<<<<<<<< ------- >>>>>>>>>>>>>>>>>>>>"

echo '{ "state": "success", "description": "Finished echo goal" }' > /atm/output/result.json
