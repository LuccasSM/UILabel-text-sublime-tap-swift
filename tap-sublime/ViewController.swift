//
//  ViewController.swift
//  tap-sublime
//
//  Created by Luccas Santana Marinho on 03/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemCyan
        
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    
    private lazy var label: UILabel = {
        let label = UILabel()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.printando(_:)))
        label.addGestureRecognizer(tap)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let attributes: [NSAttributedString.Key : Any] = [NSAttributedString.Key.underlineStyle: 1]
        let underlineAttributedString = NSAttributedString(string: "Detalhes?", attributes: attributes)
        label.attributedText = underlineAttributedString
        label.textColor = .white
        return label
    }()
    
    @objc func printando(_ sender: UITapGestureRecognizer) {
        print("Printando")
    }
}
