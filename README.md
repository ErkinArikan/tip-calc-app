# 💸 Tip Calculator - iOS (UIKit + RxSwift)

Swift ve UIKit kullanılarak geliştirilen, tamamen **programatik arayüze** sahip bir bahşiş hesaplama uygulamasıdır. Kullanıcı dostu ve test edilebilir MVVM mimarisiyle yapılandırılmıştır.

---

## 🚀 Kullanılan Teknolojiler

- **Swift (UIKit)** – native iOS uygulama geliştirme
- **RxSwift / RxCocoa** – Reaktif programlama ve veri bağlama
- **SnapKit** – Auto Layout için sade DSL
- **XCTest** – Unit ve UI test altyapısı
- **MVVM** – UI & iş mantığını ayıran modern mimari
- **Programatik UI** – Storyboard kullanılmadan inşa edilen arayüzler

---

## 🧩 Mimarî Yapı: MVVM + Rx

- **View** (`UIView`, `UIViewController`) yalnızca kullanıcı arayüzünden sorumludur.
- **ViewModel** kullanıcı girdilerini alır, iş kurallarını uygular ve sonuçları reactive olarak yayınlar.
- **Model** (`Result`, `Tip`) hesaplama sonuçlarını taşır.

---

## 📦 Ana Bileşenler

| Sınıf            | Açıklama |
|------------------|----------|
| `LogoView`       | Uygulama başlığı ve görseli |
| `BillInputView`  | Tutar girişi |
| `TipInputView`   | Bahşiş yüzdesi seçim bileşeni |
| `SplitInputView` | Kişi sayısı kontrolü |
| `ResultView`     | Kişi başı toplam gösterimi |
| `LoginViewModel` | Rx ile MVVM yapılandırması |
| `ThemeFont`, `ThemeColor` | Tasarım teması kontrolü |

---

## 🧪 Test Altyapısı

### 🧬 1. Unit Testler (`tip_calculatorTests.swift`)
- Proje temel fonksiyonları için `XCTestCase` tabanlı test yapısı hazırlanmıştır.
- Test senaryoları için `setUpWithError()` ve `tearDownWithError()` desteklenir.
- Performans testi için `measure { ... }` kullanıma hazırdır:contentReference[oaicite:3]{index=3}.

### 📲 2. UI Testler (`tip_calculatorUITests.swift`)
- Uygulama arayüzüne dair temel testler `XCUIApplication()` üzerinden yapılır.
- Uygulama başlatıldıktan sonra butonlara tıklanma, text yazma gibi işlemler test edilebilir.
- `testLaunchPerformance()` ile uygulamanın açılış süresi ölçülebilir:contentReference[oaicite:4]{index=4}.

### 📷 3. Launch UI Screenshot Testi (`tip_calculatorUITestsLaunchTests.swift`)
- Uygulama ilk açıldığında ekran görüntüsü alınır.
- Otomatik testte ekranın yüklenip yüklenmediği görsel olarak doğrulanabilir:contentReference[oaicite:5]{index=5}.

---

## 🛠 Kurulum ve Çalıştırma

1. Projeyi klonla:
```bash
git clone https://github.com/kullaniciadi/tip-calculator.git
cd tip-calculator
