//
//  ViewController.swift
//  AutoComplete TextField
//
//  Created by Prashant G on 1/26/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit
import SearchTextField

class ViewController: UIViewController {

    
    @IBOutlet var hostNameTextField: SearchTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the array of strings you want to suggest
        hostNameTextField.filterStrings(["Red", "Blue", "Yellow", "Ornage", "Black"])
        hostNameTextField.theme.cellHeight = 50
        hostNameTextField.maxNumberOfResults = 5
        hostNameTextField.maxResultsListHeight = 200
        hostNameTextField.theme.font = UIFont.systemFont(ofSize: 20)
        hostNameTextField.setBottomBorder()
    }


}

extension UITextField {
    
    func setBottomBorder() {
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
