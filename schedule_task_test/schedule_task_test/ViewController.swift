//
//  ViewController.swift
//  schedule_task_test
//
//  Created by TOBIASZ WITALIS on 08/12/2022.
//

import UIKit
import BackgroundTasks

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func scheduleTask(_ sender: Any) {
        print("scheduling task")
        
        do {
            let request = BGProcessingTaskRequest(identifier: "pl.snowdog.example.train")
            try BGTaskScheduler.shared.submit(request)
        } catch {
            print(error)
        }
    }
    
}

