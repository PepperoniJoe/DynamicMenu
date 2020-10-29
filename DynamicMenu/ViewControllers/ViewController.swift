//
//  ViewController.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/25/20.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var menu = DynamicMenu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menu.createMenu(displayView: view, menuType: menuType)
        menu.delegate = self
    }
    
    //MARK: - Remove Root Navigation Header ; Pause/Restart Animation
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        menu.reappear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        menu.disappear()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let button = sender as? Shape {
            segue.destination.title = button.titleLabel?.text
            segue.destination.view.backgroundColor = button.backgroundColor
        }
    }
}  // end of ViewController


extension ViewController: DynamicMenuDelegate {
    func selectScreen(segue: String?, sender: Shape) {
        if let segue = segue {
            performSegue(withIdentifier: segue, sender: sender)
        }
    }
}

