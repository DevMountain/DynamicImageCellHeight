//
//  TableViewController.swift
//  DynamicCellHeight
//
//  Created by Caleb Hicks on 1/20/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100

    }
    
    override func viewDidAppear(animated: Bool) {
        
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("imageCell", forIndexPath: indexPath) as! ImageTableViewCell

        cell.updateWithImage(indexPath.row)
        
        return cell
    }
}
