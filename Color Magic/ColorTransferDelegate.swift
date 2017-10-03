//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Ruben Quispe Montoya on 10/2/17.
//  Copyright © 2017 Ruben Quispe Montoya. All rights reserved.
//

import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
