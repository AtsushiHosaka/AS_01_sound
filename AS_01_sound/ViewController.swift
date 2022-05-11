//
//  ViewController.swift
//  AS_01_sound
//
//  Created by 保坂篤志 on 2022/05/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    @IBOutlet weak var drumButton: UIButton!
    @IBOutlet weak var pianoButton: UIButton!
    @IBOutlet weak var guitarButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func touchDownDrumButton(_ sender: Any) {
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton(_ sender: Any) {
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton(_ sender: Any) {
        
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton(_ sender: Any) {
        
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton(_ sender: Any) {
        
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpGuitarButton(_ sender: Any) {
        
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
    
    
}

