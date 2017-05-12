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

    // Iconos de Menú
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
    
    //Labels de Menu
    @IBOutlet weak var labelInicio: UILabel!
    @IBOutlet weak var labelCuenta: UILabel!
    @IBOutlet weak var labelCarrito: UILabel!
    @IBOutlet weak var labelPedidos: UILabel!
    @IBOutlet weak var labelDeseos: UILabel!
    @IBOutlet weak var labelCategorias: UILabel!
    @IBOutlet weak var labelPromociones: UILabel!
    @IBOutlet weak var labelContacto: UILabel!
    @IBOutlet weak var labelBuscar: UILabel!
    @IBOutlet weak var labelLogin: UILabel!
    
    // Celdas Custom UIView
    @IBOutlet weak var vistaInicio: UIView!
    @IBOutlet weak var vistaMiCuenta: UIView!
    @IBOutlet weak var vistaMiCarrito: UIView!
    @IBOutlet weak var vistaMisPedidos: UIView!
    @IBOutlet weak var vistaListaDeseos: UIView!
    @IBOutlet weak var vistaCategorias: UIView!
    @IBOutlet weak var vistaPromociones: UIView!
    @IBOutlet weak var vistaContacto: UIView!
    @IBOutlet weak var vistaBuscar: UIView!
    @IBOutlet weak var vistaLogin: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Seteo de iconos a imagenes
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
    
    @IBAction func InicioTapped(_ sender: Any) {
        vistaInicio.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    
    @IBAction func cuentaTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func carritoTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func pedidosTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func deseosTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func categoriasTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func promocionesTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func contactoTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func buscarTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        vistaLogin.backgroundColor = UIColor.white
    }
    @IBAction func loginTapped(_ sender: Any) {
        vistaInicio.backgroundColor = UIColor.white
        vistaMiCuenta.backgroundColor = UIColor.white
        vistaMiCarrito.backgroundColor = UIColor.white
        vistaMisPedidos.backgroundColor = UIColor.white
        vistaListaDeseos.backgroundColor = UIColor.white
        vistaCategorias.backgroundColor = UIColor.white
        vistaPromociones.backgroundColor = UIColor.white
        vistaContacto.backgroundColor = UIColor.white
        vistaBuscar.backgroundColor = UIColor.white
        vistaLogin.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    
    
}
