init:
	terraform init 
apply:
	terraform apply

delclusternodes:
	gcloud container clusters resize tf-jx-fond-mantis --node-pool default-pool --num-nodes 0 --zone us-central1-a
addclusternodes:
	gcloud container clusters resize tf-jx-fond-mantis --node-pool default-pool --num-nodes 3 --zone us-central1-a
