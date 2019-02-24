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
    // Do any additional setup after loading the view, typically from a nib.
    
    setUI()
  }
  
  func setUI() {
    //MARK: 배경이미지
    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "titleBG.png")!)
    //MARK: 버튼UI
    btnStart.layer.borderWidth = 2.0
    btnStart.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    btnStart.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    btnStart.layer.cornerRadius = 30
    btnStart.alpha = 0.5
  }
  

}

