# sh print-logs.sh

# Global
alias awslocal="aws --endpoint-url=http://localhost:4566"

# CloudWatch
APP_NAME=serverless-localstack-example
LOG_GROUP=$(awslocal logs describe-log-groups \
    | \
    jq -r '.logGroups[].logGroupName' \
    | grep $APP_NAME
)

LOGS=$(awslocal logs describe-log-streams \
        --log-group-name $LOG_GROUP \
        | \
        jq -r '.logStreams[].logStreamName'
)
for log in $(printf '%s\n' "${LOGS[@]}"); do
    echo 'logging' $log
    awslocal logs get-log-events \
        --log-group-name $LOG_GROUP \
        --log-stream-name $log \
        | \
        jq -r '.events[].message'
done

