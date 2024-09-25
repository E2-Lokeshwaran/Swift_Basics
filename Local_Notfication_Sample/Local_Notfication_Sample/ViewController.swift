//
//  ViewController.swift
//  Local_Notfication_Sample
//
//  Created by Lokeshwaran on 24/09/24.
//

//Step 1:- get the persmission from the user
//Step 2:-

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
        
    @IBAction func notificationButton(_ sender: Any)
    {
        //sendNotification()
        sendNotificationAction()
    }
    
    //Without actions
    func sendNotification()
    {
        let content = UNMutableNotificationContent()
        content.title = "Local Notification Sample"
        content.body = "This is a sample application to receive a local notification"
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "reminderNotification", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request) { error in
        
            if let error = error
            {
                print("Error sheduling notification: \(error.localizedDescription)")
            }
            else
            {
                print("Notification scheduled successfully")
            }
        }
    }
    
    
    //With actions
    func sendNotificationAction()
    {
        let content = UNMutableNotificationContent()
        content.title = "Local Notificaiton Sample with action buttons"
        content.body = "This is a sample application to receive local notification with action buttons."
        content.sound = .default
        
        //trigger action buttons
        let action1 = UNNotificationAction(identifier: "Ok", title: "Ok", options: [])
        let action2 = UNNotificationAction(identifier: "Cancel", title: "Cancel",options: [.destructive])
        
        let category = UNNotificationCategory(identifier: "ReceiveNotification", actions: [action1,action2], intentIdentifiers: [],options: [])
        
        UNUserNotificationCenter.current().setNotificationCategories([category])
        content.categoryIdentifier = "ReceiveNotification"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "ReceiveNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
        
            if let error = error
            {
                print("Error sheduling notification: \(error.localizedDescription)")
            }
            else
            {
                print("Notification scheduled successfully")
            }
        }
    }
}

