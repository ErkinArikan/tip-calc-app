import UIKit

// Bu sınıf, kişi başı toplam ödeme miktarını gösteren özel bir UIView bileşenidir.
class ResultView: UIView {

    // Başlık etiketi: "Total p/person" metniyle, üstte gösterilecek açıklama metni
    private let headerLabel: UILabel = {
        LabelFactory.build(
            text: "Total p/person",
            font: ThemeFont.demibold(ofSize: 18) // Özel bir yazı tipi ile oluşturulmuş
        )
    }()

    // Kişi başına düşen toplam tutarı gösteren etiket
    private let amountPerPersonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center // Ortalanmış görünüm

        // AttributedString ile farklı boyutlarda font kullanımı:
        // İlk karakter daha küçük, rakamlar büyük olacak şekilde stilize edilir
        let text = NSMutableAttributedString(
            string: "$0",
            attributes: [
                .font: ThemeFont.bold(ofSize: 48) // Sayısal kısmın fontu büyük
            ]
        )
        text.addAttributes([
            .font: ThemeFont.bold(ofSize: 24) // $ sembolü daha küçük font
        ], range: NSMakeRange(0, 1))

        label.attributedText = text

        // UI testlerinde erişim için tanımlayıcı
        label.accessibilityIdentifier = ScreenIdentifier.ResultView.totalAmountPerPersonValueLabel.rawValue

        return label
    }()

    // Yatay çizgi: total/amount bilgisiyle alttaki bilgiler arasında görsel ayrım sağlar
    private let horizontalLineView: UIView = {
        let view = UIView()
        view.backgroundColor = ThemeColor.seperator // Tema renginde ince çizgi
        return view
    }()

    // Ana dikey StackView: tüm alt bileşenleri sıralı şekilde tutar
    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            headerLabel,
            amountPerPersonLabel,
            horizontalLineView,
            buildSpacerView(height: 0), // Şu anda görünmez boşluk
            hStackView
        ])
        stackView.axis = .vertical
        stackView.spacing = 8 // Bileşenler arası boşluk
        return stackView
    }()

    // Toplam hesap tutarını gösterecek özel AmountView bileşeni (sol)
    private let totalBillView: AmountView = {
        let view = AmountView(
            title: "Total bill",
            textAlignment: .left,
            amountLabelIdentifier: ScreenIdentifier.ResultView.totalBillValueLabel.rawValue
        )
        return view
    }()

    // Toplam bahşiş tutarını gösterecek özel AmountView bileşeni (sağ)
    private let totalTipView: AmountView = {
        let view = AmountView(
            title: "Total tip",
            textAlignment: .right,
            amountLabelIdentifier: ScreenIdentifier.ResultView.totalTipValueLabel.rawValue
        )
        return view
    }()

    // Toplam hesap ve bahşiş bilgilerini yatayda yan yana gösteren StackView
    private lazy var hStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            totalBillView,
            UIView(), // Ortadaki boş alan → spacer gibi davranır
            totalTipView
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually // Eşit oranda yayılma
        return stackView
    }()

    // init: view oluşturulurken layout fonksiyonu çağrılır
    init() {
        super.init(frame: .zero)
        layout()
    }

    // Interface Builder kullanımı engelleniyor (storyboard için değil)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // View dışarıdan yapılandırıldığında veriler bu fonksiyonla set edilir
    func configure(result: Result) {
        // Kişi başı ücret etiketi stilize edilir
        let text = NSMutableAttributedString(
            string: result.amountPerPerson.currencyFormatted,
            attributes: [.font: ThemeFont.bold(ofSize: 48)]
        )
        text.addAttributes([
            .font: ThemeFont.bold(ofSize: 24)
        ], range: NSMakeRange(0, 1)) // $ sembolü gibi başlangıç karakteri küçük

        amountPerPersonLabel.attributedText = text

        // Alt görünümler yapılandırılır
        totalBillView.configure(amount: result.totalBill)
        totalTipView.configure(amount: result.totalTip)
    }

    // Otomatik layout kurulum fonksiyonu
    private func layout() {
        backgroundColor = .white
        addSubview(vStackView)

        // StackView tüm view alanına marginli şekilde yerleşir
        vStackView.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(24)
            make.leading.equalTo(snp.leading).offset(24)
            make.trailing.equalTo(snp.trailing).offset(-24)
            make.bottom.equalTo(snp.bottom).offset(-24)
        }

        // Yatay çizgiye sabit yükseklik verilir
        horizontalLineView.snp.makeConstraints { make in
            make.height.equalTo(2)
        }

        // View’a gölge efekti verilir → kart benzeri görünüm için
        addShadow(
            offset: CGSize(width: 0, height: 3),
            color: .black,
            radius: 12.0,
            opacity: 0.1
        )
    }

    // Boş (yükseklikli) bir spacer view üretir, StackView içinde kullanılmak üzere
    private func buildSpacerView(height: CGFloat) -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        return view
    }
}
