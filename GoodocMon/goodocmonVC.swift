//
//  goodocmonVC.swift
//  GoodocMon
//
//  Created by qbbang on 22/02/2019.
//  Copyright © 2019 qbbang. All rights reserved.
//

import UIKit
import Lottie
import AVFoundation

class goodocmonVC: UIViewController {
  
  @IBOutlet weak var animationView: LOTAnimationView!
  var soundIntroPlayer: AVAudioPlayer?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    startAnimation()
    playSaveSound()
    
  }
  
  func startAnimation() {
    animationView.setAnimation(named: "goodocmon")
    animationView.play()
    
  }
  
  func playSaveSound(){
    let path = Bundle.main.path(forResource: "wlidBGM.wav", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
      soundIntroPlayer = try AVAudioPlayer(contentsOf: url)
      soundIntroPlayer?.play()
    } catch {
      // couldn't load file :(
    }
  }
  
  @IBAction func searchGoodocMon(_ sender: Any) {
    soundIntroPlayer?.stop()
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
