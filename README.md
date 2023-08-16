[⬅️ Back to feature collection](https://devcontainers.community/features/)

# Dart SDK Dev Container Feature

🎯 Installs the Dart SDK

<p align=center>
  <img src="https://thum.io/get/width/800/crop/600/noanimate/https://dart.dev/">
</p>

> Dart is a client-optimized language for fast apps on any platform

&mdash; [Dart programming language | Dart](https://dart.dev/)

This feature installs the Dart SDK to `/usr/lib/dart` by downloading it from
Google's Dart archive service. It also adds the [Dart VS Code extension]. x86
and ARM architectures are supported.

## Usage

![Codespaces](https://img.shields.io/static/v1?style=for-the-badge&message=Codespaces&color=181717&logo=GitHub&logoColor=FFFFFF&label=)
![Devcontainers](https://img.shields.io/static/v1?style=for-the-badge&message=Devcontainers&color=2496ED&logo=Docker&logoColor=FFFFFF&label=)

To use this feature, all you need to do is add it to your `devcontainer.json`
like this:

```jsonc
// devcontainer.json
{
  "features": {
    "ghcr.io/devcontainers-community/features/dart-sdk": {}
  }
}
```

❓ Don't know what this ☝ means? Check out [this VS Code blog post].

### Options

- **`version`:** A version of the Dart SDK like `3` or `latest`. This **does**
  support incomplete version specifiers like `3` instead of `3.0.0`. The default
  is `latest`.

- **`channel`:** Choose a specific channel of the Dart SDK distribution to
  download and install. Options are `stable`, `beta`, `dev`, and `main`. The
  default is `stable`.

### Specifying extensions

This feature installs any version with the `version` option and `channel`
option. Check [the Dart SDK archive] for channel details.

```json
"features": {
    "ghcr.io/devcontainers-community/features/dart:1": {
        "version": "3",
        "channel": "beta"
    }
}
```

Note that the beta and dev channels use suffix-based version matching, so only
versions ending with channel name (e.g. `3.1.0-63.1.beta`) can be installed.

<!-- prettier-ignore-start -->
[this vs code blog post]: https://code.visualstudio.com/blogs/2022/09/15/dev-container-features
[dart vs code extension]: https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
[Dart SDK archive]: https://dart.dev/get-dart/archive
<!-- prettier-ignore-end -->
