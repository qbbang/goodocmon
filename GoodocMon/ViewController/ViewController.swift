//
//  ViewController.swift
//  GoodocMon
//
//  Created by qbbang on 22/02/2019.
//  Copyright © 2019 qbbang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var btnStart: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUI()
  }
  
  private func setUI() {
    //MARK: 배경이미지
//    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "titleBG.png")!)
    
    
    //비트 맵 기반 그래픽 컨텍스트를 만들고
    UIGraphicsBeginImageContext(view.frame.size)
    //지정된 사이즈에 이미지를 그리고
    UIImage(named: "titleBG.png")?.draw(in: view.bounds)
    //그려진 이리지를 가져와 변수에 저장
    let image = UIGraphicsGetImageFromCurrentImageContext()
    //그리고 위의 작업들를 삭제
    UIGraphicsEndImageContext()
    view.backgroundColor = UIColor(patternImage: image ?? UIImage() )
    
    //MARK: 버튼UI
    btnStart.layer.borderWidth = 2.0
    btnStart.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnStart.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnStart.layer.cornerRadius = 25
    btnStart.alpha = 0.5
  }
  

}

