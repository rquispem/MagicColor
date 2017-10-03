//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Ruben Quispe Montoya on 10/2/17.
//  Copyright © 2017 Ruben Quispe Montoya. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            
            //safe way to create a constant that is non optional
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

}

