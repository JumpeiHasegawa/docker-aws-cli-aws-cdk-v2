# aws-cdk-v2

# Usage

Copy the `.aws.env.dev` to create `.aws.env.`

`cp .aws.env.dev .aws.env`

Set the access key, secret key, etc.
for the AWS account to be used in .aws.env.

```
# aws cli config
AWS_DEFAULT_REGION=
AWS_CONFIG_FILE=
# aws cli credentials
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
```

Build and run the container

`docker-compose build`
`docker-compose run app`

When the container starts,
bash is running, so create a cdk project

`cdk bootstrap`
`cdk init app --language=typescript`
`cdk synth`
`cdk deploy`
