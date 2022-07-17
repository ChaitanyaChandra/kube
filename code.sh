kubectl create deployment hello-world \
  --image=gcr.io/google-samples/hello-app:1.0 \
  --dry-run=client -o yaml > deployment.yaml