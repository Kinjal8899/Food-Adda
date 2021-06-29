//
//  ListOrdersViewController.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let orders:[Order] = [
    .init(id: "1", name: "Kinjal Panchal", dish: .init(id: "3", name: "Pizza", image: "https://googlr.com", description: "This is the best pizza I have tasted", calories: 340.78779)),
    .init(id: "1", name: "Kinjal Panchal", dish: .init(id: "3", name: "Pizza", image: "https://googlr.com", description: "This is the best pizza I have tasted", calories: 340.78779)),
    .init(id: "1", name: "Kinjal Panchal", dish: .init(id: "3", name: "Pizza", image: "https://googlr.com", description: "This is the best pizza I have tasted", calories: 340.78779))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCells()
    }
    

    private func registerCells() {
        tableView.register(UINib(nibName: "DishListTableViewCell", bundle: nil), forCellReuseIdentifier: "DishListTableViewCell")
    }

}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishListTableViewCell", for: indexPath) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
