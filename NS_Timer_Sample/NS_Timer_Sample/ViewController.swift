//
//  ViewController.swift
//  NS_Timer_Sample
//
//  Created by Lokeshwaran on 23/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer?
    var timeCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View loaded...")
        startTimer()
    }


    func startTimer()
    {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
    }
    
    @objc func timerFired()
    {
        timeCount = timeCount + 1
        print("Timer started... \(timeCount)")
        
        if timeCount >= 15
        {
            stoptimer()
        }
    }
    
    
//    deinit
//    {
//        timer?.invalidate()
//        stoptimer()
//    }
    
    func stoptimer()
    {
        timer?.invalidate()
        timer = nil
        print("Timer Stoper")
    }
    
}

