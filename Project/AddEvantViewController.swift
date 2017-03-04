//
//  AddEvantViewController.swift
//  Project
//
//  Created by admin on 28/12/2016.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class AddEvantViewController: UIViewController {

    
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var labelDate: UILabel!
    
    @IBOutlet weak var stTitle: UITextField!
    @IBOutlet weak var stLocation: UITextField!
    @IBOutlet weak var stNoats: UITextField!
    
    @IBAction func clearBtn(_ sender: UIButton) {
        stTitle.text = ""
        stLocation.text = ""
        stNoats.text = "" 
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        var title:String?
        var location:String?
        var noats:String?
        var time:String?
        
        title = stTitle.text
        location = stLocation.text
        noats = stNoats.text
        time = labelDate.text
        
        let ev:MyEvents = MyEvents(title!, location!, noats!, time!)
        Model.shareInstance.eventsArray.append(ev)
        //Model.shareInstance.eventsArray.
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add Event"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changethedate(datePicker12 : UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        labelDate.text = "\(dateFormatter.string(from: datePicker12.date))"
    }
 
    @IBAction func datePickerAction(_ sender: AnyObject) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.string(from: datePicker.date)
        self.labelDate.text = strDate
    }
    
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
