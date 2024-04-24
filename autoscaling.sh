kubectl autoscale deployment udagram-api-feed --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment udagram-api-user --cpu-percent=70 --min=3 --max=5