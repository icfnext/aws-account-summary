echo off

echo %date% %time%
echo .
echo .
echo . API Gateway
aws apigateway get-rest-apis --output json | grep "name"

echo .
echo .
echo . Cloudfront
aws cloudfront list-distributions --output json| grep "DomainName"

echo .
echo .
echo . Cloudwatch
aws logs describe-log-groups --output json | grep "logGroupName"

echo .
echo .
echo . Dynamodb
aws dynamodb list-tables --output json

echo .
echo .
echo . Running EC2 instance
aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"  --output json | grep "KeyName"

echo .
echo .
echo . Elasticsearch Domains
aws es list-domain-names --output json | grep "DomainName"

echo .
echo .
echo . Firehose
aws firehose list-delivery-streams --output json 

echo .
echo .
echo . Lambdas
aws lambda list-functions --output json | grep "FunctionName type"

echo .
echo .
echo . RDS
aws rds describe-db-instances --output json | grep "DBName"

echo .
echo .
echo . S3 Buckets
 aws s3api list-buckets --output json | grep "Name"

echo .
echo .
echo . Sagemaker
aws sagemaker list-notebook-instances  --output json | grep "NotebookInstanceName"

echo .
echo .
echo . Secretsmanager
aws secretsmanager list-secrets  --output json | grep  "Name"

echo .
echo .
echo . SQS
aws sqs list-queues --output json

echo .
echo .
echo . Users
aws iam list-users --output json | grep "UserName"


echo on
