//
//  RinesVC.swift
//  Tigo
//
//  Created by Ram on 5/11/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class RinesVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var ColleccionCategorias: UICollectionView!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBOutlet weak var CarritoBtn: UIBarButtonItem!
    
    var categorias = [CategoriaRines]()
    
    var totalesCategorias = [[String: String]]()
    
    let marca = ["name": "Marcas"]
    let diametro = ["name": "Diametro"]
    let Estado = ["name": "Estado"]
    let barreno = ["name": "Barreno"]
    let barreno2 = ["name": "Barreno2"]
    let medida = ["name": "Medida de Rin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ColleccionCategorias.delegate = self
        ColleccionCategorias.dataSource = self
        
        totalesCategorias.append(marca)
        totalesCategorias.append(diametro)
        totalesCategorias.append(Estado)
        totalesCategorias.append(barreno)
        totalesCategorias.append(barreno2)
        totalesCategorias.append(medida)
        
        
     self.dataParser()
    }
    
    func dataParser() {
        
        let categoriass = totalesCategorias
        for r in categoriass{
            
            let name = r["name"]!
            let categoria = CategoriaRines(name: name)
            categorias.append(categoria)
        }
    }
    
    // MARK: - CollectionView Functions
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CeldaCategoriaRines {
            
            let categoria: CategoriaRines!
            
            categoria = categorias[indexPath.row]
            cell.configureCell(categoria: categoria)

            return cell
            
        }else{
            return UICollectionViewCell()
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return categorias.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 91)
    }


}
