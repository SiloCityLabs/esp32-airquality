.PHONY: help
SHELL := /bin/bash

CONFIG_PATH = esphome-v1.yaml

# The default target will display help
help:
	@echo "Available targets:"
	@echo
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@echo

setup: ## Setup the environment
	rm -rf .venv && \
	python3 -m venv .venv && \
	source .venv/bin/activate && \
	pip install esphome

config: ## Generate the configuration
	source .venv/bin/activate && \
	esphome config esphome-v1.yaml && \
	esphome config esphome-c6.yaml

build-c3: ## Build the v1 (ESP32-C3) firmware
	source .venv/bin/activate && \
	esphome compile esphome-v1.yaml
	BUILD_DIR=$$(find .esphome/build/ -maxdepth 1 -type d | grep -v "^.esphome/build/$$" | head -n 1); \
	echo "Detected build directory: $$BUILD_DIR"; \
	cp $$BUILD_DIR/.pioenvs/*/firmware.factory.bin firmware-v1.bin

build-c6: ## Build the c6 (ESP32-C6) firmware
	source .venv/bin/activate && \
	esphome compile esphome-c6.yaml
	BUILD_DIR=$$(find .esphome/build/ -maxdepth 1 -type d | grep -v "^.esphome/build/$$" | head -n 1); \
	echo "Detected build directory: $$BUILD_DIR"; \
	cp $$BUILD_DIR/.pioenvs/*/firmware.factory.bin firmware-c6.bin

flash-c3: ## Flash the firmware to test device
	source .venv/bin/activate && \
	esphome upload esphome-v1.yaml --device /dev/ttyACM0

flash-c6: ## Flash the firmware to test device
	source .venv/bin/activate && \
	esphome upload esphome-c6.yaml --device /dev/ttyACM0
