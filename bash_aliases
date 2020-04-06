alias gtags='ctags -R --languages=python --exclude=.git --exclude=.hg --exclude=log --exclude=tmp . '
alias gl="git log --pretty=format:'%h %an %s (%cr)'"
alias tf=terraform
alias tfinit='tf init -backend-config="bucket=surlatable-terraform-${ENVIRONMENT}"'
alias tfplan='terraform plan -var-file="${ENVIRONMENT}.tfvars" -compact-warnings'
alias tfapply='terraform apply -var-file="${ENVIRONMENT}.tfvars" -compact-warnings'
alias datamart='psql -h slt-datamart-liftlab.crozrjomskpl.us-east-1.redshift.amazonaws.com -p 5439 -U spatel datamart'
# AWS
alias aws-primary='export AWS_PROFILE=primary'
alias aws-dev='export AWS_PROFILE=dev'
alias aws-test='export AWS_PROFILE=test'
alias aws-prod='export AWS_PROFILE=prod'
alias aws-liftlab='export AWS_PROFILE=liftlab'
alias aws-shipt='export AWS_PROFILE=shipt'
alias aws-profile='echo $AWS_PROFILE'
