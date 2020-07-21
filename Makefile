init:
	terraform init 
apply:
	terraform apply

resizecluster:
	gcloud container clusters resize tf-jx-fond-mantis --node-pool default-pool  --num-nodes 3
