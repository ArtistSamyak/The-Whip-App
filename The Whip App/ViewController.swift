//
//  ViewController.swift
//  The Whip App
//
//  Created by Samyak Pawar on 01/07/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    let path = Bundle.main.path(forResource: "whip", ofType: "mp3")!
    let url = URL(fileURLWithPath: path)
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }catch{
        
     }
    }
    
}
