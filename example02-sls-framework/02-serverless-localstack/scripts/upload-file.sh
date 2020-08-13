# Global
alias awslocal="aws --endpoint-url=http://localhost:4566"

# S3
BUCKETNAME=reports
FILE_PATH=mock.csv
echo "name,number\nErick,123" > $FILE_PATH

awslocal s3 mb s3://$BUCKETNAME
awslocal s3 ls s3://$BUCKETNAME
awslocal s3 cp $FILE_PATH s3://$BUCKETNAME