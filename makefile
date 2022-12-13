region=eu-west-1
profile=aa-sandbox
capabilities=CAPABILITY_NAMED_IAM
create=aws cloudformation create-stack --region $(region) --profile $(profile) 

default:
	@echo "No default"

createcf:
	$(create) --template-body file://cloudformation/template.yaml --stack-name anaisthatyou --parameters file://cloudformation/params.json