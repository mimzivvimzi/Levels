//
//  ViewController.swift
//  Levels
//
//  Created by Michelle Lau on 2020/08/15.
//  Copyright © 2020 Michelle Lau. All rights reserved.
//

import UIKit
import RxSwift

class MainViewController: UIViewController { //, LevelDelegate {
    
    func didSelectLevel(_ levelName: String) {
        levelLabel.text = levelName
    }
    
    
    @IBOutlet weak var levelLabel: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectLevel(_ sender: UIBarButtonItem) {
        guard let levelVC = storyboard?.instantiateViewController(identifier: "LevelViewController") as? LevelViewController else { return }
        levelVC.selectedLevel.subscribe(onNext: { [weak self] level in
            self?.levelLabel.text = "You chose \(level)"
        })
//        levelVC.delegate = self
        navigationController?.pushViewController(levelVC, animated: true)
    }
    
}

