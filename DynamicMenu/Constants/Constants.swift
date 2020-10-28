//
//  Constants.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/26/20.
//

import UIKit

struct Data {
    let shapeArray: [(title: String, shape: ShapeType, font: Font, fontSize: CGFloat, titleColor: UIColor, shapeColor: UIColor, frameX: Int, frameY: Int, frameWidth: Int, frameHeight: Int, borderColor: UIColor, borderWidth: CGFloat)] = [
        (K.play,     .circle,        .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
        (K.sound,    .circle,        .bold,    40, .label, #colorLiteral(red              : 0.4745098054, green              : 0.8392156959, blue              : 0.9764705896, alpha              : 1), 0, 0, 150, 150,       .label, 0.0),
        (K.settings, .roundedSquare, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 100, 0, 200, 80,    .label, 0.0),
        (K.friends,  .circle,        .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,    .label, 0.0),
        (K.scores,   .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,    .label, 0.0),
    ]

    let shapeDict: [Int: String] = [
        0 : K.play,
        1 : K.sound,
        2 : K.settings,
        3 : K.friends,
        4 : K.scores
    ]
}


struct K {
    static var oops     = "Oops"
    static var sound    = "Sound"
    static var play     = "Play"
    static var settings = "Settings"
    static var friends  = "Friends"
    static var scores   = "Scores"
}





