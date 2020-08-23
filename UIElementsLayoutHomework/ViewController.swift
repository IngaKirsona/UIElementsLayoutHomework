//
//  ViewController.swift
//  UIElementsLayoutHomework
//
//  Created by Inga Kirsona on 22/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.black.cgColor
        
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.black.cgColor
        
        styleOutletCollection.forEach {button in button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
        }
    }


}

