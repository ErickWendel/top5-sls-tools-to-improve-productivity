'use strict';

module.exports.hello = async event => {
  const [{ s3: { bucket: { name }, object: { key } } }] = event.Records
  const params = { Bucket: name, Key: key }
  console.log('scheduling with bucket data...', JSON.stringify(params))
  return {
    statusCode: 200
  }
};
