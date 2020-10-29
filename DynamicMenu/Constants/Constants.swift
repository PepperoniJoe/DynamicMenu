//
//  Constants.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/26/20.
//

import UIKit

//MARK: - Pick Desired Menu Style
    let menuType = 0 // Corresponds to index number of menuArray


struct Data {
    
    let bgColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let isShadowOn = true
    
    let menuArray: [[(title: String, segue: String?, shape: ShapeType, font: Font, fontSize: CGFloat, titleColor: UIColor, shapeColor: UIColor, frameX: Int, frameY: Int, frameWidth: Int, frameHeight: Int, borderColor: UIColor, borderWidth: CGFloat)]] = [
        [
            ("Play",     K.one,   .circle,        .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
            (" 🔈",    nil,     .circle,        .plain,    80, .label, #colorLiteral(red: 0.4745098039, green: 0.8392156863, blue: 0.9764705882, alpha: 1), 0, 0, 150, 150,     .label, 0.0),
            ("Settings", K.three, .roundedSquare, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 100, 0, 200, 80,    .label, 0.0),
            ("Friends",  K.four,  .circle,        .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,   .label, 0.0),
            ("Scores",   K.five,  .roundedSquare, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,   .label, 0.0),
        ],
        [
            ("Users",      K.one,   .circle, .regular, 60, .label, .systemBackground, 100, 100, 180, 100, .label, 1.0),
            ("Tags",       K.two,   .circle, .bold,    40, .label, .systemBackground, 0, 0, 180, 100,     .label, 1.0),
            ("Jobs",       K.three, .circle, .bold,    40, .label, .systemBackground, 100, 0, 180, 100,   .label, 1.0),
            ("Companies",  K.four,  .circle, .bold,    25, .label, .systemBackground, 0, 400, 180, 100,   .label, 1.0),
            ("Newest",     K.five,  .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Active",     K.one,   .circle, .regular, 50, .label, .systemBackground, 100, 100, 180, 100, .label, 1.0),
            ("Bountied",   K.two,   .circle, .bold,    25, .label, .systemBackground, 0, 0, 180, 100,     .label, 1.0),
            ("Unanswered", K.three, .circle, .regular, 25, .label, .systemBackground, 100, 0, 180, 100,   .label, 1.0),
            ("More",       K.four,  .circle, .bold,    50, .label, .systemBackground, 0, 400, 180, 100,   .label, 1.0),
            ("Filter",     K.five,  .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Products",   K.five,  .circle, .bold,    38, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Teams",      K.five,  .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Free Trial", K.five,  .circle, .regular, 25, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
            ("Home",       K.five,  .circle, .regular, 40, .label, .systemBackground, 0, 200, 180, 100,   .label, 1.0),
        ],
        [
            ("Order Now",    K.one,   .square, .regular, 30, .label, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 100, 100, 175, 80, .label, 0.0),
            ("Menu",         K.two,   .square, .bold,    40, .label, #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), 0, 0, 250, 250,     .label, 0.0),
            ("Reservations", K.three, .square, .regular, 25, .label, #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), 100, 0, 200, 80,    .label, 0.0),
            ("Locations",    K.four,  .square, .bold,    20, .label, #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), 0, 400, 110, 50,   .label, 0.0),
            ("Gift Cards",   K.five,  .square, .regular, 25, .label, #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), 200, 0, 180, 60,   .label, 0.0),
            ("More",         K.five,  .square, .regular, 40, .label, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 200, 0, 140, 80,   .label, 0.0),
            ("Specials",    K.one,   .square, .regular, 30, .label, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 150, 50, .label, 0.0),
            ("Hours",       K.two,   .square, .bold,    30, .label, #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), 0, 0, 130, 60,     .label, 0.0),
            ("Guests",      K.three, .square, .regular, 35, .label, #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), 100, 0, 200, 80,    .label, 0.0),
            ("Delivery",    K.four,  .square, .bold,    20, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 120, 60,   .label, 0.0),
            ("Additions",   K.five,  .square, .regular, 25, .label, #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), 200, 0, 150, 70,   .label, 0.0),
        ],
        [
            ("Holiday Deals",    K.one,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 250, 50, .label, 1.0),
            ("Returns & Orders", K.two,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), 0, 0, 250, 50,  .label, 1.0),
            ("Account",          K.three, .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 100, 0, 250, 50,   .label, 1.0),
            ("Customer Service", K.four,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 0, 400, 250, 50, .label, 1.0),
            ("Buy Again",        K.five,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), 200, 0, 250, 50,   .label, 1.0),
            ("Best Sellers",     K.one,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 100, 100, 250, 50, .label, 1.0),
            ("Gift Cards",       K.two,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 0, 0, 250, 50, .label, 1.0),
            ("Prime Video",      K.three, .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 100, 0, 250, 50,  .label, 1.0),
            ("Recently Viewed Items", K.four, .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 0, 400, 250, 50, .label, 1.0),
            ("Review Your Purchase", K.five,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 200, 0, 250, 50, .label, 1.0),
            ("Recommended",      K.one,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 100, 100, 250, 50, .label, 1.0),
            ("Save on Tools",    K.two,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 0, 0, 250, 50,  .label, 1.0),
            ("Daily Deal",       K.three, .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 100, 0, 250, 50, .label, 1.0),
            ("New Deals",        K.four,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 0, 400, 250, 50, .label, 1.0),
            ("Digital Content",  K.five,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 200, 0, 250, 50, .label, 1.0),
            ("Shop by Department", K.five,  .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), 200, 0, 250, 50, .label, 1.0),
            ("Programs and Features", K.one,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 100, 100, 250, 50, .label, 1.0),
            ("Help and Settings", K.two,   .roundedSquare, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 0, 0, 250, 50, .label, 1.0),
        ],
        [
            ("Lemon", K.four, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 0.9317476455), 100, 100, 120, 120, .white, 2.0),
            ("Lemon", K.four, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 0.9317476455), 100, 100, 120, 120, .white, 2.0),
            ("Lime", K.three, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 0.78125), 0, 0, 120, 120,  .white, 2.0),
            ("Cherry", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 0.8571008134), 100, 0, 120, 120,   .white, 2.0),
            ("Grape", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 0.8389875856), 0, 400, 120, 120, .white, 2.0),
            ("Berry", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 0.7623608733), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 0.8939693921), 100, 100, 120, 120, .white, 2.0),
            ("Cherry", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 0.8571008134), 100, 0, 120, 120,   .white, 2.0),
            ("Grape", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 0.8389875856), 0, 400, 120, 120, .white, 2.0),
            ("Berry", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 0.7623608733), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565),#colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 0.8939693921), 100, 100, 120, 120, .white, 2.0),
            ("Lemon", K.four, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 0.9317476455), 100, 100, 120, 120, .white, 2.0),
            ("Lime", K.three, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 0.78125), 0, 0, 120, 120,  .white, 2.0),
            ("Lime", K.three, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 0.78125), 0, 0, 120, 120,  .white, 2.0),
            ("Cherry", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 0.8571008134), 100, 0, 120, 120,   .white, 2.0),
            ("Grape", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 0.8389875856), 0, 400, 120, 120, .white, 2.0),
            ("Berry", K.two, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 0.7623608733), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one, .circle, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565),#colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 0.8939693921), 100, 100, 120, 120, .white, 2.0),
        ],
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





