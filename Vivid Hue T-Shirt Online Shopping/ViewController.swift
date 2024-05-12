//
//  ViewController.swift
//  Vivid Hue T-Shirt Online Shopping
//
//  Created by 紀韋如 on 12/05/2024.
//

import UIKit
class ViewController: UIViewController {
    
    //圖片
    @IBOutlet weak var ImageColor1: UIImageView!
    
    //紅、綠、藍、透明、隨機按鈕
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var random: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 可以手動更改slider改變圖片
    
    fileprivate func extractedFunc() {
        ImageColor1.backgroundColor = UIColor(cgColor: CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)))
    }
    
    @IBAction func changeColor(_ sender: Any) {
        extractedFunc()
    }
    
    // 隨機改變圖片顏色
    
    @IBAction func randomColor(_ sender: Any) {
        //動畫效果
        redSlider.setValue(.random(in: 0...1), animated: true)
        
        // 隨機產生顏色
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        
        // 精簡版
        extractedFunc()
        
// 改變圖片
//    ImageColor1.backgroundColor = UIColor(cgColor: CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)))
//
        
    }
    
    
}
