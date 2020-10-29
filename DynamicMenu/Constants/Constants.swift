//
//  Constants.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/26/20.
//

import UIKit

struct Data {
    let menuArray: [[(title: String, segue: String?, shape: ShapeType, font: Font, fontSize: CGFloat, titleColor: UIColor, shapeColor: UIColor, frameX: Int, frameY: Int, frameWidth: Int, frameHeight: Int, borderColor: UIColor, borderWidth: CGFloat)]] = [
        [
            ("Play",     K.one,   .circle,        .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
            ("Sound",    nil,     .circle,        .bold,    40, .label, #colorLiteral(red: 0.4745098039, green: 0.8392156863, blue: 0.9764705882, alpha: 1), 0, 0, 150, 150,     .label, 0.0),
            ("Settings", K.three, .roundedSquare, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 100, 0, 200, 80,    .label, 0.0),
            ("Friends",  K.four,  .circle,        .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,   .label, 0.0),
            ("Scores",   K.five,  .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,   .label, 0.0),
        ],
        [
            ("Users",  K.one,     .circle, .regular, 60, .label, .systemBackground, 100, 100, 180, 100, .label, 1.0),
            ("Tags", K.two,    .circle, .bold,    40, .label, .systemBackground, 0, 0, 180, 100,     .label, 1.0),
            ("Jobs", K.three, .circle, .bold, 40, .label, .systemBackground, 100, 0, 180, 100,   .label, 1.0),
            ("Companies", K.four,  .circle, .bold,    25, .label, .systemBackground, 0, 400, 180, 100,   .label, 1.0),
            ("Newest", K.five,   .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Active", K.one,     .circle, .regular, 50, .label, .systemBackground, 100, 100, 180, 100, .label, 1.0),
            ("Bountied", K.two,    .circle, .bold,    25, .label, .systemBackground, 0, 0, 180, 100,     .label, 1.0),
            ("Unanswered", K.three, .circle, .regular, 25, .label, .systemBackground, 100, 0, 180, 100,   .label, 1.0),
            ("More", K.four,  .circle, .bold,    50, .label, .systemBackground, 0, 400, 180, 100,   .label, 1.0),
            ("Filter", K.five,   .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Products", K.five,   .circle, .bold, 38, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Teams", K.five,   .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Free Trial", K.five,   .circle, .regular, 25, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Home", K.five,   .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
        ],
        [
            ("Order Now", K.one,     .circle,        .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
            ("Menu", K.two,    .circle,        .bold,    40, .label, #colorLiteral(red              : 0.4745098054, green              : 0.8392156959, blue              : 0.9764705896, alpha              : 1), 0, 0, 150, 150,       .label, 0.0),
            ("Reservations", K.three, .roundedSquare, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 100, 0, 200, 80,    .label, 0.0),
            ("Locations", K.four,  .circle,        .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,    .label, 0.0),
            ("Gift Cards", K.five,   .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,    .label, 0.0),
            ("More", K.five,   .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,    .label, 0.0),
        ],
        [
            ("Settings", K.one,     .circle,        .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
            ("Settings", K.two,    .circle,        .bold,    40, .label, #colorLiteral(red              : 0.4745098054, green              : 0.8392156959, blue              : 0.9764705896, alpha              : 1), 0, 0, 150, 150,       .label, 0.0),
            ("Settings", K.three, .roundedSquare, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 100, 0, 200, 80,    .label, 0.0),
            ("Settings", K.four,  .circle,        .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,    .label, 0.0),
            ("Settings", K.five,   .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,    .label, 0.0),
        ], 
        
    ]

    let shapeDict: [Int: String] = [
        0 : K.one,
        1 : K.two,
        2 : K.three,
        3 : K.four,
        4 : K.five
    ]
}


struct K {
    static var oops  = "Oops"
    static var one   = "One"
    static var two   = "Two"
    static var three = "Three"
    static var four  = "Four"
    static var five  = "Five"
}





