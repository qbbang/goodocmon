//
//  getVC.swift
//  GoodocMon
//
//  Created by qbbang on 26/02/2019.
//  Copyright © 2019 qbbang. All rights reserved.
//

import UIKit
import Lottie
import AVFoundation

class GetGoodocmonViewController: UIViewController {

  @IBOutlet weak var animationView: LOTAnimationView!
  var soundIntroPlayer: AVAudioPlayer?
  
    override func viewDidLoad() {
        super.viewDidLoad()

      startAnimation()
      playSaveSound()
  }
  
  
  func startAnimation() {
    animationView.setAnimation(named: "getmon")
    animationView.play()
    
  }
  
  func playSaveSound(){
    let path = Bundle.main.path(forResource: "Victory.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
      soundIntroPlayer = try AVAudioPlayer(contentsOf: url)
      soundIntroPlayer?.play()
    } catch {
      // couldn't load file :(
    }
  }

}
