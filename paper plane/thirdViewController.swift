//
//  thirdViewController.swift
//  paper plane
//
//  Created by Nighthwtnk on 10/3/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var disMissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         disMissButton.layer.cornerRadius = disMissButton.frame.size .width/2

        // Do any additional setup after loading the view.
    }
    
    @IBAction func disMissbackPage(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
