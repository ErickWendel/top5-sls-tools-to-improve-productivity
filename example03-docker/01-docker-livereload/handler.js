'use strict';

module.exports.hello = async event => {
  console.log('found', JSON.stringify(event, null, 2))
  return {
    statusCode: 200,
    body: 'Hey dude!',
  };

  // Use this code if you don't use the http event with the LAMBDA-PROXY integration
  // return { message: 'Go Serverless v1.0! Your function executed successfully!', event };
};
