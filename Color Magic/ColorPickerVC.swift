//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Ruben Quispe Montoya on 10/2/17.
//  Copyright © 2017 Ruben Quispe Montoya. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            
            self.navigationController?.popViewController(animated: true)
        }
        
    }

}
