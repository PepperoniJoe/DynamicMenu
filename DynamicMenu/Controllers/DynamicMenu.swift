//
//  DynamicMenu.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/27/20.
//

import UIKit
import CoreMotion

protocol DynamicMenuDelegate {
    func selectScreen(segueID: String)
}


class DynamicMenu {
    
    var shapes        : [UIView] = []
    var animator      : Animator!
    var motionManager : CMMotionManager!
    var timer         : Timer!
    var isSoundOn     : Bool = false
    var delegate      : DynamicMenuDelegate?
    let data = Data()
    
    //MARK: - Menu Creation
    func createMenu(displayView: UIView, menuType: Int) {
        addMotionDetection()
        createShapes(displayView: displayView, menuType: menuType)
        createAnimator(displayView: displayView)
        animator.addBehaviors(items: shapes)
        createTimer(time: 0.1, shouldRepeat: true)
    }
    
    //MARK: - SET UP
    
    func createAnimator(displayView: UIView) {
        animator = Animator(referenceView: displayView)
        animator.referenceView?.backgroundColor = .systemBackground
    }
    
    func addMotionDetection() {
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates()
    }
    
    func createShapes(displayView: UIView, menuType: Int) {
        
        for (key, info) in data.menuArray[menuType].enumerated() {
            
            let shape = Shape(frame: CGRect(x: info.frameX, y: info.frameY, width: info.frameWidth, height: info.frameHeight))
                .title(info.title, font: info.font.rawValue, fontSize: info.fontSize, titleColor: info.titleColor)
                .shape(info.shape)
                .color(info.shapeColor)
                .borderColor(info.borderColor, width: info.borderWidth)
                .tag(key)
            
            shape.addTarget(self, action: #selector(selectButton(sender:)), for: .touchUpInside)
            shapes.append(shape)
            displayView.addSubview(shape)
        }
    }
    
    
    //MARK: - Button actions
    
    @objc func selectButton(sender: Shape) {
        if let buttonType = data.shapeDict[sender.tag] {
            if buttonType == K.sound {
                isSoundOn = !isSoundOn
                animator.isSoundOn = isSoundOn
            } else {
                disappear()
                delegate?.selectScreen(segueID: buttonType)
            }
        }
    }
    
    
    //MARK: - Timer methods to move shapes
    
    func createTimer(time: Double, shouldRepeat: Bool) {
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
