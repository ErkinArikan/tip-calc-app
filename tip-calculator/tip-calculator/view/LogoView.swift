//
//  LogoView.swift
//  tip-calculator
//
//  Created by Erkin Arikan on 30.05.2025.
//

import UIKit

class LogoView:UIView{
    
    
    /// Bir UIImageView oluştur, ayarlarını yap, döndür ve imageView’a ata.
    /// Sadece image için ui tasarımı bu closure yapılı stored property içerisinde
//    private let imageView:UIImageView = {
//        let imageView = UIImageView(image: UIImage(named: "icCalculatorBW"))
//        imageView.contentMode = .scaleAspectFit
//        
//        return imageView
//        
//    }()
//    
//    /// Sadece  üst yazı
//    private let topLabel:UILabel = {
//        let label = UILabel()
//        let text = NSMutableAttributedString(string: "Mr TIP", attributes: [.font: ThemeFont.bold(ofSize: 16)])
//        text.addAttributes([.font:ThemeFont.bold(ofSize: 16)], range: NSMakeRange(3, 3))
//        label.attributedText = text
//        return label
//    }()
//    
//    /// alt yazı
//    private let bottomLabel:UILabel = {
//        LabelFactory.build(text: "Calculator", font: ThemeFont.demibold(ofSize: 20),   textAlignment: .left)
//        
//    }()
//    
//    /// üst ve alt yazıyı vstackledik
//    private lazy var vStackView:UIStackView = {
//        let view = UIStackView(arrangedSubviews: [topLabel, bottomLabel])
//        view.axis = .vertical
//        view.spacing = -4
//        return view
//    }()
//    
//    private lazy var hStackView:UIStackView = {
//        let view = UIStackView(arrangedSubviews: [imageView,vStackView])
//        view.axis = .horizontal
//        view.spacing = 8
//        view.alignment = .center
//        return view
//    }()
//    
//    
//    init() {
//        ///UIView classının initini çağırmamız lazım inhertence yaptık.
//        ///Bu, başlangıçta görünümün çerçevesinin (frame) sıfır değerinde olması anlamına gelir (yani CGRect.zero → x: 0, y: 0, width: 0, height: 0).
//        super.init(frame: .zero)
//      
//        
//        layout()
//    }
//    
//    
//    ///required, bu initializer’ın alt sınıflar tarafından da zorunlu olarak implemente edilmesi gerektiğini belirtir.
//    ///Soru işareti (?), bunun failable initializer olduğunu gösterir. Yani başarısız olup nil dönebilir.
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    
//    /// Ekranda nerede durması gerektiğini burada ayarlıyoruz. Sanpkit ile
//    private func  layout(){
//        addSubview(hStackView)
//        hStackView.snp.makeConstraints { make in
//            ///top.bottom.equalToSuperview()    hStackView’in üst ve alt kenarlarını parent view’a yapıştırır.
//            make.top.bottom.equalToSuperview()
//            
//            ///centerX.equalToSuperview()    Yatayda (X ekseninde) ortalar.
//            make.centerX.equalToSuperview()
//        }
//        imageView.snp.makeConstraints { make in
//            make.height.equalTo(imageView.snp.width)
//        }
//        
//    }
    
    private let imageView: UIImageView = {
      let view = UIImageView(image: .init(named: "icCalculatorBW"))
      view.contentMode = .scaleAspectFit
      return view
    }()
    
    private let topLabel: UILabel = {
      let label = UILabel()
      let text = NSMutableAttributedString(
        string: "Mr TIP",
        attributes: [.font: ThemeFont.demibold(ofSize: 16)])
      text.addAttributes([.font: ThemeFont.bold(ofSize: 24)], range: NSMakeRange(3, 3))
      label.attributedText = text
      return label
    }()
    
    private let bottomLabel: UILabel = {
      LabelFactory.build(
        text: "Calculator",
        font: ThemeFont.demibold(ofSize: 20),
        textAlignment: .left)
    }()
    
    private lazy var vStackView: UIStackView = {
      let view = UIStackView(arrangedSubviews: [
        topLabel,
        bottomLabel
      ])
      view.axis = .vertical
      view.spacing = -4
      return view
    }()
    
    private lazy var hStackView: UIStackView = {
      let view = UIStackView(arrangedSubviews: [
        imageView,
        vStackView
      ])
      view.axis = .horizontal
      view.spacing = 8
      view.alignment = .center
      return view
    }()
    
    init() {
      super.init(frame: .zero)
      accessibilityIdentifier = ScreenIdentifier.LogoView.logoView.rawValue
      layout()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
      addSubview(hStackView)
      hStackView.snp.makeConstraints { make in
        make.top.bottom.equalToSuperview()
        make.centerX.equalToSuperview()
      }
      
      imageView.snp.makeConstraints { make in
        make.height.equalTo(imageView.snp.width)
      }

    }
}

