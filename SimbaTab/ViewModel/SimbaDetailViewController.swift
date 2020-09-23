//
//  SimbaDetailViewController.swift
//  SimbaTab
//
//  Created by Vinh Tran on 23/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import UIKit

class SimbaDetailViewController: UIViewController {
    
    @IBOutlet weak var simbaImage: UIImageView!
    
    @IBOutlet weak var url: UILabel!
    
    @IBOutlet weak var credits: UITextView!
    
    var details:(image:UIImage?, message:String, url:String, credits:String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let details = details {
            simbaImage.image = details.image
            url.text = details.url
            credits.text = details.credits
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
