//
//  ViewController.swift
//  JYRadarChartSwiftDemo
//
//  Created by Erick Santos on 30/04/17.
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var radar1: JYRadarChart!
    @IBOutlet weak var radar2: JYRadarChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a1: Array<Double> = [81.0, 97.0, 87.0, 60.0, 65.0, 77.0]
        let a2: Array<Double> = [91.0, 87.0, 33.0, 77.0, 78.0, 96.0]
        radar1.data = [a1, a2]
        radar1.steps = 1
        radar1.isShowStepText = true
        radar1.backgroundColor = UIColor.white
        radar1.r = 60
        radar1.minValue = 20
        radar1.maxValue = 120
        radar1.isFillArea = true
        radar1.colorOpacity = 0.7
        radar1.backgroundFillColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        radar1.attributes = ["Attack", "Defense", "Speed", "HP", "MP", "IQ"]
        radar1.isShowLegend = true
        radar1.titles = ["archer", "footman"]
        radar1.colors = [UIColor.yellow, UIColor.purple];
        radar1.isShowTotal = false
        self.view.addSubview(radar1)
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(updateData), userInfo: nil, repeats: true)
        
        radar2.isShowLegend = true
        radar2.backgroundFillColor = UIColor.white
        radar2.titles = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
        radar2.isDrawPoints = true
        radar2.attributes = ["Price", "Value", "Pressure", "Height", "Weight", "Grade", "Volume", "Length", "Size", "Padding", "Pages", "HAHAHA"]
        let b1: Array<Double> = [61.0, 97.0, 87.0, 60.0, 85.0, 77.0, 73.0, 74.0, 53.0, 82.0, 65.0, 61.0]
        let b2: Array<Double> = [91.0, 87.0, 43.0, 77.0, 78.0, 96.0, 51.0, 65.0, 77.0, 55.0, 84.0, 91.0]
        let b3: Array<Double> = [51.0, 97.0, 87.0, 60.0, 25.0, 77.0, 93.0, 14.0, 53.0, 34.0, 65.0, 51.0]
        let b4: Array<Double> = [11.0, 87.0, 65.0, 77.0, 55.0, 84.0, 43.0, 77.0, 78.0, 96.0, 51.0, 11.0]
        let b5: Array<Double> = [41.0, 97.0, 87.0, 60.0, 95.0, 77.0, 73.0, 74.0, 59.0, 82.0, 95.0, 41.0]
        let b6: Array<Double> = [61.0, 96.0, 51.0, 65.0, 77.0, 87.0, 43.0, 70.0, 78.0, 55.0, 44.0, 61.0]
        let b7: Array<Double> = [81.0, 97.0, 74.0, 53.0, 82.0, 65.0, 87.0, 60.0, 85.0, 77.0, 73.0, 81.0]
        let b8: Array<Double> = [91.0, 84.0, 43.0, 67.0, 78.0, 96.0, 47.0, 55.0, 67.0, 55.0, 51.0, 91.0]
        let b9: Array<Double> = [38.0, 85.0, 77.0, 93.0, 74.0, 53.0, 82.0, 97.0, 87.0, 60.0, 65.0, 38.0]
        let b10: Array<Double> = [31.0, 87.0, 43.0, 37.0, 78.0, 96.0, 51.0, 65.0, 17.0, 55.0, 54.0, 31.0]
        radar2.data = [b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]
        radar2.steps = 2;
        radar2.isShowTotal = false
        radar2.backgroundColor = UIColor.gray
        self.view.addSubview(radar2)
    }
    
    @objc func updateData() {
        let n = 6
        var a = Array<Double>()
        var b = Array<Double>()
        var c = Array<Double>()
        
        
        for _ in 0..<n {
            a.append(Double(arc4random() % 40 + 80))
            b.append(Double(arc4random() % 50 + 70))
            c.append(Double(arc4random() % 60 + 60))
        }
        
        radar1.data = [a, b, c]
        radar1.steps = Int(arc4random() % 6) + 1
        radar1.isFillArea = arc4random() % 2 == 0 ? true : false
        radar1.isDrawPoints = arc4random() % 2 == 0 ? true : false
        radar1.isShowStepText = arc4random() % 2 == 0 ? true : false
        radar1.titles = ["iPhone", "pizza", "hard drive"]
        radar1.setNeedsDisplay()
    }

}

