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
        styleUI()
        
        }
    func styleUI(){
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
//MARK:- Logic Style to MyLabel, Buttons and Image
    
    func changeButtonImmage(with image: String){
        leftButtonUp.setImage(UIImage(named: image), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 6, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
    }
    
    func changeLeftButtonText(){
        leftButtonDown.setTitle("CHANGED", for:.normal)
        leftButtonDown.backgroundColor = UIColor.red
        self.view.backgroundColor = UIColor.white
        self.mainImageView.backgroundColor = UIColor.gray
    }
    
    func changeTextLabel(){
        myLabel.text = ("New text was added")
        myLabel.backgroundColor = .white
        myLabel.textColor = .blue
        myLabel.textAlignment = .center
        self.view.backgroundColor = UIColor.darkGray
    }
    
    func changeImage (){
        mainImageView.image = (UIImage(named: "star.png"))
        mainImageView.backgroundColor = .white
        self.view.backgroundColor = UIColor.gray
    }
//MARK:- IBActions for buttons
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImmage(with: "home.png")
    }
    
    @IBAction func touchUpInside(_ sender: Any) {
        print("touchUpInside")
        changeLeftButtonText()
    }
    
    @IBAction func touchDown(_ sender: Any) {
        print("touchDown")
        changeTextLabel()
    }
        
    @IBAction func touchDragInside(_ sender: Any) {
        print("touchDrahInside")
        changeImage()
    }
    
}
