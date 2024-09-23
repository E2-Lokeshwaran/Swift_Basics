//
//  ViewController.swift
//  NS_Operation_Queue
//
//  Created by Lokeshwaran on 23/09/24.
//

//NSOperationQueue handles the scheduling and execution of the operation in the background, freeing up the main thread for other tasks and managing concurrent operations and ensuring smooth execution is crucial for building responsive and efficient applications. To simplify concurrent programming, Apple provides NSOperationQueue, a powerful tool that allows you to manage and execute operations in parallel or sequentially.

//NOTE:- The main purpose of NSOperation queue is manage & execute task in a concurrently in an organized, efficient, and thread-safe way.

import UIKit

class ViewController: UIViewController {
    let queue = OperationQueue()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View loaded...")
        // Do any additional setup after loading the view.
        
        //        DispatchQueue.main.async
        //        {
        //            print("Task on main thread")
        //        }
        
        //        DispatchQueue.global(qos: .background).async
        //        {
        //            print("Taks on Background thread")
        //        }
        
        
        //to set delay for any task.
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//            print("This code runs after a 2-second delay on the main thread.")
//        }
    
    }
    
    @IBAction func taskOperations(_ sender: Any)
    {
        queue.maxConcurrentOperationCount = 1
        
        //creating task
        let task1 = BlockOperation
        {
            sleep(2)
            print("1")
        }
        let task2 = BlockOperation
        {
            sleep(2)
            print("2")
        }
        let task3 = BlockOperation
        {
            sleep(2)
            print("3")
        }
        let task4 = BlockOperation
        {
            sleep(2)
            print("4")
        }
        let task5 = BlockOperation
        {
            sleep(2)
            print("5")
        }
        let task6 = BlockOperation
        {
            sleep(2)
            print("6")
        }
        
        //controlling the operation to perform when required
        //operation 1 will not start until operation 6 is completed. 
        task1.addDependency(task6)
        
        //adding operation to the queue
        queue.addOperation(task1)
        queue.addOperation(task2)
        queue.addOperation(task3)
        queue.addOperation(task4)
        queue.addOperation(task5)
        queue.addOperation(task6)
        
        //to cancel a operation before it starts
        task4.cancel()

    }
}

