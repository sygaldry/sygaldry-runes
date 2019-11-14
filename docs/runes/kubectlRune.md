# KubectlRune

## Parameters
* image
    * Docker image used as the KubectlRune ("sygaldry/kubectl-rune" by default)
* version
    * Version of KubectlRune docker image ("latest" by default)
* command
    * Command executed by the kubectl cli (e.g. get, apply, ...)
* args
    * Arguments for command executed by the awscli
* kubeConfigPath
    * Path to kube config file on the host operating system (~/.kube/config by default)
* awsSecretKey
    * Aws secret key used to authenticate to aws
