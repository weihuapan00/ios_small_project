//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    let eggTime = ["Soft":300.0 ,"Medium" : 420.0, "Hard" : 720.0]
    
    var totalTime = 0.0
    var secondPassed = 0.0
    var hardness = ""
    var timer = Timer()
    var player: AVAudioPlayer?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        progressView.progress = 0.0
        hardness = sender.currentTitle!
        
        totalTime = eggTime[hardness]!
        secondPassed = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func updateTimer(){
        
        if secondPassed < totalTime {
            //            let percent =
            print("\(secondPassed) second.")
            secondPassed += 1
            progressView.progress = Float(secondPassed / totalTime)
        }else{
            titleLabel.text = "Done"
            let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3")!
            let url = URL(fileURLWithPath : path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print ("There is an issue with this code!")
            }
            
        }
    }
    
    
    
    
}
