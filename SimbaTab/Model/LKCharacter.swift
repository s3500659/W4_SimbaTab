//
//  LKCharacter.swift
//  SimbaTab
//
//  Created by Vinh Tran on 23/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation

enum LKCharacter:String {
    case hey = "Hey", roar = "Roar", king = "King", tickle = "Tickle", unknown = "noimage"
    
    var message:String {
        switch self {
        case .hey: return "What ya doing?"
        case .roar: return "I'm working on my roar"
        case .king: return "I'm going to be king"
        case .tickle: return "Oooh that tickles"
        case .unknown: return "No message"
        }
    }
    
    var imageName:String {
        switch self {
        case .hey: return "lion_king_1"
        case .roar: return "lion_king_2"
        case .king: return "lion_king_3"
        case .tickle: return "simba_1"
        case .unknown: return "No image"
        }
    }
    
    var url:String {
        switch self {
        case .hey: return "http://pngimg.com/download/30937"
        case .roar: return "http://pngimg.com/download/30966"
        case .king: return "http://pngimg.com/download/30925"
        case .tickle: return "http://pngimg.com/download/30966"
        case .unknown: return "No URL"
        }
    }
    
    var credits:String {
        switch self{
        case .hey: return """
            This image has format transparent PNG with resolution 256x256.\n\n
            You can download this image in best resolution from this page and use it for design and web design.\n\n
            Lion King PNG with transparent background you can download for free, just click on it and save.
            """
        case .roar: return """
            This image has format transparent PNG with resolution 256x248.\n\n
            You can download this image in best resolution from this page and use it for design and web design.\n\n
            Lion King PNG with transparent background you can download for free, just click on it and save.
            """
        case .king: return """
            This image has format transparent PNG with resolution 256x248.\n\n
            You can download this image in best resolution from this page and use it for design and web design.\n\n
            Lion King PNG with transparent background you can download for free, just click on it and save.
            """
        case .tickle: return """
            This image has format transparent PNG with resolution 256x248.\n\n
            You can download this image in best resolution from this page and use it for design and web design.\n\n
            Lion King PNG with transparent background you can download for free, just click on it and save.
            """
            
        case .unknown: return "No credits"
        }
    }
}
