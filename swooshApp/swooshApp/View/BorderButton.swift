//
//  BorderButton.swift
//  swooshApp
//
//  Created by bennoui ihab on 4/9/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
