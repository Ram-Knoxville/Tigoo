//
//  LlantasVC.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class LlantasVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var ColleccionCategorias: UICollectionView!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBOutlet weak var ColleccionLlantas: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var llantas = [Llantas]()
    var llantasFiltradas = [Llantas]()
    var inSearchMode = false
    
    let marca = ["name": "Marcas"]
    let vehiculos = ["name": "Vehiculos"]
    let medida = ["name": "Medida"]
    let ranking = ["name": "Ranking"]
    
    let totalesLlantas = [["name": "LLANTA GREMAX 1000 77T 175/60R13", "image": "tire", "price": "$999.99"],
                          ["name": "LLANTA BFGOODRICH RADIAL T/A 175/70R13", "image": "tire", "price": "$999.99"],
                          ["name": "LLANTA KENDA KR23 79T 155/80R13", "image": "tire", "price": "$999.99"],
                          ["name": "LLANTA KENDA KR23 77H 175/60R13", "image": "tire", "price": "$999.99"],
                          ["name": "LLANTA KENDA KR23 175/70R13", "image": "tire", "price": "$999.99"],
                          ["name": "LLANTA LANDSAIL LS288 82T PCR 175/70R13", "image": "tire", "price": "$999.99"]
                          ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.target = SWRevealViewController()
        
        menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))

        
        ColleccionLlantas.delegate = self
        ColleccionLlantas.dataSource = self
        searchBar.delegate = self
        
        searchBar.returnKeyType = UIReturnKeyType.done
        searchBar.keyboardAppearance = UIKeyboardAppearance.dark
        
        
        
        self.dataParser()
    }
    
    func dataParser() {
        let llantass = totalesLlantas
        for a in llantass {
            let name = a["name"]!
            let image = a["image"]!
            let price = a["price"]!
            let llanta = Llantas(name: name, image: image, price: price)
            llantas.append(llanta)
            
            ColleccionLlantas.reloadData()
        }
    }
    
    // MARK: - CollectionView Functions
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == ColleccionLlantas {
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaProducto", for: indexPath) as? CeldaLlanta {
                
                let llanta: Llantas!
                
                if inSearchMode {
                    llanta = llantasFiltradas[indexPath.row]
                    cell.configureCell(Llanta: llanta)
                }else {
                    llanta = llantas[indexPath.row]
                    cell.configureCell(Llanta: llanta)
                }
                
                return cell
                
            }else{
                return UICollectionViewCell()
            }

            
            
        }else {
            return UICollectionViewCell()
        }
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == ColleccionLlantas {
            
            if inSearchMode{
                return llantasFiltradas.count
            }else{
                return llantas.count
            }

        }else {
            return 1
        }
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // MARK: - search Bar Functions
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            ColleccionLlantas.reloadData()
            view.endEditing(true)
        }else {
            inSearchMode = true
            
            llantasFiltradas = llantas.filter({$0.name.range(of: self.searchBar.text!) != nil })
            ColleccionLlantas.reloadData()
        }
    }


}
