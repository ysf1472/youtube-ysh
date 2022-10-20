//
//  ViewController.swift
//  youtube-ysh
//
//  Created by Yusuf Ahmet Nihat  Hekimoğlu on 2022-10-19.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

