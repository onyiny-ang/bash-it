#!/bin/bash
#
# -binaryanomaly

cite 'about-alias'
about-alias 'kubectl aliases'

# set apt aliases
function _set_pkg_aliases()
{
	if [ -x $(which kubectl) ]; then
		alias k8='kubectl'
		alias k8p='kubectl get pods'
    alias k8d='kubectl get deployments'
    alias k8n='kubectl get nodes'
    alias k8dp='kubectl describe pod'
    alias k8dd='kubectl describe deployment'
    alias k8dn='kubectl describe node'
    alias k8pan='kubectl get pods --all-namespaces'
    alias k8dan='kubectl get deployments --all-namespaces'
	fi
}

_set_pkg_aliases
