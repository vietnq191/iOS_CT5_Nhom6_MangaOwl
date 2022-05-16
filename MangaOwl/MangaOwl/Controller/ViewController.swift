//
//  ViewController.swift
//  MangaOwl
//
//  Created by CNTT on 3/25/22.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //myTable.register(TaViewCell.self, forCellReuseIdentifier: "cell")
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    //TableViell 2
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "Cell") as! TaViewCell
        cell.mangaName.text = "Solo Leveling"
        cell.mangaView.text = "1,222 views"
        return cell
    }
    //Number cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    //size cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}

