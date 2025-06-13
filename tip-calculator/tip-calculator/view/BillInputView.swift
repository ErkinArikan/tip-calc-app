//
//  BillInputView.swift
//  tip-calculator
//
//  Created by Erkin Arikan on 1.06.2025.
//
import UIKit
class BillInputView:UIView{
    init() {
        ///UIView classının initini çağırmamız lazım inhertence yaptık.
        ///Bu, başlangıçta görünümün çerçevesinin (frame) sıfır değerinde olması anlamına gelir (yani CGRect.zero → x: 0, y: 0, width: 0, height: 0).
        super.init(frame: .zero)
        layout()
    }
    
    
    ///required, bu initializer’ın alt sınıflar tarafından da zorunlu olarak implemente edilmesi gerektiğini belirtir.
    ///Soru işareti (?), bunun failable initializer olduğunu gösterir. Yani başarısız olup nil dönebilir.

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func  layout(){
        backgroundColor = .purple
    }
}
