//
//  ViewController.swift
//  CoreData_Sample
//
//  Created by Lokeshwaran on 20/09/24.
//


//Data model
//1.name
//2.mobileNumber
//3.age


import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addUser(name: "Lokesh", mobileNumber: "9090909090", age: "24")
        addUser(name: "Raj", mobileNumber: "8080808080", age: "25")
        
        let users = fetchUser()
        for user in users
        {
            print("Name:\(user.name ?? "nil"),Phone:\(user.mobileNumber ?? "nil"),Age:\(user.age ?? "nil")")
        }
        
    }

    let context = CoreDataManager.shared.context

//To create
    func addUser(name: String, mobileNumber: String, age: String)
    {
        let user = UserDetails(context: context)
        user.name = name
        user.age = age
        user.mobileNumber = mobileNumber
        
        CoreDataManager.shared.saveContext()
    }
    
//To fetch
    func fetchUser() -> [UserDetails]
    {
        let fetchRequest: NSFetchRequest<UserDetails> = UserDetails.fetchRequest()
        
        do
        {
            let users = try context.fetch(fetchRequest)
            return users
        }
        catch
        {
            print("Fetch Request Failed")
            return []
        }
    }
    

    
    
}

