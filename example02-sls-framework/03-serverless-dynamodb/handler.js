'use strict';
const AWS = require('aws-sdk')
const DynamoDB = new AWS.DynamoDB({
  endpoint: 'http://localhost:4566'
})

module.exports.hello = async event => {
  const allData = await DynamoDB.scan({
    TableName: 'Heroes',
  }).promise()

  return {
    statusCode: 200,
    body: JSON.stringify(allData),
  };

};
