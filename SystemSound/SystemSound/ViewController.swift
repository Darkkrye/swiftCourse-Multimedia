//
//  ViewController.swift
//  SystemSound
//
//  Created by etudiant on 06/12/2016.
//  Copyright © 2016 etudiant. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    private var soundID: SystemSoundID = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let soundURL = Bundle.main.url(forResource: "nomDuFichierSon", withExtension: "wav") {
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playSoundTapped(_ sender: Any) {
        if self.soundID != 0 {
            AudioServicesPlaySystemSound(self.soundID)
        }
    }
    
    deinit {
        if self.soundID != 0 {
            AudioServicesDisposeSystemSoundID(self.soundID)
            self.soundID = 0
        }
    }
}

