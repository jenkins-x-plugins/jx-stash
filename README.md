# jx build controller

[![Documentation](https://godoc.org/github.com/jenkins-x-plugins/jx-stash?status.svg)](https://pkg.go.dev/mod/github.com/jenkins-x-plugins/jx-stash)
[![Go Report Card](https://goreportcard.com/badge/github.com/jenkins-x-plugins/jx-stash)](https://goreportcard.com/report/github.com/jenkins-x-plugins/jx-stash)
[![Releases](https://img.shields.io/github/release-pre/jenkins-x/helmboot.svg)](https://github.com/jenkins-x-plugins/jx-stash/releases)
[![LICENSE](https://img.shields.io/github/license/jenkins-x/helmboot.svg)](https://github.com/jenkins-x-plugins/jx-stash/blob/master/LICENSE)
[![Slack Status](https://img.shields.io/badge/slack-join_chat-white.svg?logo=slack&style=social)](https://slack.k8s.io/)

`jx-stash` watches for `PipelineRun` resources and updates the `PipelineActivity` custom resources to reflect their status.

Also `jx-stash` optionally stores resources and logs to long term storage (e.g. buckets).

## Getting Started

The build controller is included OOTB inside [Jenkins X](https://jenkins-x.io/docs/v3/)

Download the [jx-stash binary](https://github.com/jenkins-x-plugins/jx-stash/releases) for your operating system and add it to your `$PATH`.

## Commands

See the [jx-stash command reference](https://github.com/jenkins-x-plugins/jx-stash/blob/master/docs/cmd/jx-stash.md#jx-stash)

