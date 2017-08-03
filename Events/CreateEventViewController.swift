//
//  CreateEventView.swift
//  Events
//
//  Created by chuangke-12 on 2017/7/31.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

class CreateEventViewController : UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    // time
    var startTime = 0
    var endTime = 0
    var oldStartTime = 0
    var oldEndTime = 0
    
    // changing event
    var relatedEvents = [Event]()
    var changeEvent = false
    var event : Event?
    var eventArr = [Event]()
    
    //regular
    var pickerArr = ["Monday",
                     "Tuesday",
                     "Wednesday",
                     "Thursday",
                     "Friday",
                     "Saturnday",
                     "Sunday"]
    
    //IBs
    @IBOutlet weak var eventNameLabel: UILabel!
    
    @IBOutlet weak var eventNameTextField: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var startTimePicker: UIPickerView!
    
    @IBOutlet weak var endTimePicker: UIPickerView!

    // setting picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerArr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerArr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil
        {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "Ariel", size: 16)
            pickerLabel?.textAlignment = .center
        }
        pickerLabel?.text = pickerArr[row]
        //pickerLabel?.textColor = UIColor.blue
        return pickerLabel!
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if (pickerView == startTimePicker)
        {
            startTime = row
        }
        else
        {
            endTime = row
        }
        if (startTime>endTime)
        {
            startTime = endTime
            startTimePicker.selectRow(startTime, inComponent: 0, animated: true)
        }
    }

    //regular functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        startTimePicker.dataSource = self
        startTimePicker.delegate = self
        
        endTimePicker.dataSource = self
        endTimePicker.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        if(changeEvent) //changing event
        {
            eventArr = CoreDataHelper.getEventFromData()
            eventNameTextField.text = event?.eventName ?? ""
            startTimePicker.selectRow(startTime, inComponent: 0, animated: true)
            endTimePicker.selectRow(endTime, inComponent: 0, animated: true)
            oldStartTime = startTime
            oldEndTime = endTime
            relatedEvents = getSpecEventByName(name: eventNameTextField.text!)
            navigationItem.title = "Change Event"
        }
        else
        {
            navigationItem.title = "Create Event"
        }
    }
    
    // custom functions
    func deleteRelatedEvent()
    {
        let delArr = getToBeDeleteEvent(events: relatedEvents)
        for delEvent in delArr
        {
            CoreDataHelper.deleteEvent(event: delEvent)
        }
        //CoreDataHelper.deleteEvent(event: )
    }
    
    func getToBeDeleteEvent(events: [Event]) -> [Event]
    {
        var rtnArr = [Event]()
        for event in events
        {
            if (Int(event.eventDay) < startTime || Int(event.eventDay) > endTime)
            {
                rtnArr.append(event)
            }
        }
        return rtnArr
    }
    
    func getSpecEventByName(name: String) -> [Event]
    {
        var rtnArr = [Event]()
        for event in eventArr
        {
            if (event.eventName == name)
            {
                rtnArr.append(event)
            }
        }
        return rtnArr
    }
    
    // segue & coredata
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if (segue.identifier == "createEvent" && !changeEvent)
        {
            for time in startTime...endTime
            {
                let event = CoreDataHelper.createEvent()
                event.eventName = eventNameTextField.text ?? ""
                if (event.eventName == "")
                {
                    event.eventName = "Untitled"
                }
                event.eventDay = Int32(time)
                CoreDataHelper.saveEvent()
            }
        }
        else
        {
            deleteRelatedEvent()
        }
    }
}
