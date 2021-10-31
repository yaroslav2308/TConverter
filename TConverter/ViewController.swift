//
//  ViewController.swift
//  TConverter
//
//  Created by Yaroslav Monastyrev on 30.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 50
            slider.minimumValue = -50
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round(( sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
}

