//
//  ViewController.swift
//  mp3Player
//
//  Created by etudiant on 06/12/2016.
//  Copyright © 2016 etudiant. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let audioURL = Bundle.main.url(forResource: "nomDuMP3", withExtension: ".mp3") {
            if let audioPlayer = try? AVAudioPlayer(contentsOf: audioURL) {
                audioPlayer.play()
                self.audioPlayer = audioPlayer
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

