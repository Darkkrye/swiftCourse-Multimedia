//
//  ViewController.swift
//  mp4Player
//
//  Created by etudiant on 06/12/2016.
//  Copyright © 2016 etudiant. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let movieURL = Bundle.main.url(forResource: "video", withExtension: "mp4") {
            let player = AVPlayer(url: movieURL)
            let playerController = AVPlayerViewController()
            playerController.player = player
            
            self.present(playerController, animated: true, completion: {
                player.play()
            })
            
            /*var bounds = playerController.view.bounds
            bounds.size.width -= 100
            bounds.size.height -= 100
            bounds.origin.x += 50
            bounds.origin.y += 50
            playerController.view.frame = bounds
            
            self.view.addSubview(playerController.view)
            self.addChildViewController(playerController)
            
            player.play()*/
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

