# Helm Charts for gaia-hub

[Gaia](https://github.com/blockstack/gaia) is a decentralized high-performance storage system

# Basic install

This will not be usable outside of the kubernetes cluster, but can be used for testing.

```
helm install ./ --wait
```

# Production install

Copy `values.yaml` to `values/[something].yaml` and modify it to suit your needs.

Then run with a namespace and human readable name:

Examples:

```
helm install --namespace disk-gaia-hub --name gaia-disk -f values/disk.yaml ./ --wait
```

```
helm install --namespace aws-gaia-hub --name gaia-aws -f values/aws.yaml ./ --wait
```
