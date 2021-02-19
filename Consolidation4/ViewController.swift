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
        clueLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(clueLabel)
        
        //Describes the label holding the answer being built
        currentAnswer = UILabel()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.font = UIFont.systemFont(ofSize: 24)
        currentAnswer.text = "_____ ___ ____" //Guess the word
        currentAnswer.textAlignment = .center
        currentAnswer.layer.backgroundColor = UIColor.blue.cgColor
        currentAnswer.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(currentAnswer)
        
        //Describes the image view holding the image of the hanged man
        hangedMan = UIImageView()
        hangedMan.translatesAutoresizingMaskIntoConstraints = false
        hangedMan.layer.backgroundColor = UIColor.gray.cgColor
        
        view.addSubview(hangedMan)
        
        //Describes the reset button
        let reset = UIButton(type: .system)
        reset.translatesAutoresizingMaskIntoConstraints = false
        reset.setTitle("reset", for: .normal)
        reset.addTarget(self, action: #selector(resetTapped), for: .touchUpInside)
        view.addSubview(reset)
        reset.layer.borderWidth = 1
        reset.layer.borderColor = UIColor.lightGray.cgColor
        
        //Describes the buttons view that hold all the letters
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.layer.borderWidth = 2
        buttonsView.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(buttonsView)
        
        NSLayoutConstraint.activate([
        //TODO Autolayout constraints for the view
            clueLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            clueLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            clueLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            
            hangedMan.topAnchor.constraint(equalTo: clueLabel.bottomAnchor, constant: 20),
            hangedMan.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //hangedMan.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            hangedMan.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 2/3),
            hangedMan.heightAnchor.constraint(equalToConstant: 300),
            
            
            currentAnswer.topAnchor.constraint(equalTo: hangedMan.bottomAnchor, constant: 20),
            currentAnswer.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            currentAnswer.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            reset.topAnchor.constraint(equalTo: hangedMan.topAnchor),
            reset.leadingAnchor.constraint(equalTo: hangedMan.trailingAnchor, constant: 20),
            reset.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            
            buttonsView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor),
            //buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            
        
        ])
        
        //TODO For-loop to populate the buttons view with spaced out letterButtons
        let width = 80
        let height = 80
        
        for row in 0..<2{
            for column in 0..<13 {
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 24)
                letterButton.setTitle("W", for: .normal)
                letterButton.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
                
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterButton.frame = frame
                
                buttonsView.addSubview(letterButton)
                letterButtons.append(letterButton)
            }
        }
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

