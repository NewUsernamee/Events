//
//  eventListTableView.swift
//  Events
//
//  Created by chuangke-12 on 2017/8/4.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

class eventListTableViewController : UITableViewController
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "eventListSelected"
            {
                print("Transitioning")
            }
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventListCell", for: indexPath) as! eventListCell
        cell.eventListNameLabel.text = "Event List 1"
        return cell
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Event List"
    }
    
    @IBAction func unwindToCreateEventViewController(_ segue: UIStoryboardSegue) {
        
        //events = CoreDataHelper.getEventFromData()
    }
}
