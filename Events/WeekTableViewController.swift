//
//  DaysTableViewController.swift
//  Events
//
//  Created by chuangke-12 on 2017/7/31.
//  Copyright © 2017年 Make School. All rights reserved.
//

import UIKit
import Foundation

class WeekTableViewController: UITableViewController {
    
    var dispArr = [Event]()
    var events = [Event]()
    
    {
        didSet
        {
            tableView.reloadData()
        }
    }

    let screenSize: CGRect = UIScreen.main.bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        print("Screen width = \(screenWidth), screen height = \(screenHeight)")

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func viewWillAppear(_ animated: Bool)
    {
        events = CoreDataHelper.getEventFromData()
        dispArr = events.sorted(by: { $0.eventDay < $1.eventDay})
        print("e\(events.count)")
        print("d\(events.count)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath) as! DayCell

        // Configure the cell...
        //let color = UIColor(patternImage: UIImage(named:"Line.png")!)
        //let separator
        switch dispArr[indexPath.row].eventDay {
        case 0:
            cell.dayLabel.text = "Mon"
            cell.eventNameLabel.textColor = UIColor(red: 60.0/255.0,
                                                    green: 12.0/255.0,
                                                    blue: 4.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 255.0/255.0,
                                              green: 79.0/255.0,
                                              blue: 53.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 1:
            cell.dayLabel.text = "Tue"
            cell.eventNameLabel.textColor = UIColor(red: 60.0/255.0,
                                                    green: 41.0/255.0,
                                                    blue: 4.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 255.0/255.0,
                                              green: 194.0/255.0,
                                              blue: 53.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 2:
            cell.dayLabel.text = "Wed"
            cell.eventNameLabel.textColor = UIColor(red: 61.0/255.0,
                                                    green: 56.0/255.0,
                                                    blue: 1.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 242.0/255.0,
                                              green: 237.0/255.0,
                                              blue: 11.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 3:
            cell.dayLabel.text = "Thur"
            cell.eventNameLabel.textColor = UIColor(red: 27.0/255.0,
                                                    green: 60.0/255.0,
                                                    blue: 4.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 123.0/255.0,
                                              green: 239.0/255.0,
                                              blue: 46.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 4:
            cell.dayLabel.text = "Fri"
            cell.eventNameLabel.textColor = UIColor(red: 1.0/255.0,
                                                    green: 48.0/255.0,
                                                    blue: 63.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 49.0/255.0,
                                              green: 202.0/255.0,
                                              blue: 253.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 5:
            cell.dayLabel.text = "Sat"
            ///cell.dayLabel.text = "Fri"
            cell.eventNameLabel.textColor = UIColor(red: 17.0/255.0,
                                                    green: 1.0/255.0,
                                                    blue: 63.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 105.0/255.0,
                                              green: 55.0/255.0,
                                              blue: 253.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        case 6:
            cell.dayLabel.text = "Sun"
            //cell.dayLabel.text = "Fri"
            cell.eventNameLabel.textColor = UIColor(red: 64.0/255.0,
                                                    green: 0.0/255.0,
                                                    blue: 29.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 255.0/255.0,
                                              green: 36.0/255.0,
                                              blue: 135.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 255.0/255.0,
                                           blue: 255.0/255.0,
                                           alpha: 1.0)
        default:
            print("error")
        }
        //cell.dayLabel.text = "day"
        cell.eventNameLabel.text = dispArr[indexPath.row].eventName
        //cell.eventNameLabel.text = "name"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {       
        let navBarHeight = self.navigationController?.navigationBar.frame.size.height
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        //print((view.bounds.height-navBarHeight!-statusBarHeight)/7.0)
        return (view.bounds.height-navBarHeight!-statusBarHeight)/7.0;
        
        //Choose your custom row height
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1
        if let identifier = segue.identifier {
            // 2
            if identifier == "changeEvent"
            {
                let indexPath = tableView.indexPathForSelectedRow!
                // 2
                let selectedEvent = dispArr[indexPath.row]
                // 3
                let createEventViewController = segue.destination as! CreateEventViewController
                // 4
                createEventViewController.event = selectedEvent
                //createEventViewController.
              //  eventNameTextField.text = selectedEvent.eventName
                createEventViewController.startTime = getEventStartTime(event: selectedEvent)
                createEventViewController.endTime = getEventEndTime(event: selectedEvent)
                createEventViewController.changeEvent = true
            }
            
            if identifier == "createEvent" {
                // 3
                print("Transitioning")
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        // 2
        if editingStyle == .delete {
            // 3
            CoreDataHelper.deleteEvent(event: dispArr[indexPath.row])
            //notes.remove(at: indexPath.row)
            
            events = CoreDataHelper.getEventFromData()
            dispArr = events.sorted(by: { $0.eventDay < $1.eventDay})
        }
    }

    func getEventStartTime(event: Event) -> Int
    {
        for dispEvent in dispArr
        {
            if dispEvent.eventName == event.eventName
            {
                return Int(dispEvent.eventDay)
            }
        }
        return 0
    }
    func getEventEndTime(event: Event) -> Int
    {
        var rtn = 0
        for dispEvent in dispArr
        {
            if dispEvent.eventName == event.eventName
            {
                rtn = Int(dispEvent.eventDay)
            }
            
        }
        return rtn
    }
    
    @IBAction func unwindToCreateEventViewController(_ segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        events = CoreDataHelper.getEventFromData()
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
