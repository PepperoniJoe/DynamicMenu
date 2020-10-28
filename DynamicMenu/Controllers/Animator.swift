//
//  Animator.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/27/20.
//

import UIKit
import AVFoundation

class Animator: UIDynamicAnimator  {
    
    var gravity     : UIGravityBehavior!
    var isSoundOn   : Bool = false
    
    private func addGravity(_ items: [UIView]) {
        gravity = UIGravityBehavior(items: items)
        gravity.magnitude = 1.0
        self.addBehavior(gravity)
    }
    
    private func addCollisionBehavior(_ items: [UIView]) {
        let collision = UICollisionBehavior(items: items)
        collision.collisionDelegate = self
        collision.translatesReferenceBoundsIntoBoundary = true
        self.addBehavior(collision)
    }
    
    private func addItemBehaviors(_ items: [UIView]) {
        let itemBehaviour = UIDynamicItemBehavior(items: items)
        itemBehaviour.elasticity     = 0.7
        itemBehaviour.friction       = 0.0
        itemBehaviour.density        = 1.0
        itemBehaviour.allowsRotation = true
        itemBehaviour.resistance     = 0.0
        self.addBehavior(itemBehaviour)
    }
    
    func addBehaviors(items: [UIView]) {
        addGravity(items)
        addCollisionBehavior(items)
        addItemBehaviors(items)
    }
}  // end of Animator


extension Animator: UICollisionBehaviorDelegate {
    
    func collisionBehavior(_ behavior: UICollisionBehavior,
                           beganContactFor item: UIDynamicItem,
                           withBoundaryIdentifier identifier: NSCopying?,
                           at p: CGPoint) {
        if isSoundOn {
            AudioServicesPlayAlertSound(SystemSoundID(1057))
        }
    }
} // end of UICollisionBehaviorDelegate
