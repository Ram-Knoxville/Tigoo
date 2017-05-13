//
//  LoginVC.swift
//  Tigo
//
//  Created by Ram on 5/12/17.
//  Copyright © 2017 Rowan Technologies. All rights reserved.
//

import UIKit
import AVFoundation

class LoginVC: UIViewController {

    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.target = SWRevealViewController()
        
        menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
        
        usernameTxt.keyboardAppearance = UIKeyboardAppearance.dark
        usernameTxt.returnKeyType = UIReturnKeyType.done
        
        passwordTxt.keyboardAppearance = UIKeyboardAppearance.dark
        passwordTxt.returnKeyType = UIReturnKeyType.done
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
        let videoURL: NSURL = Bundle.main.url(forResource: "tireAnimation", withExtension: "mp4")! as NSURL
        
        player = AVPlayer(url: videoURL as URL)
        player?.actionAtItemEnd = .none
        player?.isMuted = true
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.zPosition = -1
        
        playerLayer.frame = view.frame
        
        view.layer.addSublayer(playerLayer)
        
        player?.play()
        
        //loop video
        NotificationCenter.default.addObserver(self,
                                                         selector: #selector(LoginVC.loopVideo),
                                                         name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                                         object: nil)
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func loopVideo() {
        player?.seek(to: kCMTimeZero)
        player?.play()
    }

}
