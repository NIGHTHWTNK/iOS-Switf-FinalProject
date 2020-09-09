//
//  secondViewController.swift
//  paper plane
//
//  Created by Nighthwtnk on 10/3/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UIViewControllerTransitioningDelegate {

    @IBOutlet weak var dataZoneButton: UIButton!
    //let transition = CircularTransition()
    
    @IBOutlet weak var inputWeight: UITextField!
    @IBOutlet weak var inputZone: UITextField!
    @IBOutlet weak var logisDisplay: UILabel!
    
    var keepIntegerValue = 0
    var keepDataZone = 0
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
         inputWeight.text = data
        
         dataZoneButton.layer.cornerRadius = dataZoneButton.frame.size.width/2
        //circleButton

        // Do any additional setup after loading the view.
    }
    func tranformStringToIntData(){
        var myString = inputWeight.text
        var myInt = (myString as! NSString).integerValue
        
        return  keepIntegerValue = myInt
    }//end func tranfotmStringToInt
    
    func tranformStringToIntZone(){
        var myString = inputZone.text
        var myZone = (myString as! NSString).integerValue
        
        return  keepDataZone = myZone
    }//end func tranformStringToIntZone
    
      //animationButton
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let thirdVC = segue.destination as! thirdViewController
//        thirdVC.transitioningDelegate = self
//        thirdVC.modalPresentationStyle = .custom
//
//    }//เรียกใช้
    
    
    func calculatLogispost(){
        
    }//calculatLogispost
    
    @IBAction func calculateButtonDisplay(_ sender: Any) {
        tranformStringToIntData()
        tranformStringToIntZone()
        
        let detain = inputZone.text
        keepDataZone = (detain! as NSString).integerValue
        if keepDataZone > 10 {
            keepDataZone  = 1
            inputZone.text = nil
        }//ส่งได้แค่  1-10 เท่านั้น
        
        //ogisDisplay.text = "page2"
        
        if(keepIntegerValue < 20){
            print("\(keepDataZone) test")
            logisDisplay.text = "รบกวนทำรายการในหมวดทั่วไป"
        }
        else if(keepDataZone == 1){
            if(keepIntegerValue <= 30){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "200 บาท"
            }
            else if(keepIntegerValue <= 40){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "240 บาท"
            }
            else if(keepIntegerValue <= 50){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "300 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*60)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{print("หนักกว่านี้ก็ไปส่งเองเถอะครับ")}
        }//Zone1
            
        else if(keepDataZone == 2){
            if(keepIntegerValue <= 40){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "250 บาท"
            }
            else if(keepIntegerValue <= 50){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "300 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*60)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{print("หนักกว่านี้ก็ไปส่งเองเถอะครับ")}
        }//Zone2
        
        else if(keepDataZone <= 5){
            if(keepIntegerValue <= 30){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "250 บาท"
            }
            else if(keepIntegerValue <= 40){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "280 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*70)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{print("หนักกว่านี้ก็ไปส่งเองเถอะครับ")}
        }//Zone3-5
        
        else if(keepDataZone == 6){
            if(keepIntegerValue <= 20){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "250 บาท"
            }
            else if(keepIntegerValue <= 30){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "270 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*90)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{print("หนักกว่านี้ก็ไปส่งเองเถอะครับ")}
        }//Zone6
        
        else if(keepDataZone == 7){
            if(keepIntegerValue <= 30){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "250 บาท"
            }
            else if(keepIntegerValue <= 40){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "320 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*80)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{print("หนักกว่านี้ก็ไปส่งเองเถอะครับ")}
        }//Zone3-5

        
        else if(keepDataZone <= 10){
            if(keepIntegerValue <= 20){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "250 บาท"
            }
            else if(keepIntegerValue <= 30){
                print(keepDataZone,keepIntegerValue)
                logisDisplay.text = "270 บาท"
            }
            else if(keepIntegerValue <= 200){
                keepIntegerValue = ((keepIntegerValue/10)*90)
                logisDisplay.text = "\(keepIntegerValue) บาท"
                print(keepIntegerValue,keepDataZone)
            }
            else{
                logisDisplay.text = "หนักกว่านี้ก็ไปส่งเองเถอะครับ"
                print(keepIntegerValue)}
        }//Zone8-10
    }//end if else
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }//dropdownkeybord
    
}//end class
