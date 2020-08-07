BUCKETNAME=test
FILE_PATH='package.json'
alias awslocal="aws --endpoint-url=http://localhost:4566"

awslocal s3 mb s3://$BUCKETNAME
awslocal s3 ls s3://$BUCKETNAME
awslocal s3 cp $FILE_PATH s3://$BUCKETNAME