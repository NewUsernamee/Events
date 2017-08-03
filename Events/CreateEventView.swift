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
    //let i = 0
    var pickerArr = ["Monday",
                     "Tuesday",
                     "Wednesday",
                     "Thursday",
                     "Friday",
                     "Saturnday",
                     "Sunday"]
    
    @IBOutlet weak var eventNameLabel: UILabel!
    
    @IBOutlet weak var eventNameTextField: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!

    @IBOutlet weak var startTimePicker: UIPickerView!
    
    @IBOutlet weak var endTimePicker: UIPickerView!
    
    
    
    @IBAction func createButtonTapped(_ sender: Any)
    {
        
    }
    
    //@available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    //@available(iOS 2.0, *)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerArr.count
    }
    
    //var createViewEvent : Event?
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArr[row]
    }
    //print("")
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "Ariel", size: 16)
            pickerLabel?.textAlignment = .center
        }
        pickerLabel?.text = pickerArr[row]
        //pickerLabel?.textColor = UIColor.blue
        
        return pickerLabel!
    }
    
    /*func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        pickerLabel.font = UIFont(name: "Ariel",size: 15)
        return pickerLabel
    }*/
    
    
  /*  func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let pickerLabel = UILabel()
        
        if component == 0 {
            
            pickerLabel.textColor = .darkGray
            pickerLabel.textAlignment = .center
      //      pickerLabel.text = String(self.degrees[row])
            pickerLabel.font = UIFont(name:"System", size: 280)
        } else {
            
            pickerLabel.textColor = .red
            pickerLabel.textAlignment = .center
            pickerLabel.font = UIFont(name:"Helvetica", size: 28)

        }
        return pickerLabel
    }*/
    
    override func viewDidLoad()
    {
        print(UIFont.familyNames)
        super.viewDidLoad()
        startTimePicker.dataSource = self
        startTimePicker.delegate = self
        
        endTimePicker.dataSource = self
        endTimePicker.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        /*if (segue.identifier == "save")
        {
            let event = self.createViewEvent ?? CoreDataHelper.createEvent()
            event.name = eventNameTextField.text ?? ""
            if (event.name == "")
            {
                event.name = "Untitled"
            }
            //event.modificationTime = Date() as NSDate
            //CoreDataHelper.saveNote()
            // listNotesTableViewController.notes.append(Note)
 */
        //}
        //}
    }

    

    


}
