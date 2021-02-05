module github.com/jenkins-x-plugins/jx-stash

require (
	github.com/fatih/color v1.10.0 // indirect
	github.com/jenkins-x/jx-helpers/v3 v3.0.74
	github.com/jenkins-x/jx-logging/v3 v3.0.3
	github.com/kr/pretty v0.2.1 // indirect
	github.com/spf13/cobra v1.1.1
	github.com/stretchr/testify v1.6.1
	golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
)

replace (
	github.com/jenkins-x/jx-helpers/v3 => github.com/jenkins-x/jx-helpers/v3 v3.0.14
	github.com/tektoncd/pipeline => github.com/jenkins-x/pipeline v0.0.0-20201002150609-ca0741e5d19a
	k8s.io/client-go => k8s.io/client-go v0.19.2
)

go 1.15
