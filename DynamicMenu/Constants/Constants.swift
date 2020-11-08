//
//  Constants.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/26/20.
//

import UIKit

//MARK: - Pick Desired Menu Style
//       SET menuType FOR MENU DESIGN
    let menuType = 0 // Corresponds to index number of menuArray

struct Data {
    
    let bgColor: UIColor = #colorLiteral(red: 0.9775069356, green: 0.8521896005, blue: 0.5476524234, alpha: 1)
    let isShadowOn      = false
    let shadow: CGFloat = 0.0
    
    let menuArray: [[(title: String, segue: String?, shape: ShapeType, imageName: String?, font: Font, fontSize: CGFloat, titleColor: UIColor, shapeColor: UIColor, frameX: Int, frameY: Int, frameWidth: Int, frameHeight: Int, borderColor: UIColor, borderWidth: CGFloat)]] = [
        [
            ("Supplies", K.one, .circle, nil, .regular, 40, .label, .systemBackground, 10, 0, 220, 60, .label, 1.0),
            ("Treats",       K.two, .circle, nil, .bold,    40, .label, .systemBackground, 0, 0, 140, 140,     .label, 1.0),
            ("Food",         K.three, .circle, nil, .plain,    60, .label, .systemBackground, 100, 100, 150, 150,   .label, 1.0),
            ("Toys",         K.four, .circle, nil, .bold,    45, .label, .systemBackground, 0, 400, 110, 110,   .label, 1.0),
            ("Carriers",     K.four, .circle, nil, .regular,    40, .label, .systemBackground, 0, 400, 200, 90,   .label, 1.0),
            ("Litter", K.four, .circle, nil, .regular,    50, .label, .systemBackground, 0, 400, 220, 80,   .label, 1.0),
            ("Beds/Towers",     K.four, .circle, nil, .plain,    25, .label, .systemBackground, 0, 400, 200, 60,   .label, 1.0),
            ("Flea and Tick",     K.four, .circle, nil, .regular,    25, .label, .systemBackground, 50, 50, 200, 60,   .label, 1.0),
            ("Cat Songs",    K.one, .image,  "Cat1", .plain, 12, .label, #colorLiteral(red: 0.6546350121, green: 0.4760367274, blue: 0.5770899057, alpha: 1), 0, 400, 106, 154, .label, 0.0),
            ("Cat Poems",    K.one, .image,  "Cat2", .plain, 12, .label, #colorLiteral(red: 0.9770404696, green: 0.4807606339, blue: 0.460550487, alpha: 1), 0, 160, 119, 131, .label, 0.0),
            ("Cat Drawings", K.one, .image,  "Cat3", .plain, 12, .label, #colorLiteral(red: 0.5610517859, green: 0.546002686, blue: 0, alpha: 1), 200, 160, 119, 131, .label, 0.0),
            ("Cat Memes",    K.one, .image,  "Cat4", .plain, 12, .label, #colorLiteral(red: 0, green: 0.5649836659, blue: 0.5651857257, alpha: 1), 200, 0, 154, 142, .label, 0.0),
            ("Cats Photos",  K.one, .image,  "Cat5", .plain, 12, .label, #colorLiteral(red: 0.8920195699, green: 0.3525260091, blue: 0.6284474134, alpha: 1), 0, 0, 106, 154, .label, 0.0),
            ("Cat Videos",   K.one, .image,  "Cat6", .plain, 12, .label, #colorLiteral(red: 0.9548518062, green: 0.7142229676, blue: 0, alpha: 1), 200, 320, 154, 142, .label, 0.0),
        ],
        [
            ("Play",     K.one,   .circle,        nil, .regular, 80, .label, #colorLiteral(red: 0.9366931319, green: 0.5399537086, blue: 0.6667494178, alpha: 1), 100, 100, 250, 250, .label, 0.0),
            (" 🔈 ",     nil,     .circle,        nil, .plain,   50, .label, #colorLiteral(red: 0.4745098039, green: 0.8392156863, blue: 0.9764705882, alpha: 1), 0, 0, 150, 150,     .label, 0.0),
            ("Settings", K.three, .roundedSquare, nil, .regular, 35, .label, #colorLiteral(red : 0.721568644, green : 0.8862745166, blue : 0.5921568871, alpha : 1), 0, 200, 200, 80,    .label, 0.0),
            ("Friends",  K.four,  .circle,        nil, .bold,    60, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 280, 180,   .label, 0.0),
            ("Scores",   K.five,  .roundedSquare, nil, .regular, 40, .label, #colorLiteral(red: 0.956412375, green: 0.6578175426, blue: 0.5438622832, alpha: 1), 200, 0, 180, 100,   .label, 0.0),
        ],
        [
            ("Users",      K.one,    .circle, nil, .regular, 60, .label, .systemBackground, 100, 100, 200, 100, .label, 1.0),
            ("Tags",       K.two,    .circle, nil, .bold,    40, .label, .systemBackground, 0, 0, 130, 60,     .label, 1.0),
            ("Jobs",       K.three,  .circle, nil, .bold,    40, .label, .systemBackground, 100, 0, 130, 60,   .label, 1.0),
            ("Companies",  K.four,   .circle, nil, .bold,    25, .label, .systemBackground, 0, 400, 150, 60,   .label, 1.0),
            ("Newest",     K.five,   .circle, nil, .regular, 40, .label, .systemBackground, 0, 200, 180, 80,   .label, 1.0),
            ("Active",     K.one,    .circle, nil, .regular, 50, .label, .systemBackground, 100, 100, 180, 80, .label, 1.0),
            ("Bountied",   K.two,    .circle, nil, .bold,    25, .label, .systemBackground, 0, 0, 150, 80,     .label, 1.0),
            ("Unanswered", K.three,  .circle, nil, .regular, 25, .label, .systemBackground, 100, 0, 180, 60,   .label, 1.0),
            ("More",       K.four,   .circle, nil, .bold,    50, .label, .systemBackground, 0, 400, 150, 80,   .label, 1.0),
            ("Filter",     K.five,   .circle, nil, .regular, 40, .label, .systemBackground, 0, 200, 150, 80,   .label, 1.0),
            ("Products",   K.five,   .circle, nil, .bold,    38, .label, .systemBackground, 0, 200, 180, 80,   .label, 1.0),
            ("Teams",      K.five,   .circle, nil, .regular, 40, .label, .systemBackground, 0, 200, 150, 80,   .label, 1.0),
            ("Free Trial", K.five,   .circle, nil, .regular, 25, .label, .systemBackground, 0, 200, 180, 60,   .label, 1.0),
            ("Home",       K.five,   .circle, nil, .regular, 40, .label, .systemBackground, 0, 200, 150, 80,   .label, 1.0),
        ],
        [
            ("Order Now",    K.one,    .square, nil, .regular, 30, .label, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 100, 100, 175, 80, .label, 0.0),
            ("Menu",         K.two,    .square, nil, .bold,    40, .label, #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), 0, 0, 250, 250,     .label, 0.0),
            ("Reservations", K.three,  .square, nil, .regular, 25, .label, #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), 100, 0, 200, 80,    .label, 0.0),
            ("Locations",    K.four,   .square, nil, .bold,    20, .label, #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), 0, 400, 110, 50,   .label, 0.0),
            ("Gift Cards",   K.five,   .square, nil, .regular, 25, .label, #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), 200, 0, 180, 60,   .label, 0.0),
            ("More",         K.five,   .square, nil, .regular, 40, .label, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 200, 0, 140, 80,   .label, 0.0),
            ("Specials",     K.one,    .square, nil, .regular, 30, .label, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 150, 50, .label, 0.0),
            ("Hours",        K.two,    .square, nil, .bold,    30, .label, #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), 0, 0, 130, 60,     .label, 0.0),
            ("Guests",       K.three,  .square, nil, .regular, 35, .label, #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), 100, 0, 200, 80,   .label, 0.0),
            ("Delivery",     K.four,   .square, nil, .bold,    20, .label, #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), 0, 400, 120, 60,   .label, 0.0),
            ("Additions",    K.five,   .square, nil, .regular, 25, .label, #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), 200, 0, 150, 70,   .label, 0.0),
        ],
        [
            ("Holiday Deals",    K.one,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 0, 0, 188, 40, .label, 1.0),
            ("Returns & Orders", K.two,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), 0, 45, 188, 40,  .label, 1.0),
            ("Account",          K.three,  .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 0, 90, 188, 40,   .label, 1.0),
            ("Customer Service", K.four,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 0, 135, 188, 40, .label, 1.0),
            ("Buy Again",        K.five,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), 0, 180, 188, 40, .label, 1.0),
            ("Gift Cards",       K.two,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 0, 225, 188, 40, .label, 1.0),
            ("Prime Video",      K.three,  .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 0, 270, 188, 40,  .label, 1.0),
            ("Recently Viewed",  K.four,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 0, 315, 188, 40, .label, 1.0),
            ("Purchases",        K.five,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 0, 360, 188, 40, .label, 1.0),
            ("Recommended",      K.one,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 0, 405, 188, 40, .label, 1.0),
            ("Save on Tools",    K.two,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 200, 0, 188, 40,  .label, 1.0),
            ("Daily Deal",       K.three,  .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), 200, 45, 188, 40, .label, 1.0),
            ("New Deals",        K.four,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), 200, 90, 188, 40, .label, 1.0),
            ("Digital Content",  K.five,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 200, 135, 188, 40, .label, 1.0),
            ("Departments",      K.five,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), 200, 180, 188, 40, .label, 1.0),
            ("Features",         K.one,    .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 200, 225, 188, 40, .label, 1.0),
            ("Help and Settings", K.two,   .roundedSquare, nil, .regular, 20, .systemBackground, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), 200, 270, 188, 40, .label, 1.0),
        ],
        [
            ("Lemon",  K.four,   .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 120, 120, .white, 2.0),
            ("Lemon",  K.four,   .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 120, 120, .white, 2.0),
            ("Lime",   K.three,  .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 1), 0, 0, 120, 120,     .white, 2.0),
            ("Cherry", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 1), 100, 0, 120, 120,   .white, 2.0),
            ("Grape",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 1), 0, 400, 120, 120,   .white, 2.0),
            ("Berry",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 1), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 1), 100, 100, 120, 120, .white, 2.0),
            ("Cherry", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 1), 100, 0, 120, 120,   .white, 2.0),
            ("Grape",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 1), 0, 400, 120, 120,   .white, 2.0),
            ("Berry",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 1), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 1), 100, 100, 120, 120, .white, 2.0),
            ("Lemon",  K.four,   .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), 100, 100, 120, 120, .white, 2.0),
            ("Lime",   K.three,  .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 1), 0, 0, 120, 120,     .white, 2.0),
            ("Lime",   K.three,  .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3790850262, green: 0.679406655, blue: 0.2013752477, alpha: 1), 0, 0, 120, 120,     .white, 2.0),
            ("Cherry", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.6784736889, green: 0.1388022762, blue: 0.0687624826, alpha: 1), 100, 0, 120, 120,   .white, 2.0),
            ("Grape",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.3478851828, green: 0.3075663227, blue: 0.9589628831, alpha: 1), 0, 400, 120, 120,   .white, 2.0),
            ("Berry",  K.two,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.2136861014, green: 0.5766190101, blue: 0.7934070172, alpha: 1), 200, 0, 120, 120,   .white, 2.0),
            ("Orange", K.one,    .circle, nil, .funky, 25, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8401380565), #colorLiteral(red: 0.9332630431, green: 0.4008268866, blue: 0.09215667306, alpha: 1), 100, 100, 120, 120, .white, 2.0),
        ],
        [
            ("Wifi",       K.one,    .image,  "Ball1", .plain, 12, .label, #colorLiteral(red: 0.0009948144434, green: 0.7751826048, blue: 0.7728715539, alpha: 1), 0, 400, 100, 100, .label, 0.0),
            ("Photos",     K.two,    .image,  "Ball2", .plain, 12, .label, #colorLiteral(red: 0.9451019168, green: 0.8836047053, blue: 0.5347298384, alpha: 1), 0, 160, 120, 120, .label, 0.0),
            ("Microphone", K.three,  .image,  "Ball3", .plain, 12, .label, #colorLiteral(red: 0.9505361915, green: 0.5736863017, blue: 0.1980937421, alpha: 1), 200, 160, 100, 100, .label, 0.0),
            ("Settings",   K.four,   .image,  "Ball4", .plain, 12, .label, #colorLiteral(red: 0.7231143117, green: 0.8726579547, blue: 0.4351766109, alpha: 1), 200, 0, 80, 80, .label, 0.0),
            ("Charts",     K.three,  .image,  "Ball5", .plain, 12, .label, #colorLiteral(red: 0.004767735954, green: 0.7750266194, blue: 0.7691761255, alpha: 1), 0, 0, 120, 120, .label, 0.0),
            ("Timers",     K.four,   .image,  "Ball6", .plain, 12, .label, #colorLiteral(red: 0.9413021207, green: 0.8834956288, blue: 0.5348696113, alpha: 1), 200, 320, 100, 100, .label, 0.0),
            ("Documents",  K.four,   .image,  "Ball7", .plain, 12, .label, #colorLiteral(red: 0.7007273436, green: 0.8521744609, blue: 0.4283357263, alpha: 1), 200, 320, 140, 140, .label, 0.0),
            ("Drawings",   K.four,   .image,  "Ball8", .plain, 12, .label, #colorLiteral(red: 0.9473592639, green: 0.5629658103, blue: 0.1932924986, alpha: 1), 200, 320, 160, 160, .label, 0.0),
            ("Videos",     K.four,   .image,  "Ball9", .plain, 12, .label, #colorLiteral(red: 0.7079086304, green: 0.8622669578, blue: 0.4274529219, alpha: 1), 200, 320, 140, 140, .label, 0.0),
            ("Trash",      K.four,   .image,  "Ball10", .plain, 12, .label, #colorLiteral(red: 0.9541819692, green: 0.5739480853, blue: 0.2037713826, alpha: 1), 200, 320, 80, 80, .label, 0.0),
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





