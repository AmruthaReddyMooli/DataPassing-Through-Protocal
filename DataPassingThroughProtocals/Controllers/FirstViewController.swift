//
//  FirstViewController.swift
//  DataPassingThroughProtocals
//
//  Created by Bhargavi on 12/06/19.
//  Copyright © 2019 Amrutha. All rights reserved.
//

import UIKit

// Mark: Enumaration
enum Views:String {
    case view1 = "SecondViewController"
}

class FirstViewController: UIViewController, DataPassing {
    
    // Mark: IBOutlets
    @IBOutlet weak var dataToBeShownLbl: UILabel!
   
    @IBOutlet weak var firstVCLbl: UILabel!
    
    // Mark: Local Variables
    var data:DataPassing!
    
   
   
    // View
    override func viewDidLoad() {
        super.viewDidLoad()
        labelColorChange()
        // Do any additional setup after loading the view.
    }
    
    
    // Mark: IBActions
    @IBAction func OnTapOfGetDataBtn(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: Views.view1.rawValue) as! SecondViewController
        firstVC.dataPassingProtocal = self
        present(firstVC, animated: true)
        
    }
    
    // Mark: Protocol Function
    func dataStoring(myData: String) {
        print(myData)
        dataToBeShownLbl.text = myData
    }
 
}

extension FirstViewController{
    // Mark: Custom Function
    /*
    * Label textColor Change
   */
  func labelColorChange()
  {
    firstVCLbl.textColor = #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)
  }
  
}
