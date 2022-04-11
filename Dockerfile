ARG AWS_CLI_VERSION=2.5.4
ARG AWS_CDK_VERSION=2.20.0

FROM amazon/aws-cli:${AWS_CLI_VERSION}

RUN curl -fsSL https://rpm.nodesource.com/setup_16.x | bash -

RUN yum update -y \
    && yum install -y \
    nodejs \
    && yum clean all \
    && npm install aws-cdk-lib \
    && npm i -g aws-cdk@${AWS_CDK_VERSION}

WORKDIR /aws-cdk-v2/app

ENTRYPOINT [ "/bin/bash" ]
