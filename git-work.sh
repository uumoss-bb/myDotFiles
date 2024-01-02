#!/usr/bin/env bash

cd ~/Documents && mkdir TM && cd TM
echo "cd TM"
mkdir titan
mkdir demand
mkdir verifiedfan

git clone https://git.tmaws.io/verifiedfan/postman-collections.git

cd ~/Documents/TM/titan
echo "cd TM/titan"
  mkdir kubernetes

  git clone https://git.tmaws.io/Titan/admin-ui.git
  git clone https://git.tmaws.io/Titan/fan-ui.git
  git clone https://git.tmaws.io/Titan/monoql.git
  git clone https://git.tmaws.io/Titan/prometheus.git
  git clone https://git.tmaws.io/Titan/services.git
  git clone https://git.tmaws.io/Titan/campaign-service.git
  git clone https://git.tmaws.io/Titan/code-service.git
  git clone https://git.tmaws.io/Titan/entry-service.git
  git clone https://git.tmaws.io/Titan/export-service.git
  git clone https://git.tmaws.io/Titan/upload-service.git
  git clone https://git.tmaws.io/Titan/user-service.git

  cd ~/Documents/TM/titan/kubernetes 
  echo "cd titan/kubernetes"
    git clone https://git.tmaws.io/Titan/kubernetes/prometheus.git
    git clone https://git.tmaws.io/Titan/kubernetes/acm-creation.git

cd ~/Documents/TM/demand
echo "cd TM/demand"
  mkdir e2e-tests

  git clone https://git.tmaws.io/demand-capture/demand-widget.git
  git clone https://git.tmaws.io/demand-capture/data-pipeline.git
  git clone https://git.tmaws.io/demand-capture/docs.git
  git clone https://git.tmaws.io/demand-capture/dynamodb.git
  git clone https://git.tmaws.io/demand-capture/elasticache.git
  git clone https://git.tmaws.io/demand-capture/event-url-queue.git
  git clone https://git.tmaws.io/demand-capture/fastly.git
  git clone https://git.tmaws.io/demand-capture/notification-step-functions.git
  git clone https://git.tmaws.io/demand-capture/s3.git
  git clone https://git.tmaws.io/demand-capture/workers.git

  cd ~/Documents/TM/demand/e2e-tests
  echo "cd demand/e2e-tests"
    git clone https://git.tmaws.io/demand-capture/e2e-tests/pipelines.git

cd ~/Documents/TM/verifiedfan
echo "cd TM/verifiedfan"
  mkdir appsync
  mkdir campaign-pipeline
  mkdir attendance-pipeline
  mkdir account-fanscore
  mkdir ccpa
  mkdir e2e-tests
  mkdir tools
  mkdir vf-api

  git clone https://git.tmaws.io/verifiedfan/docs.git
  git clone https://git.tmaws.io/verifiedfan/lib.git
  git clone https://git.tmaws.io/verifiedfan/schedule-worker.git
  git clone https://git.tmaws.io/verifiedfan/workers-template.git
  
  cd ~/Documents/TM/verifiedfan/appsync
  echo "cd verifiedfan/appsync"

    git clone https://git.tmaws.io/verifiedfan/appsync/appsync.git
    git clone https://git.tmaws.io/verifiedfan/appsync/iam-roles.git

  cd ~/Documents/TM/verifiedfan/campaign-pipeline
  echo "cd verifiedfan/campaign-pipeline"
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/archive-s3.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/fanlist-kinesis.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/input-kinesis.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/scoring-s3.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/sms-wave-email-queue.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/sms-wave-step-functions.git
    git clone https://git.tmaws.io/verifiedfan/campaign-pipeline/workers.git

  cd ~/Documents/TM/verifiedfan/attendance-pipeline
  echo "cd verifiedfan/attendance-pipeline"
    git clone https://git.tmaws.io/verifiedfan/attendance-pipeline/workers.git
    git clone https://git.tmaws.io/verifiedfan/attendance-pipeline/events-queue.git

  cd ~/Documents/TM/verifiedfan/account-fanscore
  echo "cd verifiedfan/account-fanscore"
    git clone https://git.tmaws.io/verifiedfan/account-fanscore/workers.git
    git clone https://git.tmaws.io/verifiedfan/account-fanscore/databricks-migration.git

  cd ~/Documents/TM/verifiedfan/ccpa
  echo "cd verifiedfan/ccpa"
    git clone https://git.tmaws.io/verifiedfan/ccpa/delete-fan-queue.git
    git clone https://git.tmaws.io/verifiedfan/ccpa/fan-info-queue.git
    git clone https://git.tmaws.io/verifiedfan/ccpa/keep-private-queue.git
    git clone https://git.tmaws.io/verifiedfan/ccpa/manual.git 
    git clone https://git.tmaws.io/verifiedfan/ccpa/opt-out-queue.git
    git clone https://git.tmaws.io/verifiedfan/ccpa/ccpa-sqs.git
    git clone https://git.tmaws.io/verifiedfan/ccpa/workers.git
    
  cd ~/Documents/TM/verifiedfan/e2e-tests
  echo "cd verifiedfan/e2e-tests"
    git clone https://git.tmaws.io/verifiedfan/e2e-tests/pipelines.git

  cd ~/Documents/TM/verifiedfan/tools
  echo "cd verifiedfan/tools"
    git clone https://git.tmaws.io/verifiedfan/tools/dynamodb.git
    git clone https://git.tmaws.io/verifiedfan/tools/fanlist.git
    git clone https://git.tmaws.io/verifiedfan/tools/scoring.git
    git clone https://git.tmaws.io/verifiedfan/tools/s3.git
    git clone https://git.tmaws.io/verifiedfan/tools/slack.git

  cd ~/Documents/TM/verifiedfan/vf-api
  echo "cd verifiedfan/vf-api"
    git clone https://git.tmaws.io/verifiedfan/vf-api/scores-kinesis.git
    git clone https://git.tmaws.io/verifiedfan/vf-api/workers.git

echo DONE
