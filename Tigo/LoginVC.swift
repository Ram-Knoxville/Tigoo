//
//  LoginVC.swift
//  Tigo
//
//  Created by Ram on 5/12/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var menuBtn: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.target = SWRevealViewController()
        
        menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))

    }

}
