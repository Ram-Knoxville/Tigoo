//
//  CeldaCategoriaRines.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class CeldaCategoriaRines: UICollectionViewCell {
    @IBOutlet weak var nombreCategoria: UILabel!
    
    var categoria: CategoriaRines!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(categoria: CategoriaRines){
        self.categoria = categoria
        self.nombreCategoria.text = categoria.name
        
    }
}
