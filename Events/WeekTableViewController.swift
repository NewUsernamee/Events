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
    
    // eventArrays
    var dispArr = [Event]()
    var events = [Event]()
    {
        didSet
        {
            tableView.reloadData()
        }
    }
    
    // regular
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool)
    {
        let color = UIColor(red: 250.0/255.0,
                            green: 250.0/255.0,
                            blue: 250.0/255.0,
                            alpha: 0.8
                            )
        self.navigationController?.navigationBar.barTintColor = color//.withAlphaComponent(0.1)
        events = CoreDataHelper.getEventFromData()
        dispArr = events.sorted(by: { $0.eventDay < $1.eventDay})
        print("e\(events.count)")
        print("d\(dispArr.count)")
        navigationItem.title = "Event List 1"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // set up table view

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath) as! DayCell
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
                                           green: 240.0/255.0,
                                           blue: 238.0/255.0,
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
                                           green: 246.0/255.0,
                                           blue: 229.0/255.0,
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
            
            cell.backgroundColor = UIColor(red: 253.0/255.0,
                                           green: 252.0/255.0,
                                           blue: 227.0/255.0,
                                           alpha: 1.0)
        case 3:
            cell.dayLabel.text = "Thur"
            cell.eventNameLabel.textColor = UIColor(red: 27.0/255.0,
                                                    green: 60.0/255.0,
                                                    blue: 4.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 124.0/255.0,
                                              green: 194.0/255.0,
                                              blue: 36.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 239.0/255.0,
                                           green: 251.0/255.0,
                                           blue: 232.0/255.0,
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
            
            cell.backgroundColor = UIColor(red: 231.0/255.0,
                                           green: 248.0/255.0,
                                           blue: 254.0/255.0,
                                           alpha: 1.0)
        case 5:
            cell.dayLabel.text = "Sat"
            cell.eventNameLabel.textColor = UIColor(red: 17.0/255.0,
                                                    green: 1.0/255.0,
                                                    blue: 63.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 105.0/255.0,
                                              green: 55.0/255.0,
                                              blue: 253.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 242.0/255.0,
                                           green: 238.0/255.0,
                                           blue: 254.0/255.0,
                                           alpha: 1.0)
        case 6:
            cell.dayLabel.text = "Sun"
            cell.eventNameLabel.textColor = UIColor(red: 64.0/255.0,
                                                    green: 0.0/255.0,
                                                    blue: 29.0/255.0,
                                                    alpha: 1.0)
            
            cell.dayLabel.textColor = UIColor(red: 255.0/255.0,
                                              green: 36.0/255.0,
                                              blue: 135.0/255.0,
                                              alpha: 1.0)
            
            cell.backgroundColor = UIColor(red: 255.0/255.0,
                                           green: 237.0/255.0,
                                           blue: 247.0/255.0,
                                           alpha: 1.0)
        default:
            print("error")
        }
        cell.eventNameLabel.text = dispArr[indexPath.row].eventName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {       
        let navBarHeight = self.navigationController?.navigationBar.frame.size.height
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        return (view.bounds.height-navBarHeight!-statusBarHeight)/7.0;
    }
    
    // segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "changeEvent"
            {
                let indexPath = tableView.indexPathForSelectedRow!
                let selectedEvent = dispArr[indexPath.row]
                let createEventViewController = segue.destination as! CreateEventViewController
                createEventViewController.event = selectedEvent
                createEventViewController.startTime = getEventStartTime(event: selectedEvent)
                createEventViewController.endTime = getEventEndTime(event: selectedEvent)
                createEventViewController.changeEvent = true
            }
            if identifier == "createEvent" {
                print("Transitioning")
            }
        }
    }
    
    //unwind segue
    @IBAction func unwindToCreateEventViewController(_ segue: UIStoryboardSegue) {
        
        events = CoreDataHelper.getEventFromData()
    }
    
    // delete event
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            CoreDataHelper.deleteEvent(event: dispArr[indexPath.row])
            events = CoreDataHelper.getEventFromData()
            dispArr = events.sorted(by: { $0.eventDay < $1.eventDay})
        }
    }
    
    // custom functions
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
    

}
