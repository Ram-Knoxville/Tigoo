//
//  MenuVC.swift
//  Tigo
//
//  Created by Ram on 5/12/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit
import Font_Awesome_Swift

class MenuVC: UIViewController {

    @IBOutlet weak var iconoInicio: UIImageView!
    @IBOutlet weak var iconoCuenta: UIImageView!
    @IBOutlet weak var iconoCarrito: UIImageView!
    @IBOutlet weak var iconoPedidos: UIImageView!
    @IBOutlet weak var iconoDeseos: UIImageView!
    @IBOutlet weak var iconoCategorias: UIImageView!
    @IBOutlet weak var iconoPromociones: UIImageView!
    @IBOutlet weak var iconoContacto: UIImageView!
    @IBOutlet weak var iconoBuscar: UIImageView!
    @IBOutlet weak var iconoLogin: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iconoInicio.setFAIconWithName(icon: .FAHome, textColor: .darkGray)
        iconoCuenta.setFAIconWithName(icon: .FAUser, textColor: .darkGray)
        iconoCarrito.setFAIconWithName(icon: .FAShoppingCart, textColor: .darkGray)
        iconoPedidos.setFAIconWithName(icon: .FATag, textColor: .darkGray)
        iconoDeseos.setFAIconWithName(icon: .FAHeart, textColor: .darkGray)
        iconoCategorias.setFAIconWithName(icon: .FAArchive, textColor: .darkGray)
        iconoPromociones.setFAIconWithName(icon: .FAStar, textColor: .darkGray)
        iconoContacto.setFAIconWithName(icon: .FAMobilePhone, textColor: .darkGray)
        iconoBuscar.setFAIconWithName(icon: .FASearch, textColor: .darkGray)
        iconoLogin.setFAIconWithName(icon: .FAUserCircleO, textColor: .darkGray)
    }

}
