//
//  ViewController.swift
//  timetable
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    var numbers: [Int]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var numberField: UITextField!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard numbers != nil else {
            return UITableViewCell()
        }
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        cell.textLabel?.text = "\(numbers![indexPath.row])"
        return cell
    }
    
    @IBAction func calculate(_ sender: UIButton) {
       
        let number = Int(numberField.text!) ?? 0
        timetable(number: number)
        numberField.text = nil
        numberField.resignFirstResponder()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = numbers![indexPath.row]
        timetable(number: number)
    }
    func timetable(number: Int){
         numbers = [Int]()
        for item in 1...10{
            numbers?.append( number * item)
        }
        tableview.reloadData()
    }
    
    }

