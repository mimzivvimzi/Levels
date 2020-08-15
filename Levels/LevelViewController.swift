//
//  LevelViewController.swift
//  Levels
//
//  Created by Michelle Lau on 2020/08/15.
//  Copyright © 2020 Michelle Lau. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

//protocol LevelDelegate {
//    func didSelectLevel(_ levelName: String)
//}

class LevelViewController: UIViewController {
    
    //var delegate: LevelDelegate?
    
    private let selectedLevelBehaviorRelay = BehaviorRelay<String>(value: "User")
    var selectedLevel: Observable<String> {
        return selectedLevelBehaviorRelay.asObservable()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func levelSelected(_ sender: UIButton) {
        guard let levelName = sender.titleLabel?.text else { return }
        
        selectedLevelBehaviorRelay.accept(levelName)
        
//        if let delegateObject = delegate {
//            delegateObject.didSelectLevel(levelName)
//        }
    }
}
