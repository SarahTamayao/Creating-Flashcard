//
//  ViewController.swift
//  Creating Flashcard
//
//  Created by Kevin Li on 3/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnFlashCard(_ sender: Any) {
        if frontLabel.isHidden == false{
            frontLabel.isHidden = true
        }
        //toggles off
        else{
            frontLabel.isHidden = false
        }
    }
    
    
    func updateFlashcard(question: String, answer: String){
        frontLabel.text = question
        backLabel.text = answer
        
        //center the text
        frontLabel.textAlignment = .center
        backLabel.textAlignment = .center
    }
    
    
    //this function connects creationViewController to ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }


}

