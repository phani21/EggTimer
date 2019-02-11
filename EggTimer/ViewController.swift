//
//  ViewController.swift
//  EggTimer
//
//  Created by IMCS2 on 2/10/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //
    //  ViewController.swift
    //  EggTImer
    //
    //  Created by IMCS2 on 2/10/19.
    //  Copyright © 2019 com.phani. All rights reserved.
    //
    
//develop branch
    
   
        
        var stopWatchTimer = Timer()
        var currentTime = 0
    var a: Int = 0
    var isRunning: Bool = false
        
        
        
        @IBOutlet weak var timeDisplay: UILabel!
        
        @IBAction func pause(_ sender: Any) {
            
            isRunning=false
            stopWatchTimer.invalidate()
            
        }
    

        @IBAction func play(_ sender: Any) {
                if(!isRunning){
            stopWatchTimer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: (#selector(ViewController.updateTime)), userInfo: nil, repeats: true)
            isRunning=true
            
    }}
        @IBAction func resetBtn(_ sender: Any) {
            currentTime=0
            updateTime(a:0)
        }
        @IBAction func rewind(_ sender: Any) {
            if currentTime-100<=0{
//                print("rewind loop")
                currentTime=0
               updateTime(a:0)
            }
            else {currentTime-=101
            updateTime(a: 1)
            }
        }
        @IBAction func forward(_ sender: Any) {
            currentTime+=99
            updateTime(a: 1)
        }
        
        
    @objc func updateTime( a : Int){
        if(a==0){
            currentTime=0}
        else {
            currentTime+=1}
            timeDisplay.text="\(currentTime / 600) : \(currentTime%600/10) : \((currentTime%600)%100)"
        
        
        
            
        }
        
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            
        }
        
        
    }
    


    
