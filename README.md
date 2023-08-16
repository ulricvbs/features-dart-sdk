[⬅️ Back to feature collection](https://devcontainers.community/features/)

# Dart SDK Dev Container Feature

🎯 Installs the Dart SDK

<p align=center>
  <img src="https://thum.io/get/width/800/crop/600/noanimate/https://dart.dev/">
</p>

> Dart is a client-optimized language for fast apps on any platform

&mdash; [Dart programming language | Dart](https://dart.dev/)

This feature installs the Dart SDK to `/usr/lib/dart` by downloading it from
Google's Dart archive service. It also adds the [Dart VS Code extension].

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

- **`version`:** A version of the Dart SDK like `3.0.7`. Must be a complete
  version identifier. The default is `3.0.7`.

<!-- prettier-ignore-start -->
[this vs code blog post]: https://code.visualstudio.com/blogs/2022/09/15/dev-container-features
[dart vs code extension]: https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
<!-- prettier-ignore-end -->
