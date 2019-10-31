#!/bin/sh

echo "<<<<<<<<<<<<<<<<<<< ENV >>>>>>>>>>>>>>>>>>>>"
env
echo "<<<<<<<<<<<<<<<<<<< --- >>>>>>>>>>>>>>>>>>>>"

echo "<<<<<<<<<<<<<<<<<<< GOAL >>>>>>>>>>>>>>>>>>>>"
cat $ATOMIST_GOAL
echo "<<<<<<<<<<<<<<<<<<< ---- >>>>>>>>>>>>>>>>>>>>"

echo "<<<<<<<<<<<<<<<<<<< SECRETS >>>>>>>>>>>>>>>>>>>>"
cat $ATOMIST_SECRETS
#echo "<hidden>"
echo "<<<<<<<<<<<<<<<<<<< ------- >>>>>>>>>>>>>>>>>>>>"

echo '{ "state": "waiting_for_approval", "description": "Finished echo goal" }' > $ATOMIST_RESULT
