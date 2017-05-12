//
//  CeldaCategoria.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class CeldaCategoria: UICollectionViewCell {
    
    @IBOutlet weak var nombreCategoria: UILabel!
    
    var categoria: Categorias!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(categoria: Categorias){
        self.categoria = categoria
        self.nombreCategoria.text = categoria.name
     
    }
}
