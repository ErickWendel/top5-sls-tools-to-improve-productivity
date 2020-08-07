import AWS from 'aws-sdk'

const endpoint = "http://localhost:4566"
const S3 = new AWS.S3({
    s3ForcePathStyle: true,
    endpoint: new AWS.Endpoint(endpoint)
})

await S3.createBucket({
    Bucket: 'myBucket'
}).promise()

const allBuckets = await S3.listBuckets().promise()
console.log('found', allBuckets)