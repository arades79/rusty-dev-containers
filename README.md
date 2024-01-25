# Rusty Dev Containers
A collection of dev container features designed for working with rust in various contexts.

## Usage
To use a feature from this repository, add it to a devcontainer.json. You can read more about devcontainer features here: https://containers.dev/features


## Compatibility
Note that all these images depend on having the rust feature set up (`ghcr.io/devcontainers/features/rust:1`), as well as using either `debian:latest` or `ubuntu:latest` as the base image since the default devcontainer image causes issues with permissions.

## Available Features
| Feature | OCI Image | Description |
| - | - | - |
| | **Rust Tools** | |
| Cargo Binstall | ghcr.io/lee-orr/rusty-dev-containers/cargo-binstall:0 | Installs [Cargo Binstall](https://github.com/cargo-bins/cargo-binstall) - an alternative to cargo install that will download binaries if they exist, and only build from source if binaries aren't found. You can also specify a `packages` option - which is a comma-separated list of cargo applications you want to install. |
| Cargo Expand | ghcr.io/lee-orr/rusty-dev-containers/cargo-expand:0 | Installs [Cargo Expand](https://github.com/dtolnay/cargo-expand) - a command that prints out the expanded version of a macro, useful when developing macros |
| Cargo Watch | ghcr.io/lee-orr/rusty-dev-containers/cargo-watch:0 | Installs [Cargo Watch](ghcr.io/lee-orr/rusty-dev-containers/cargo-watch:0) - a command that allows rust to watch for file changes and re-build, re-run tests, or even run arbitrary scripts |
| Wasm32-Unknown-Unknown | ghcr.io/lee-orr/rusty-dev-containers/wasm32-unknown-unknown:0 | There already exists a feature for wasm-wasi, but none for wasm32-unknown-unknown, which is useful for building wasm for the browser |
| Wasm Bindgen CLI | ghcr.io/lee-orr/rusty-dev-containers/wasm-bindgen-cli:0 | Installs the [Wasm Bindgen CLI](https://rustwasm.github.io/wasm-bindgen/reference/cli.html) - a command line tool for generating javascript and typescript bindings for Rust WASM |
| Cargo Bundle | ghcr.io/lee-orr/rusty-dev-containers/cargo-bundle:0 | Installs [Cargo Bundle](https://github.com/burtonageo/cargo-bundle) - a tool for wrapping rust executables in OS specific bundles/installers (.deb on linux, .app on Mac/iOS, .msi on Windows) |
| Cargo Mobile |  ghcr.io/lee-orr/rusty-dev-containers/cargo-mobile:0 | Installs [Cargo Mobile](https://github.com/BrainiumLLC/cargo-mobile) - a tool for building & running rust apps on mobile |
| Cargo Make |  ghcr.io/lee-orr/rusty-dev-containers/cargo-make:0 | Installs [Cargo Make](https://sagiegurari.github.io/cargo-make/) - a task runner built in rust |
| Cargo Audit | ghcr.io/lee-orr/rusty-dev-containers/cargo-audit:0 | Installs [Cargo Audit](https://rustsec.org/) - a tool for auditing cargo files for security vaulnerabilities |
| Cargo Deny | ghcr.io/lee-orr/rusty-dev-containers/cargo-deny:0 |  Installs [Cargo Deny](https://rustsec.org/) - a tool for limit usage of particular dependencies |
| Cargo Nexttest |  ghcr.io/lee-orr/rusty-dev-containers/cargo-nextest:0 | Installs [Cargo Nextest](https://nexte.st/) - a powerful test runner for rust |
| Honggfuzz | ghcr.io/lee-orr/rusty-dev-containers/honggfuzz:0 | Installs [Honggfuzz](https://github.com/rust-fuzz/honggfuzz-rs/blob/master/README.md) - a security oriented fuzzer |
| Cargo Web | ghcr.io/lee-orr/rusty-dev-containers/cargo-web:0 | Installs [Cargo Web](https://github.com/koute/cargo-web) - a toolset for client side web |
| sccache | ghcr.io/lee-orr/rusty-dev-containers/sccache:0 | Installs [sccache](https://github.com/mozilla/sccache) - a tool to speed up recompilation by caching previous compilations.|
| Cargo LLVm Cov | ghcr.io/lee-orr/rusty-dev-containers/cargo-llvm-cov:0 | Install [cargo-llvm-cov](https://github.com/taiki-e/cargo-llvm-cov) - a cargo subcommand to easily use LLVM source-based code coverage (-C instrument-coverage).  |
| | **Terminal Tools** | |
| Bacon | ghcr.io/lee-orr/rusty-dev-containers/bacon:0 | Intalls [Bacon](https://github.com/Canop/bacon) - a terminal based rust code checker that can watch & run check, flippy, fmt, and tests in the background |
| Mprocs | ghcr.io/lee-orr/rusty-dev-containers/mprocs:0 | Installs [mprocs](https://github.com/pvolok/mprocs) - a command line tool for running multiple commands in parallel. |
| Zellij | ghcr.io/lee-orr/rusty-dev-containers/zellij:0 | Installs [Zellij](https://zellij.dev/) - a terminal workspace with batteries included. |
Helix | ghcr.io/lee-orr/rusty-dev-containers/helix:0 | Installs the [Helix](https://helix-editor.com/) text editor - a modal text editor written in rust |
| | **WASM Server Frameworks**| |
| Fermyon Spin | ghcr.io/lee-orr/rusty-dev-containers/fermyon-spin:0 | Installs the [Spin CLI](https://developer.fermyon.com/spin/index), allowing building, testing and deploying for Spin-based WASM applications |
| Wasmcloud | ghcr.io/lee-orr/rusty-dev-containers/wasmcloud:0 | Installs Wash - the CLI for [Wasmcloud](https://wasmcloud.com/docs/intro) - a platform for building wasm-based cloud environments. |
| Cosmonic | ghcr.io/lee-orr/rusty-dev-containers/cosmonic:0 | Installs Cosmo - the CLI for [Cosmonic](cosmonic.com/) - a PaaS based on Wasmcloud. Note that it contains all the features provided by Wash, but with the capacity to automatically login to your cosmonic account & connect your dev environment to your constellation on their servers. |
| Spin Message Trigger | ghcr.io/lee-orr/rusty-dev-containers/spin-message-trigger:0 | Installs the [Spin Message Trigger](https://github.com/lee-orr/spin-message-trigger) plugin for Fermyon Spin. Requires the Fermyon Spin feature as well. |
| Dioxus | ghcr.io/lee-orr/rusty-dev-containers/dioxus:0 | Installs the [Dioxus CLI](https://github.com/DioxusLabs/cli) to enable easy development with the Dioxus framework |
| | **Other Tools** | |
| Wasm Server Runner | ghcr.io/lee-orr/rusty-dev-containers/wasm-server-runner:0 | Installs [Wasm Server Runner](https://github.com/jakobhellermann/wasm-server-runner) - a cargo plugin allowing the use of `cargo run` with wasm32-unknown-unknown projects, and serving those projects |
| Dexterous Developer | ghcr.io/lee-orr/rusty-dev-containers/dexterous_developer:0 | [Dexterous Developer](https://github.com/lee-orr/dexterous_developer) is a Hot Reload system for the bevy game engine |
| Rust Windows MSVC | ghcr.io/lee-orr/rusty-dev-containers/rust_windows_msvc:0 | Sets up rust to be able to compile x86_64-pc-windows-msvc binaries from a dev container, using xwin. Note that xwin relies on you accepting this Microsoft Software License: https://visualstudio.microsoft.com/license-terms/mlt031519/ |


## Deprecated

| Tiny Go (no sudo) | ghcr.io/lee-orr/rusty-dev-containers/tinygo:0 | Installs Tiny Go without requiring a Sudo. Useful for working with WasmCloud | Please replace with: ghcr.io/devcontainers-community/features/tinygo from https://github.com/devcontainers-community/features-tinygo |