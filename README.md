# Bitcoin price Resource for Concourse

Reads the Bitcoin price and passes it to [Concourse](https://concourse.ci/).

## Installing

Add the resource type to your pipeline:

```yaml
resource_types:
- name: bitcoinprice
  type: docker-image
  source:
    repository: gbvanrenswoude/concourse-bitcoinprice-resource
```

## Source Configuration

## Behavior

### `check`: Check the current price

### `in`: Delivers the current price

### `out`: Not Supported

#### Parameters

None

## Example config

### In

Define the resource:

```yaml
resource_types:
- name: bitcoinprice
  type: docker-image
  source:
    repository: gbvanrenswoude/concourse-bitcoinprice-resource

resources:
- name: current-price
  type: bitcoinprice

```

Add to job:

```yaml
jobs:
  # ...
  plan:
  - get: current-price
    params:
      whole: true

```
