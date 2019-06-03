echo off

echo %date% %time%
echo *
echo *
echo * API Gateway
call aws apigateway get-rest-apis --output json | findstr "name"

echo *
echo *
echo * Cloudfront
call aws cloudfront list-distributions --output json| findstr "DomainName"

echo *
echo *
echo * Cloudwatch
call aws logs describe-log-groups --output json | findstr "logGroupName"

echo *
echo *
echo * Dynamodb
call aws dynamodb list-tables --output json

echo *
echo *
echo * Running EC2 instance
call aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"  --output json | findstr "KeyName"

echo *
echo *
echo * Elasticsearch Domains
call aws es list-domain-names --output json | findstr "DomainName"

echo *
echo *
echo * Firehose
call aws firehose list-delivery-streams --output json 

echo *
echo *
echo * Lambdas
call aws lambda list-functions --output json | findstr "FunctionName type"

echo *
echo *
echo * RDS
call aws rds describe-db-instances --output json | findstr "DBName"

echo *
echo *
echo * S3 Buckets
call  aws s3api list-buckets --output json | find "Name"

echo *
echo *
echo * Sagemaker
call aws sagemaker list-notebook-instances  --output json | findstr "NotebookInstanceName"

echo *
echo *
echo * Secretsmanager
call aws secretsmanager list-secrets  --output json | findstr  "Name"

echo *
echo *
echo * SQS
call aws sqs list-queues --output json

echo *
echo *
echo * Users
call aws iam list-users --output json | findstr "UserName"


echo on
