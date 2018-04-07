//
//  ViewController.swift
//  MusicAppSwift
//
//  Created by shuger shack on 4/5/18.
//  Copyright © 2018 Samson Cukor. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["G string", "D string", "A string", "E string"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func ViolinStrings(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do {
    audioPlayer = try
    AVAudioPlayer(contentsOf: soundURL!)
    
        }
        catch{
            print(error)
        }
        audioPlayer.play()
}

}
