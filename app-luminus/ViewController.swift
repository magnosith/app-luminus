//
//  ViewController.swift
//  app-luminus
//
//  Created by Student on 07/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textStatusTitle: UILabel!
    @IBOutlet weak var imageWand: UIImageView!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateUiLight() {
        if lightOn {
            view.backgroundColor = .white
            textStatusTitle.text = "Nox"
            textStatusTitle.textColor = .black
        } else {
            view.backgroundColor = .black
            textStatusTitle.text = "Lumus"
            textStatusTitle.textColor = .white
        }
    }
    
    @IBAction func turnOnOff(_ sender: UITapGestureRecognizer) {
        lightOn.toggle()
        updateUiLight()
    }
    
}

