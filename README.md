## This is the answer for the test

Section 1
1. `section_01/check_docker.sh`
2. `section_01/check_docker.sh`

Section 2

3. Dockerfile: `section_02/Dockerfile`
4. Build and run

a) docker compose up -d --build

5. Dockercompose: `section_2/docker-compose.yaml`

Section 3

6. Yaml file, generated `section_03/flask-deployments.yaml`
7. `section_03/kubernetes/flask-service.yaml`
8. `section_03/kubernetes/flask-service.yaml`
9. `section_03_helm/tdcx-python/values.yaml`

10. Deployment process

a) kubectl apply -k kubernetes
b) kubectl get pods
c) kubectl logs pods-id-manually-copied
d) kubectl scale deployment apps --replicas=5

Bonus

11. `section_two/cronjob.yaml`
12. A few thing i will do better

a) Add monitoring on the cluster, maybe something with opentelemetry
b) Use secret, i would think a proper secret store like vault might be a good idea
c) Limit access to cluster, only system use can deploy e.g CI system

