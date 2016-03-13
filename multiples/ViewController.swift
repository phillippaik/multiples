//
//  ViewController.swift
//  multiples
//
//  Created by Phillip Paik on 3/12/16.
//  Copyright © 2016 Phillip Paik. All rights reserved.
//  FUN

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multipleText: UITextField!

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var mathLabel: UILabel!
    
    var startNum = 0;
    var addedNum = 0;
    var maxNum = 0;
    var newNum = 0;
    var counter = 0;
    
    @IBAction func startedAdding(sender: AnyObject) {
        if multipleText.text != nil && multipleText.text != "" {
            titleImage.hidden = true
            playButton.hidden = true
            multipleText.hidden = true
            
            addButton.hidden = false
            mathLabel.hidden = false
            
            addedNum = Int(multipleText.text!)!
            maxNum = Int(multipleText.text!)!
            
        }
        
    }
    
    @IBAction func addFunction(sender: AnyObject) {
        newNum = addedNum + startNum
        mathLabel.text = "\(startNum) + \(addedNum) = \(newNum)"
        
        if checkCurrent() {
            restartGame()
        }
        
        startNum = startNum + addedNum
        counter++
    }

    func checkCurrent() ->Bool {
        if counter >= maxNum {
            return true
        } else {
            return false
        }
    }
    func restartGame() {
        titleImage.hidden = false
        playButton.hidden = false
        multipleText.hidden = false
        
        addButton.hidden = true
        mathLabel.hidden = true
        counter = 0;
        startNum = 0;
        addedNum = 0;
        newNum = 0;
        maxNum = 0;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

