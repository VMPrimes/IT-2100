//
//  ViewController.swift
//  Lab 12-PresentView
//
//  Created by Vickie Primes on 4/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitleColor(.brown, for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitle("Pasame un grito", for: .normal)
        return button
    
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc private func didTapButton() {
        let vc = DosViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .partialCurl
        present(vc, animated: true)

        
}


}
