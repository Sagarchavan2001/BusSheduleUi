//
//  ViewController.swift
//  BusScheduleUI
//
//  Created by STC on 26/11/22.
//

import UIKit
import MapKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var BusSheduleLabel: UILabel!
    
    @IBOutlet weak var labelView: UIView!
    
    @IBOutlet weak var busSheduleTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSourceAndDelegate()
        RegisterNib()
        labelView.layer.cornerRadius = 40
        labelView.layer.maskedCorners = [.layerMinXMinYCorner ,.layerMaxXMinYCorner]
        
    }
    func dataSourceAndDelegate(){
        busSheduleTableView.delegate = self
        busSheduleTableView.dataSource = self
    }
    func RegisterNib(){
        let nibName = UINib(nibName: "busScheduleTableViewCell", bundle: nil)
        busSheduleTableView.register(nibName, forCellReuseIdentifier: "busScheduleTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let BusCell = self.busSheduleTableView.dequeueReusableCell(withIdentifier: "busScheduleTableViewCell", for: indexPath)as! busScheduleTableViewCell
        BusCell.label1.text = "13 Uppre Indiranagar"
        BusCell.BusView.layer.cornerRadius = 20
        BusCell.procceedToBookButton.layer.cornerRadius = 10
        return BusCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    
}

