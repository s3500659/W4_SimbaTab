//
//  SimbaViewModel.swift
//  SimbaTab
//
//  Created by Vinh Tran on 23/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

struct SimbaViewModel {
    
    // Model
    private let simbaManager = SimbaManager()
    
    // Filtering
    func getDetails(forKey key:String) -> (image:UIImage?, message:String, url:String, credits:String) {
        let details = simbaManager.getDetails(forKey: key)
        let image = UIImage(named: details.imageName)
        let message = details.message
        let url = details.url
        let credits = details.credits
        return (image, message, url, credits)
    }
}

