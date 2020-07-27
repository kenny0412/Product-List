//
//  ProductCell.swift
//  Laboratorio2
//
//  Created by Estudiantes on 7/27/20.
//  Copyright © 2020 Estudiantes. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    
    @IBOutlet weak var product: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
