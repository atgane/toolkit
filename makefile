.temp := temp

########################################
# include other makefile
########################################

########################################
# public
########################################

PACKAGE_MANAGER := brew
.kubectl := $(shell command -v kubectl 2> /dev/null)
.helm := $(shell command -v helm 2> /dev/null)
.terraform := $(shell command -v terraform 2> /dev/null)
.argocd := $(shell command -v argocd 2> /dev/null)
.awscli := $(shell command -v aws 2> /dev/null)
.eksctl := $(shell command -v eksctl 2> /dev/null)
.k9s := $(shell command -v k9s 2> /dev/null)
.yq := $(shell command -v yq 2> /dev/null)
.jq := $(shell command -v jq 2> /dev/null)

.PHONY: check-tools
check-tools: check-kubectl \
	check-helm \
	check-terraform \
	check-argocd \
	check-awscli \
	check-eksctl \
	check-k9s \
	check-yq \
	check-jq

########################################
# private
########################################

check-kubectl:
	@if [ -z "${.kubectl}" ]; then \
		echo "🤔 kubectl is not installed. Installing kubectl..."; \
		$(PACKAGE_MANAGER) install kubectl; \
	fi
	@echo "😊 kubectl installed!"

check-helm:
	@if [ -z "${.helm}" ]; then \
		echo "🤔 helm is not installed. Installing helm..."; \
		$(PACKAGE_MANAGER) install helm; \
	fi
	@echo "😊 helm installed!"

check-terraform:
	@if [ -z "${.terraform}" ]; then \
		echo "🤔 terraform is not installed. Installing terraform..."; \
		$(PACKAGE_MANAGER) install terraform; \
	fi
	@echo "😊 terraform installed!"

check-argocd:
	@if [ -z "${.argocd}" ]; then \
		echo "🤔 argocd is not installed. Installing argocd..."; \
		$(PACKAGE_MANAGER) install argocd; \
	fi
	@echo "😊 argocd installed!"

check-awscli:
	@if [ -z "${.awscli}" ]; then \
		echo "🤔 awscli is not installed. Installing awscli..."; \
		$(PACKAGE_MANAGER) install awscli; \
	fi
	@echo "😊 awscli installed!"

check-eksctl:
	@if [ -z "${.eksctl}" ]; then \
		echo "🤔 eksctl is not installed. Installing eksctl..."; \
		$(PACKAGE_MANAGER) install eksctl; \
	fi
	@echo "😊 eksctl installed!"

check-k9s:
	@if [ -z "${.k9s}" ]; then \
		echo "🤔 k9s is not installed. Installing k9s..."; \
		$(PACKAGE_MANAGER) install k9s; \
	fi
	@echo "😊 k9s installed!"

check-yq:
	@if [ -z "${.yq}" ]; then \
		echo "🤔 yq is not installed. Installing yq..."; \
		$(PACKAGE_MANAGER) install yq; \
	fi
	@echo "😊 yq installed!"

check-jq:
	@if [ -z "${.jq}" ]; then \
		echo "🤔 jq is not installed. Installing jq..."; \
		$(PACKAGE_MANAGER) install jq; \
	fi
	@echo "😊 jq installed!"