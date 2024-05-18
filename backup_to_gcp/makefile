# Variables
PIPELINES_YAML := pipelines.yml
VALUES_YAML := values.yml
TEAM := main
PIPELINE_NAME := gcp-backup

# Targets
.PHONY: all set-pipeline

all: rendered-pipeline set-pipeline

# Generate rendered pipelines YAML
rendered-pipeline: $(PIPELINES_YAML) $(VALUES_YAML)
	ytt -f $(PIPELINES_YAML) -f $(VALUES_YAML) -v team=$(TEAM) > rendered-pipelines.yml

# Set pipeline in Concourse
set-pipeline: rendered-pipelines.yml
	fly -t tutorial set-pipeline -c rendered-pipelines.yml -p $(PIPELINE_NAME)
