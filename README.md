# Helm Charts for Blockstack Gaia Hub

[Gaia](https://github.com/blockstack/gaia) is a decentralized high-performance storage system for blockstack.

# Basic Install

This will not be usable outside of the kubernetes cluster, but can be used for testing.

```bash
helm install ./ --wait
```

# Example Production Install

Copy `values.yaml` to `values/[something].yaml` and modify it as needed.

There are examples for [aws](./example_values/aws.yaml) and [disk](./example_values/disk.yaml). The disk type example includes an nginx based read endpoint.

Then install with a namespace and human readable name:
```bash
helm install --namespace disk-gaia-hub --name gaia-disk -f values/disk.yaml ./ --wait
```

```bash
helm install --namespace aws-gaia-hub --name gaia-aws -f values/aws.yaml ./ --wait
```