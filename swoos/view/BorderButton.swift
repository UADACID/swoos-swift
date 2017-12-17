//
//  BorderButton.swift
//  swoos
//
//  Created by pratama setya aji on 12/17/17.
//  Copyright © 2017 pratama setya aji. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
