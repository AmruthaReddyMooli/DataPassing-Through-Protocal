//
//  SecondViewController.swift
//  DataPassingThroughProtocals
//
//  Created by Bhargavi on 12/06/19.
//  Copyright © 2019 Amrutha. All rights reserved.
//

import UIKit


protocol DataPassing {
    func dataStoring(myData:String)
}

class SecondViewController: UIViewController {
    
    // Mark: IBOutlets
    @IBOutlet weak var dataToBeFillTF: UITextField!
    
    @IBOutlet weak var dataPassingBtn: UIButton!
    
    @IBOutlet weak var secondVCLbl: UILabel!
   
    // Mark: Local Variables
    var dataPassingProtocal:DataPassing?
    
    // Mark: View
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }
    
    // Mark: IBAction
    @IBAction func onTapOfDataSendBtn(_ sender: Any) {
       
        if(self.dataToBeFillTF.text?.isEmpty == true){
            self.secondVCLbl.text = "Please Enter Data"
            labelColorChange()
        }else{
            dismiss(animated: true, completion: {
                guard let data = self.dataToBeFillTF.text else {
                 return
                 }
                self.dataPassingProtocal?.dataStoring(myData: data)
              })
        }

    }
}

extension SecondViewController{
    
    // Mark: Custom Function
    /*
     * Label textColor Change
     * Alert Controller
     */
    func labelColorChange()
    {
        secondVCLbl.textColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        var alert = UIAlertController(title: "Alert", message: "Enter data", preferredStyle: .alert)
        var action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }

}
