//
//  firstViewController.swift
//  paper plane
//
//  Created by Nighthwtnk on 10/3/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit
protocol canReceive {
    func dataReceive(dataFromProtocol: String)
}

class firstViewController: UIViewController {

    @IBOutlet weak var inputWeight: UITextField!
    
    @IBOutlet weak var ordinaryDisplay: UILabel!
    @IBOutlet weak var registerDisplay: UILabel!
    @IBOutlet weak var emsDisplay: UILabel!
    var keppIntegerValue = 0
    var dataEms = 0
    let ordinary = 15//ค่าที่บวกขึ้นเรื่อยๆทีละ 15 ของการส่งปกติ
    var dataOrdinary = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tranfotmStringToInt()
        // Do any additional setup after loading the view.
    }
    func tranfotmStringToInt(){
         var myString = inputWeight.text
         var myInt = (myString as! NSString).floatValue
        
        return  keppIntegerValue = Int(myInt)
    }//end func tranfotmStringToInt
    
    func calculateEMS(){
        tranfotmStringToInt()
        if(keppIntegerValue <= 20){
            emsDisplay.text = "32 บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 100){
            emsDisplay.text = "37 บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 250){
            emsDisplay.text = "42 บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 1000){
            emsDisplay.text = "52 บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 3000){
            keppIntegerValue = ((keppIntegerValue/500)*15)+52
            emsDisplay.text = "\(keppIntegerValue) บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 5000){
            keppIntegerValue = ((keppIntegerValue/500)*20)+37
            emsDisplay.text = "\(keppIntegerValue) บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 8000){
            keppIntegerValue = ((keppIntegerValue/500)*25)-33
            emsDisplay.text = "\(keppIntegerValue) บาท"
            print(keppIntegerValue)
        }
        else if(keppIntegerValue <= 10000){
            keppIntegerValue = ((keppIntegerValue/500)*30)-113
            emsDisplay.text = "\(keppIntegerValue) บาท"
            print(keppIntegerValue)
        }
        else{emsDisplay.text = "ไม่สามารถทำรายการได้"}
    }//end func calculateEMS
    
    
    override func prepare (for segue:UIStoryboardSegue, sender:Any?){
        if segue.identifier == "sendDataForwords"{
            let secondVC = segue.destination as! secondViewController
            
            secondVC.data = inputWeight.text!
            
        }
    }
    func dataReceive(dataFromProtocol : String){
        inputWeight.text = dataFromProtocol
    }
    
    func calculateOrdinaryNormal(){
        tranfotmStringToInt()
        if (keppIntegerValue < 1000){
            ordinaryDisplay.text = "20 บาท"
            print(keppIntegerValue)
        }else{
            dataOrdinary=((keppIntegerValue/1000)*15)+20
            ordinaryDisplay.text = "\(dataOrdinary) บาท"
            print("\(dataOrdinary) ค่าใหม่ที่ส่งมา")
            
        }//end if else
    }//end func calculateOrdinaryNormal
    
    
    @IBAction func calculateButton(_ sender: Any){
        calculateOrdinaryNormal()
        tranfotmStringToInt()
        calculateEMS()
        
            if(keppIntegerValue <= 100){
                registerDisplay.text = "18 บาท"
                print(keppIntegerValue)
            }
            else if(keppIntegerValue <= 250){
                registerDisplay.text = "22 บาท"
                print(keppIntegerValue)
            }
            else if(keppIntegerValue <= 500){
                registerDisplay.text = "28 บาท"
                print(keppIntegerValue)
            }
            else if(keppIntegerValue <= 1000){
                registerDisplay.text = "38 บาท"
                print(keppIntegerValue)
            }
            else if(keppIntegerValue <= 2000){
                registerDisplay.text = "58 บาท"
                print(keppIntegerValue)
            }
            else{registerDisplay.text = "ไม่สามารถทำรายการได้"
                 print(keppIntegerValue)
        }//end if else
        
    }//end IBaction
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
            

}//end class


