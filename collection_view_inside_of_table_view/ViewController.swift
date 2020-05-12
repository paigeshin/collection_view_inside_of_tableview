//
//  ViewController.swift
//  collection_view_inside_of_table_view
//
//  Created by shin seunghyun on 2020/05/10.
//  Copyright © 2020 shin seunghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        

        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableViewCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
}


struct Model {
    
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
    
}
