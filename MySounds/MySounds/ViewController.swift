//
//  ViewController.swift
//  MySounds
//
//  Created by Charlithia Palmer on 6/20/20.
//  Copyright © 2020 Four in One Telecommunications. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = Bundle.main.url(forResource: "hello", withExtension: "mp3")
        
        do {
        audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer.prepareToPlay()
            audioPlayer.currentTime = 0
            
            
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
    }
    @IBOutlet weak var displayPV: UIProgressView!
    
    override func didReceiveMemoryWarning() {
            // Do any additional setup after loading the view.
        
    }

    @IBAction func playPressed(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    
    @IBAction func pausePressed(_ sender: UIButton) {
        audioPlayer.pause()
    }
    
    
    @IBAction func stopPressed(_ sender: UIButton) {
        audioPlayer.stop()
    }
    
    
    
   
    
}

