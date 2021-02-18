//
//  ViewController.swift
//  Consolidation4
//
//  Created by Alex Davidson on 2/16/21.
//

import UIKit

class ViewController: UIViewController {
    //UI Components in view
    var clueLabel: UILabel! //
    var currentAnswer: UILabel! //
    var hangedMan: UIImageView!
    var letterButtons = [UIButton]()
    var activatedButtons = [UIButton]()
    var resetButton: UIButton! //
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        //add all the individual views
        
        //Describes the label that holds the clue for the hangman game
        clueLabel = UILabel()
        clueLabel.translatesAutoresizingMaskIntoConstraints = false
        clueLabel.font = UIFont.systemFont(ofSize: 24)
        clueLabel.text = "CLUE LABEL"
        clueLabel.textAlignment = .center
        clueLabel.layer.backgroundColor = UIColor.red.cgColor
        view.addSubview(clueLabel)
        
        //Describes the label holding the answer being built
        currentAnswer = UILabel()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.font = UIFont.systemFont(ofSize: 24)
        currentAnswer.text = "_____ ___ ____" //Guess the word
        currentAnswer.layer.backgroundColor = UIColor.blue.cgColor

        view.addSubview(currentAnswer)
        
        //Describes the image view holding the image of the hanged man
        hangedMan = UIImageView()
        hangedMan.translatesAutoresizingMaskIntoConstraints = false
        hangedMan.layer.backgroundColor = UIColor.red.cgColor

        view.addSubview(hangedMan)
        
        //Describes the reset button
        let reset = UIButton(type: .system)
        reset.translatesAutoresizingMaskIntoConstraints = false
        reset.setTitle("reset", for: .normal)
        reset.addTarget(self, action: #selector(resetTapped), for: .touchUpInside)
        view.addSubview(reset)
        
        //Describes the buttons view that hold all the letters
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.layer.borderWidth = 1
        buttonsView.layer.borderColor = UIColor.lightGray.cgColor
        
        NSLayoutConstraint.activate([
        //TODO Autolayout constraints for the view
            clueLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            clueLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            clueLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            
            hangedMan.topAnchor.constraint(equalTo: clueLabel.bottomAnchor),
            hangedMan.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            currentAnswer.topAnchor.constraint(equalTo: hangedMan.bottomAnchor),
            currentAnswer.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            currentAnswer.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
//            buttonsView.widthAnchor.constraint(equalToConstant: 750),
//            buttonsView.heightAnchor.constraint(equalToConstant: 320),
//            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            buttonsView.topAnchor.constraint(equalTo: hangedMan.bottomAnchor, constant: 20),
//            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            
        
        ])
        
        //TODO For-loop to populate the buttons view with spaced out letterButtons
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO Load level from txt file (perform in background)
            performSelector(inBackground: #selector(loadLevel), with: nil)
    }
    
    //TODO letterTapped Function
    @objc func letterTapped(_ sender: UIButton) {
        
    }
    
    //TODO resetButton Function
    @objc func resetTapped(_ sender: UIButton) {
        
    }
    
    //TODO loadLevel Function
    @objc func loadLevel() {
        
    }
}

