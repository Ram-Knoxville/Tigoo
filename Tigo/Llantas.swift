//
//  Llantas.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import Foundation

class Llantas {
    private var _name: String!
    private var _image: String!
    private var _price: String!
    
    
    
    var name: String {
        return _name
    }
    
    var image: String {
        return _image
    }
    
    var price: String {
        return _price
    }
    
    init(name: String, image: String, price: String) {
        self._name = name
        self._image = image
        self._price = price
    }

}
