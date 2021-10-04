//
//  ViewController.swift
//  Activity_2
//
//  Created by Danny on 9/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var data: [String]!
    
    // this function gets called when the UI view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        data = ["iOS", "Swift", "Table View", "UITableViewDataSource", "UITableViewDelegate"]
        // myTableView data source is connected to UITableViewDataSource
        myTableView.dataSource = self
        // myTableView delegate is connected to UITableViewDelegate
        myTableView.delegate = self
    }
    
    

}


// UITableViewDataSource is a protocol

// Protocols are like contracts. Anything that implements the contract must also implement the functions
// Protocols have functions and cannot have init()

// UITableViewDataSource manages the presentation of my data

// Dynamic cells are cells that we do not know the amount of data that is used. The cells can be changed.
// Dynamic cells are mostly used when getting data from a server. Example: Twitter

// Static cells are fixed. The amount of cells do not change.

// Extension is used to add more functionalities to our Class
// Extension can be used to break up a class for different functionalities
extension ViewController: UITableViewDataSource {
    
    // This function is used to show how many rows we have in the table view
    // This function has 2 parameters (tableView) and (numberOfRows)
    // Returns an Integer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count  // returning the number  of elements in  data array
    }
    
    // CellForRowAt function - returns a UITableViewCell
    // This function provides a cell for each row
    // This function has to know what content the cell with include.
    // A Content can be like text or image inside each of our cell.
    // This function takes in two parameters (tableView) and (indexPath)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // DequeReusableCell returns a UITableViewCell
        // DequeReusableCell is used to name the UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // IndexPath.row returns an Integer
        // UITableViewCell by default has a imageView and UILabel. But they are nil by default
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}



// UITableViewDelegate is used to respond to any row events
extension ViewController: UITableViewDelegate {
    
    /// This function is used when a row is selected
    // Function is called didSelectRowAt
    // This function takes in 2 parameters (tableView) and (IndexPath)
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        // cellForRowAt is a function that returns the index position of table cell
        let cell = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = UIColor.blue
    }
    
}
