Heroku buildpack: AWS CLI
=========================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) that
allows one to run AWS CLI in a dyno alongside application code.

Usage
-----

Example usage:

    $ heroku buildpacks:add https://github.com/msabev/heroku-buildpack-awscli

    $ heroku config:set AWS_KEY=<aws-access-key>

    $ heroku config:set AWS_SECRET_KEY=<aws-secret-access-key>

    $ heroku config:set AWS_REGION=<default-aws-region>

This buildpack also updates the PATH, so the command can be used directly, e.g.
```
$ aws s3 ls s3:\\bucket-name
``` 
