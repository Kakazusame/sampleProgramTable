//
//  ViewController.swift
//  sampleProgramTable
//
//  Created by 嘉数涼夏 on 2018/01/19.
//  Copyright © 2018年 Suzuka Kakazu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var proArray = ["C言語","Swift","PHP","Javascript","Ruby","Java","Python"]

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proArray.count
    }
    
    //行に表示する文字列の作成と表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = proArray[indexPath.row]
        
        return cell
    }

    //セルをタップした時に発動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //タップされた行の番号 indexPath.row
        print("\(proArray[indexPath.row])は難しいです")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

