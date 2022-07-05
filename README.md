# Color

[![Version](https://img.shields.io/github/release/lipka/Color.svg)](https://github.com/lipka/Color/releases)
[![Build Status](https://github.com/lipka/Color/workflows/Tests/badge.svg)](https://github.com/lipka/Color/actions)
![Swift Version](https://img.shields.io/badge/swift-5.2.0-orange.svg)

Simple extensions for working with `Color` (Swift UI) and `UIColor` (UIKit).

## Installation

### Swift Package Manager

For installation with [Swift Package Manager](https://github.com/apple/swift-package-manager), simply add the following to your `Package.swift`:

``` swift
.package(url: "https://github.com/lipka/Color", from: "0.1.0")
```

## Usage

### Hex Colors

You can use the convenience initializers to initialize a color with a hex code. Supports 12-bit (`FFF`), 24-bit (`FFFFFF`) and 32-bit RGBA (`FFFFFFFF`) hex codes, that can optionally be prefixed with a pound sign.

```swift
Color(hex: "FF00FF")
Color(hex: "#F0F", alpha: 0.5)

UIColor(hex: "FF00FF")
UIColor(hex: "#F0F", alpha: 0.5)
```

### Adjusting Colors

You can use the `adjust` method to easily adjust all or only specific components of a color.

```swift
UIColor.blue.adjust(red: 0.1, green: 0, blue: 0, alpha: 0)
UIColor.blue.adjust(0.1)
```

This is especially useful for deriving colors for highlighted or selected states. For example when using [Button](https://github.com/lipka/Button):

```swift
import Button

...

let button = Button()
button.setBackgroundColor(.blue, for: .normal)
button.setBackgroundColor(.blue.adjust(0.1), for: .highlighted)
```