//
//  SecondViewController.swift
//  ForwardDataUsingStructTwentyFourPractical
//
//  Created by Mac on 22/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var container:Employee?
    
    var employees = [Employee]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let ename = container?.employeeName
        let eid : Int = container!.employeeid
        let esalary = container?.employeeSalary
        employees.append(Employee(employeeName: ename!, employeeid: eid, employeeSalary: esalary!))
        
    }
 }
extension SecondViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellData = self.tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        
        cellData.nameLabel.text = employees[indexPath.row].employeeName
        cellData.idLabel.text = String(employees[indexPath.row].employeeid)
        cellData.salaryLabel.text = String(employees[indexPath.row].employeeSalary)
        return cellData ?? UITableViewCell()
    }
    
    
}
extension SecondViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        500
    }
}
