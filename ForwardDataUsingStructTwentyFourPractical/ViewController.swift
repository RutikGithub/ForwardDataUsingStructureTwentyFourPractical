//
//  ViewController.swift
//  ForwardDataUsingStructTwentyFourPractical
//
//  Created by Mac on 22/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var id: UITextField!
    
    @IBOutlet weak var salary: UITextField!
    
    
    var secondViewController:SecondViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SUBMIT(_ sender: Any)
    {
        
        secondViewController =  self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController?.container = Employee(employeeName: self.name.text!, employeeid: Int(self.id.text!)!, employeeSalary: Double(self.salary.text!)!)
        
        
        
        navigationController?.pushViewController(secondViewController!, animated: true)
        
    }
    

}

