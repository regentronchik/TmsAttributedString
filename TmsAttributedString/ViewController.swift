//
//  ViewController.swift
//  TmsAttributedString
//
//  ДЗ
// "Каждый охотник желает знать где сидит фазан”. Каждое слово покрасить в свой цвет используя AttributedString
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lightBlue = UIColor(red: 66/255, green: 230/255, blue: 245/255, alpha: 1)

        
        let attrStr = NSMutableAttributedString(string: textView.text)
        
        attrStr.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: 0, length: 6))
        
        if let location = textView.text.firstRange(of: "охотник") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: UIColor.orange,
                                    range: NSRange(location: lowerBound, length: length))
        }
        if let location = textView.text.firstRange(of: "желает") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: UIColor.yellow,
                                    range: NSRange(location: lowerBound, length: length))
        }
        if let location = textView.text.firstRange(of: "знать") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: UIColor.green,
                                    range: NSRange(location: lowerBound, length: length))
        }
        if let location = textView.text.firstRange(of: "где") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: lightBlue,
                                    range: NSRange(location: lowerBound, length: length))
        }
        if let location = textView.text.firstRange(of: "сидит") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: UIColor.blue,
                                    range: NSRange(location: lowerBound, length: length))
        }
        if let location = textView.text.firstRange(of: "фазан") {
            let lowerBound = location.lowerBound.encodedOffset
            let length = location.upperBound.encodedOffset - lowerBound
            attrStr.addAttribute(.foregroundColor,
                                    value: UIColor.purple,
                                    range: NSRange(location: lowerBound, length: length))
        }
        textView.attributedText = attrStr
        
    }


}

