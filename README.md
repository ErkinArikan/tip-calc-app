# 💵 AmountView

A lightweight and reusable `UIView` subclass to display a **label + currency amount** in a vertically stacked format, built using UIKit + SnapKit.

Useful for **summary sections** like "Total Bill", "Total Tip", etc. in checkout, finance, or utility apps.

---

## 📸 Preview

| Left-aligned | Right-aligned |
|--------------|----------------|
| `Total bill` <br> `$56.80` | `Total tip` <br> `$8.20` |

---

## 🚀 Features

- Clean vertical layout using `UIStackView`
- Uses `NSAttributedString` to style currency formatting (large number, small `$`)
- Customizable alignment (`.left`, `.right`, `.center`)
- Lightweight & modular — designed for embedding in summary UIs
- Fully programmatic (no storyboards)
- SnapKit-based constraints for conciseness
- `accessibilityIdentifier` support for UI testing

---

## 🛠 Installation

### Manually

Just drag and drop `AmountView.swift` into your project.

> ✅ Requires [SnapKit](https://github.com/SnapKit/SnapKit)  
> You can install via Swift Package Manager or CocoaPods.

---

## 🧪 Example Usage

```swift
let amountView = AmountView(
    title: "Total Bill",
    textAlignment: .left,
    amountLabelIdentifier: "totalBillLabel"
)

amountView.configure(amount: 56.80)
