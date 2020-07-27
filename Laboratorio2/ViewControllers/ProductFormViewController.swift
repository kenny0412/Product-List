//
//  ProductFormViewController.swift
//  Laboratorio2
//
//  Created by Estudiantes on 7/27/20.
//  Copyright © 2020 Estudiantes. All rights reserved.
//

import UIKit

class ProductFormViewController: UIViewController {

    @IBOutlet weak var productTextField: UITextField!
    
    var delegate:ProductProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNew(_ sender: Any) {
        let newProduct = productTextField.text!
        delegate?.didCreateProduct(product: newProduct)
        self.navigationController?.popViewController(animated: true)
    }

}
