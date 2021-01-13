module github.com/jenkins-x-plugins/jx-stash

require (
	github.com/cpuguy83/go-md2man v1.0.10
	github.com/hashicorp/vault v1.2.3 // indirect
	github.com/jenkins-x/gen-crd-api-reference-docs v0.1.6 // indirect
	github.com/jenkins-x/go-scm v1.5.208 // indirect
	github.com/jenkins-x/jx-api/v3 v3.0.3
	github.com/jenkins-x/jx-gitops v0.0.519 // indirect
	github.com/jenkins-x/jx-helpers/v3 v3.0.55
	github.com/jenkins-x/jx-kube-client/v3 v3.0.1
	github.com/jenkins-x/jx-logging/v3 v3.0.2
	github.com/jenkins-x/jx-pipeline v0.0.76
	github.com/jenkins-x/jx-secret v0.0.205
	github.com/jenkins-x/lighthouse v0.0.906 // indirect
	github.com/mpontillo/tap13 v1.0.2
	github.com/pkg/errors v0.9.1
	github.com/spf13/cobra v1.1.1
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.6.1
	github.com/tektoncd/pipeline v0.16.3
	go.mozilla.org/sops v0.0.0-20190912205235-14a22d7a7060 // indirect
	golang.org/x/build v0.0.0-20190111050920-041ab4dc3f9d // indirect
	k8s.io/apimachinery v0.20.1
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
)

replace (
	github.com/jenkins-x/jx-helpers/v3 => github.com/jenkins-x/jx-helpers/v3 v3.0.14
	github.com/tektoncd/pipeline => github.com/jenkins-x/pipeline v0.0.0-20201002150609-ca0741e5d19a
	k8s.io/client-go => k8s.io/client-go v0.19.2
)

go 1.15
