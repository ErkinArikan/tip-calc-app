# 💸 Tip Calculator - iOS (UIKit + SnapKit)

A fully programmatic Tip Calculator app built using Swift and UIKit, without any storyboard usage.  
Users can input the bill amount, select a tip percentage, and adjust the number of people to instantly see the amount each person owes.

---

## 🚀 Technologies Used

- **Swift (UIKit)** – Native UI development for iOS
- **SnapKit** – DSL-based Auto Layout system for clean and readable constraints
- **Programmatic UI** – Entire interface is built in code; no Storyboards involved
- **XCTest** – Apple's official testing framework for unit and UI tests

---

## 🧪 Testing

- ✅ **Unit Tests**: Core test skeleton built using `XCTestCase`
- ✅ **UI Tests**: UI interaction tested through `XCUIApplication`
- ✅ **Launch Screen Tests**: App launch screen is captured and verified with screenshot attachment

---

## 📦 Key Components

| Component         | Description |
|-------------------|-------------|
| `LogoView`        | App logo and title label |
| `BillInputView`   | Input field for bill amount |
| `TipInputView`    | Predefined or custom tip selection |
| `SplitInputView`  | Allows incrementing/decrementing number of people |
| `ResultView`      | Displays total per person and breakdown |
| `AmountView`      | Reusable subview to show labeled monetary values |
| `Result.swift`    | Data model containing total, tip, and per person amount |

---

## ⚙️ Getting Started

Clone the project and open it in Xcode:

```bash
git clone https://github.com/yourusername/tip-calculator.git
cd tip-calculator
