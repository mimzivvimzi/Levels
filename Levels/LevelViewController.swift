//
//  LevelViewController.swift
//  Levels
//
//  Created by Michelle Lau on 2020/08/15.
//  Copyright © 2020 Michelle Lau. All rights reserved.
//

import UIKit

protocol LevelDelegate {
    func didSelectLevel(_ levelName: String)
}

class LevelViewController: UIViewController {
    
    var delegate: LevelDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func levelSelected(_ sender: UIButton) {
        guard let levelName = sender.titleLabel?.text else { return }
        if let delegateObject = delegate {
            delegateObject.didSelectLevel(levelName)
        }
    }
}
