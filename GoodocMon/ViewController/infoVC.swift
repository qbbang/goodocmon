//
//  infoVC.swift
//  GoodocMon
//
//  Created by qbbang on 23/02/2019.
//  Copyright © 2019 qbbang. All rights reserved.
//

import UIKit
import AVFoundation

class infoVC: UIViewController {
  
  var soundIntroPlayer: AVAudioPlayer?
  
  @IBOutlet weak var textOne: UILabel!
  @IBOutlet weak var textTwo: UILabel!
  @IBOutlet weak var textThree: UILabel!
  
  @IBOutlet weak var btnOne: UIButton!
  @IBOutlet weak var btnTwo: UIButton!
  @IBOutlet weak var btnThree: UIButton!
  @IBOutlet weak var btnGet: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUI()
    playSaveSound()
    textOne.text = ""
    textTwo.text = ""
    textThree.text = ""
    
  }
  
  func setUI() {
    //MARK: 배경이미지
    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "infoBG.png")!)
    
    btnOne.layer.borderWidth = 2.0
    btnOne.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnOne.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnOne.layer.cornerRadius = 10
    btnOne.alpha = 0.5
    
    btnTwo.layer.borderWidth = 2.0
    btnTwo.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnTwo.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnTwo.layer.cornerRadius = 10
    btnTwo.alpha = 0.5
    
    btnThree.layer.borderWidth = 2.0
    btnThree.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnThree.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnThree.layer.cornerRadius = 10
    btnThree.alpha = 0.5
    
    btnGet.layer.borderWidth = 2.0
    btnGet.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnGet.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnGet.layer.cornerRadius = 10
    btnGet.alpha = 0.5
  }
  
  func playSaveSound(){
    let path = Bundle.main.path(forResource: "pokemonBGM.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
      soundIntroPlayer = try AVAudioPlayer(contentsOf: url)
      soundIntroPlayer?.play()
      soundIntroPlayer?.numberOfLoops = -1
    } catch {
      
    }
  }
  
  func typeText(_ text: String, _ label: UILabel) {
    let appName = (Bundle.main.infoDictionary?["nilnilnil"] as? String) ?? text
    
    // New code using Timer class
    
    let characters = appName.map { $0 }
    var index = 0
    Timer.scheduledTimer(withTimeInterval: 0.12, repeats: true, block: { timer in
      if index < appName.count {
        let char = characters[index]
        label.text! += "\(char)"
        index += 1
      } else {
        timer.invalidate()
      }
    })
  }
  
  @IBAction func actionOne(_ sender: Any) {
    textOne.text = ""
    textTwo.text = ""
    textThree.text = ""
    
    typeText("긍정적😃", self.textOne)
    typeText("둥글둥글🥰", self.textTwo)
    typeText("소주처럼🍶", self.textThree)
  }
  
  @IBAction func actionTwo(_ sender: Any) {
    textOne.text = ""
    textTwo.text = ""
    textThree.text = ""
    
    typeText("여름엔 스노쿨링🥽", self.textOne)
    typeText("겨울엔 보드🏂", self.textTwo)
    typeText("락 좋아요 🤘", self.textThree)
  }
  
  @IBAction func actionThree(_ sender: Any) {
    textOne.text = ""
    textTwo.text = ""
    textThree.text = ""
    
    typeText("적응하기🙇🏻‍♂️", self.textOne)
    typeText("1.5인분하기👨🏻‍💻", self.textTwo)
    typeText("살아남기🙊", self.textThree)
  }
  
  @IBAction func actionGet(_ sender: Any) {
    let alert = UIAlertController(title: "포획 하시겠습니까?", message: "당신은 선택할 수 있습니다!",
                                  preferredStyle: UIAlertController.Style.alert)
    
    alert.addAction(UIAlertAction(title: "네",
                                  style: UIAlertAction.Style.default,
                                  handler: { _ in
                                    self.soundIntroPlayer?.stop()
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let nextVC = storyboard.instantiateViewController(withIdentifier: "getVC") as! getVC
                                    self.present(nextVC, animated: false, completion: nil)
    }))
    alert.addAction(UIAlertAction(title: "Yes",
                                  style: UIAlertAction.Style.default,
                                  handler: {(_: UIAlertAction!) in
                                    self.soundIntroPlayer?.stop()
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let nextVC = storyboard.instantiateViewController(withIdentifier: "getVC") as! getVC
                                    self.present(nextVC, animated: false, completion: nil)
    }))
    
    self.present(alert, animated: true, completion: nil)
  }
  
  
}
