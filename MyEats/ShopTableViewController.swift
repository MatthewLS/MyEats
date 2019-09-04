//
//  ShopTableViewController.swift
//  MyEats
//
//  Created by Matthew Stephens on 9/2/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class ShopTableViewController: UITableViewController {
    
    //MARK: Properties
    var shops = [Shop]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // #warning temporary just so we can see a data point
        loadSampleData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shops.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ShopTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ShopTableViewCell else {
            fatalError("The dequeued cell is not an instance of shopTableViewCell")
            
        }
        
        //Fetches the appropriate meal for the data source layout.
        print("adding sample shops to shops arrray")
        let shop = shops[indexPath.row]
        
        cell.nameLabel.text = shop.name
        //cell.shopPrice = shop.price
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    //MARK: Private methods
    private func loadSampleData(){
        let shop1 = Shop(name: "Shop1", location: "Haight", price: 1)
        let shop2 = Shop(name: "Shop2", location: "Alamo", price: 2)
        let shop3 = Shop(name: "Shop3", location: "Fidi", price: 3)
        
        shops.append(shop1!)
        shops.append(shop2!)
        shops.append(shop3!)
    }
}
