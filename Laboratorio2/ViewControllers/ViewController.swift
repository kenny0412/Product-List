//
//  ViewController.swift
//  Laboratorio2
//
//  Created by Estudiantes on 7/18/20.
//  Copyright © 2020 Estudiantes. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    var products: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        products = [String]()
        products?.append("Huevos")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productForm" {
            if let destinationViewController = segue.destination as? ProductFormViewController {
                destinationViewController.delegate = self
            }
            
        }
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if  let products = self.products{
            return products.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        
        if let products = self.products {
            cell.product.text = "\(products[indexPath.row])"
        }
        return cell
    }
    
    
}

extension ViewController: ProductProtocol {
    func didCreateProduct(product: String) {
        self.products?.append(product)
        self.tableView.reloadData()
    }
}
