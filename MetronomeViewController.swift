//
//  SecondViewController.swift
//  MusicAppSwift
//
//  Created by shuger shack on 4/5/18.
//  Copyright © 2018 Samson Cukor. All rights reserved.
//

import UIKit
import AVFoundation

class MetronomeViewController: UIViewController {
    var n = 2
    var audioPlayer : AVAudioPlayer!
    
    var selectedSoundFileName = ""
    var scaleName = "300"
    
        let soundArray = ["10", "20", "30", "40", "50", "60", "70", "80", "90", "100", "110", "120", "130", "140", "150", "160", "170", "180", "190", "200", "210", "220", "230", "240", "250", "260", "270", "280", "290", "300"]
    
    @IBAction func Start(_ sender: UIButton) {
        selectedSoundFileName = lbl.text!
        playSound()
        
        
    }
    
    @IBOutlet weak var lbl: UILabel!
    
    
    @IBAction func Stepper(_ sender: UIStepper) {
         lbl.text = String(Int(sender.value))
         playScale()
    }
    
    @IBAction func Stop(_ sender: UIButton) {
        audioPlayer.pause()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do {
            audioPlayer = try
                AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
       audioPlayer.numberOfLoops = -1
       audioPlayer.play()
        
    }
    func playScale() {
        let soundURL = Bundle.main.url(forResource: scaleName, withExtension: "wav")
        do {
            audioPlayer = try
                AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}
