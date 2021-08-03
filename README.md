# Serverless Deploy Action

Github Action to deploy serverless applications on AWS.

> This action was implemented to be used with the [serverless/aws-nodejs-typescript](https://github.com/serverless/serverless/tree/master/lib/plugins/create/templates/aws-nodejs-typescript) template.

### Example usage
```yml
  - name: Deploy Severless
    uses: hdev14/sls-deploy-action@main
    with:
      awsAccessKeyID: ${{ secrets.AWS_ACCESS_KEY_ID }}
      awsSecretAccessKey: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      stage: "dev"
      region: "us-east-1"
```

It's important to add in the serverless config file, the folowing lines within the context of provider

```yml
  stage: "${opt:stage, 'dev'}"
  region: "${opt:region, 'sa-east-1'}"
```

