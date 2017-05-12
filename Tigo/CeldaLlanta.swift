//
//  CeldaLlanta.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class CeldaLlanta: UICollectionViewCell {
    
    @IBOutlet weak var imagenLlanta: UIImageView!
    @IBOutlet weak var nombreLlanta: UILabel!
    @IBOutlet weak var precioLlanta: UILabel!
    @IBOutlet weak var agregarACarritoBtn: UIButton!
    
    var categoria: CategoriaRines!

    var llanta: Llantas!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(Llanta: Llantas){
        self.llanta = Llanta
        
        self.imagenLlanta.image = UIImage.init(named: "tire")
        self.nombreLlanta.text = self.llanta.name
        self.precioLlanta.text = "$999.99"
        self.agregarACarritoBtn.layer.cornerRadius = 8.0
        self.agregarACarritoBtn.layer.borderWidth = 1.0
        self.agregarACarritoBtn.layer.borderColor = UIColor.blue.cgColor
    }
    
}
