//
//  ViewController.swift
//  SimbaTab
//
//  Created by Vinh Tran on 22/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import UIKit

class SimbaViewController: UIViewController {
    
    // View
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var message: UILabel!
    
    // View Model
    private let viewModel = SimbaViewModel()
    var details:(image:UIImage?, message:String, url:String, credits:String)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // index for the tab current selected
        guard let index = self.tabBarController?.selectedIndex else {return}
        guard let currentTab = self.tabBarController?.tabBar.items?[index].title else {return}
        details = viewModel.getDetails(forKey: currentTab)
        imageView.image = details?.image
        message.text = details?.message
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? SimbaDetailViewController
        destination?.details = details
    }


}

