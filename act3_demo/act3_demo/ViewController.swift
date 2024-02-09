//
//  ViewController.swift
//  act3_demo
//
//  Created by athaína rada on 09/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var sliderR: UISlider!
    @IBOutlet weak var sliderG: UISlider!
    @IBOutlet weak var sliderB: UISlider!
    @IBOutlet weak var sliderA: UISlider!
    
    
    @IBOutlet weak var labelR: UILabel!
    @IBOutlet weak var labelG: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderR.value = 1.0
        sliderG.value = 1.0
        sliderB.value = 1.0
        sliderA.value = 1.0
        updateImageView()
        
    }
    
    // esta acción está conectada a todos los sliders
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateLabels()
        updateImageView()
    }
    
    
    func updateLabels() {
        labelR.text = "R: \(String(format: "%.2f", sliderR.value))"
        labelG.text = "G: \(String(format: "%.2f", sliderG.value))"
        labelB.text = "B: \(String(format: "%.2f", sliderB.value))"
        labelA.text = "A: \(String(format: "%.2f", sliderA.value))"
    }
    
    func updateImageView() {
        let color = UIColor(red: CGFloat(sliderR.value),
                            green: CGFloat(sliderG.value),
                            blue: CGFloat(sliderB.value),
                            alpha: CGFloat(sliderA.value))
        image.backgroundColor = color
    }
}

