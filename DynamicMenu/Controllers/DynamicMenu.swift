//
//  DynamicMenu.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/27/20.
//

import UIKit
import CoreMotion

protocol DynamicMenuDelegate {
    func selectScreen(segue: String?, sender: Shape)
}

class DynamicMenu {
    
    var shapes        : [UIView] = []
    var animator      : Animator!
    var motionManager : CMMotionManager!
    var timer         : Timer!
    var isSoundOn     : Bool = false
    var delegate      : DynamicMenuDelegate?
    let data = Data()
    var menuType = 0
    
    //MARK: - Menu Creation
    func createMenu(displayView: UIView, menuType: Int) {
        self.menuType = menuType
        addMotionDetection()
        createShapes(displayView: displayView, menuType: menuType)
        createAnimator(displayView: displayView, backgroundColor: data.bgColor)
        animator.addBehaviors(items: shapes)
        createTimer(time: 0.1, shouldRepeat: true)
    }
    
    //MARK: - SET UP
    
    private func createAnimator(displayView: UIView, backgroundColor: UIColor ) {
        animator = Animator(referenceView: displayView)
        animator.referenceView?.backgroundColor = backgroundColor
    }
    
    private func addMotionDetection() {
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates()
    }
    
    private func createShapes(displayView: UIView, menuType: Int) {
        
        for (key, info) in data.menuArray[menuType].enumerated() {
            
            let shape = Shape(frame: CGRect(x: info.frameX, y: info.frameY, width: info.frameWidth, height: info.frameHeight))
                .title(info.title, font: info.font.rawValue, fontSize: info.fontSize, titleColor: info.titleColor)
                .shape(info.shape, imageName: info.imageName)
                .shadow(data.shadow, isOn: data.isShadowOn)
                .color(info.shapeColor, shape: info.shape)
                .borderColor(info.borderColor, width: info.borderWidth)
                .segue(info.segue)
                .tag(key)
            
            shape.addTarget(self, action: #selector(selectButton(sender:)), for: .touchUpInside)
            shapes.append(shape)
            displayView.addSubview(shape)
        }
    }
    
    //MARK: - Button actions
    
    @objc func selectButton(sender: Shape) {
        let buttonType = data.menuArray[menuType][sender.tag].segue

        if buttonType == nil {
            isSoundOn = !isSoundOn
            animator.isSoundOn = isSoundOn
            let sound = isSoundOn ? " 🔊 " : " 🔈 "
            _ = sender.title( sound , font: Font.plain.rawValue, fontSize: 50, titleColor: UIColor.white)
        } else {
            disappear()
            delegate?.selectScreen(segue: buttonType, sender: sender)
        }
    }
    
    
    //MARK: - Timer methods to move shapes
    
    private func createTimer(time: Double, shouldRepeat: Bool) {
        timer = Timer.scheduledTimer(timeInterval: time, target: self, selector: #selector(update), userInfo: nil, repeats: shouldRepeat)
    }
    
    @objc func update() {
        if let accelerometerData = motionManager.accelerometerData {
            animator.gravity.gravityDirection = CGVector(dx: accelerometerData.acceleration.x , dy: accelerometerData.acceleration.y * -1)
        }
    }
    
    //MARK: - Animation pause/restart
    
    func reappear() {
        animator.addBehaviors(items: shapes)
        createTimer(time: 0.1, shouldRepeat: true)
    }
    
    func disappear() {
        animator.removeAllBehaviors()
        timer.invalidate()
    }
}
