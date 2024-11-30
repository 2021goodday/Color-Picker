//
//  ViewController.swift
//  Activity A
//
//  Created by Adrielle Narvasa on 11/29/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetSliders()
    }

    @IBAction func resetBtn(_ sender: Any) {
        resetSliders()
    }
    
    @IBAction func sldBlueAction(_ sender: Any) {
        changeColor()
    }
    
    @IBAction func sldGreenAction(_ sender: Any) {
        changeColor()
    }
    
    @IBAction func sldRedAction(_ sender: Any) {
        changeColor()
    }
    
    func changeColor() {
        // Updates the background color using all three sliders
        self.view.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    func resetSliders() {
        // Resets sliders to default values and updates the background
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        changeColor()
    }
}
