# 💸 Tip Calculator - iOS (UIKit + SnapKit)

Swift ve UIKit kullanılarak storyboard olmadan geliştirilen, tamamen **programatik kullanıcı arayüzüne** sahip bir **bahşiş hesaplama (tip calculator)** uygulamasıdır. Kullanıcı, hesap tutarını, kişi sayısını ve bahşiş oranını girerek kişi başı düşen ödemeyi hızlıca görebilir.

---

## 🚀 Kullanılan Teknolojiler

- **Swift (UIKit)** – Native iOS UI geliştirme
- **SnapKit** – Auto Layout işlemleri için sade, okunabilir DSL
- **Programatik UI** – Storyboard kullanılmadan tamamen kodla kurulan arayüzler
- **XCTest** – Unit ve UI testleri için Apple’ın resmi test çerçevesi

---

## 🧩 Proje Yapısı

Uygulama, component tabanlı, sade bir mimariyle inşa edilmiştir. Her UI bileşeni ayrı `UIView` sınıfı olarak tanımlanmış ve `SnapKit` ile layout edilmiştir.

---

## 📦 Bileşenler

| Sınıf               | Görev |
|---------------------|-------|
| `LogoView.swift`       | Uygulama logosu ve başlık görünümü:contentReference[oaicite:0]{index=0} |
| `BillInputView.swift`  | Kullanıcıdan hesap tutarını alan alan:contentReference[oaicite:1]{index=1} |
| `TipInputView.swift`   | Bahşiş oranı seçimi (örnek renkli placeholder):contentReference[oaicite:2]{index=2} |
| `SplitInputView.swift` | Kişi sayısını arttırma/azaltma bileşeni:contentReference[oaicite:3]{index=3} |
| `ResultView.swift`     | Kişi başı ödemeyi ve toplamları gösteren sonuç ekranı:contentReference[oaicite:4]{index=4} |
| `AmountView.swift`     | ResultView içinde kullanılan özel, dikey label bileşeni:contentReference[oaicite:5]{index=5} |
| `Result.swift`         | Total hesap, tip ve kişi başı tutarı taşıyan model:contentReference[oaicite:6]{index=6} |
| `ScreenIdentifier.swift` | UI testlerde erişim için accessibility ID tanımları:contentReference[oaicite:7]{index=7} |
| `Tip.swift`            | Tip oranı enum yapısı (10%, 15%, 20% veya custom):contentReference[oaicite:8]{index=8} |

---

## 🧪 Testler

### ✅ Unit Testler (`tip_calculatorTests`)
- `XCTestCase` ile iskelet test yapısı hazırdır
- Performans testi ve fonksiyon testleri için `testExample()` ve `measure {}` örnekleri yer almaktadır:contentReference[oaicite:9]{index=9}

### ✅ UI Testler (`tip_calculatorUITests`)
- `XCUIApplication()` ile uygulama başlatılır ve kullanıcı arayüzü test edilir
- Uygulama açılış süresi gibi metrikler ölçülebilir:contentReference[oaicite:10]{index=10}

### ✅ UI Launch Screenshot (`tip_calculatorUITestsLaunchTests`)
- Uygulama başlatıldığında otomatik ekran görüntüsü alınır ve test kapsamında saklanır:contentReference[oaicite:11]{index=11}

---

## ⚙️ Kurulum

1. Projeyi klonla:
```bash
git clone https://github.com/kullaniciadi/tip-calculator.git
cd tip-calculator
