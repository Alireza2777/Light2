//
//  ViewController.swift
//  Light2
//
//  Created by Alireza Karimi on 2023-05-23.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
    // Do any additional setup after loading the view.
  }
  
  var lighton = true
  @IBOutlet var lightButton: UIButton!
  
//  func updateUI() {
//    view.backgroundColor = lightOn ? .white : .black
//  }
  

  fileprivate func updateUI() {
    if lighton {
      view.backgroundColor = .white
      lightButton.setTitle("Off", for: .normal)
    }
    else {
      view.backgroundColor = .black
      lightButton.setTitle("On", for: .normal)
    }
  }
  
  @IBAction func ButtonOff(_ sender: UIButton) {
    lighton.toggle()
    updateUI()
  }
  
}

