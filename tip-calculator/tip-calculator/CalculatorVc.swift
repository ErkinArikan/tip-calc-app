//
//  ViewController.swift
//  tip-calculator
//
//  Created by Erkin Arikan on 30.05.2025.
//


import UIKit
import SnapKit


///Swift’te open keyword’ü, bir sınıfın veya metodun hem başka modüller (frameworkler) tarafından erişilebilir olmasını hem de override edilebilir olmasını sağlar.

///Bu, erişim belirteçleri (access control) içinde en geniş yetkiye sahip olanıdır.
///
///lazy var uIStackView, içinde işlem yapılan, bir closure ile tanımlanmış bir lazy stored property’dir. Lazy kullanılmasının sebebi, içeride kullanılan alt view’ların henüz oluşturulmamış olabileceği ve bellekte sadece ihtiyaç duyulduğunda oluşturulmasının daha güvenli ve performanslı olmasıdır. Bu yapı, işlem yapılabilen, neredeyse fonksiyonel davranış gösteren ama aslında bir property’dir.
///
///lazy anahtar kelimesi, bir property’nin ilk kez kullanıldığı ana kadar bellekte oluşturulmamasını sağlar. Bu, şu iki durumda çok faydalıdır:
class CalculatorVc: UIViewController {
    
    private let logoView = LogoView()
    private let resultView = ResultView()
    private let billInputView = BillInputView()
    private let tipInputView = TipInputView()
    private let splitInputView = SplitInputView()
    
    private lazy var vStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoView,resultView,billInputView,tipInputView,splitInputView,UIView()])
        stackView.axis = .vertical
        stackView.spacing = 36
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ThemeColor.bg
        layout()
    }
    
    private func layout(){
        view.addSubview(vStackView)
        vStackView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leadingMargin).offset(16)
            make.trailing.equalTo(view.snp.trailingMargin).offset(-16)
            make.bottom.equalTo(view.snp.bottomMargin).offset(-16)
            make.top.equalTo(view.snp.topMargin).offset(16)
        }
        
        logoView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
      resultView.snp.makeConstraints { make in
            make.height.equalTo(224)
        }
        billInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }
        tipInputView.snp.makeConstraints { make in
            make.height.equalTo(56+56+15)
        }
        splitInputView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
    }


}

