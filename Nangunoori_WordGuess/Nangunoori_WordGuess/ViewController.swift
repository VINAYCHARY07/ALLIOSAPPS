//
//  ViewController.swift
//
//  Nangunoori_WordGuess
//
//  Created by Nangunoori,Vinay Chary on 10/17/23.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
  
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    

    
    
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    
    @IBOutlet weak var CheckButton: UIButton!
    
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    var words = [["ROSE", "FLOWER"],
                 ["DOG", "Animal"],
                 ["BIKE", "Two wheeler"],
                 ["NTR", "Actor"],["CAR", "Four wheeler"]]
    var images = [["rose"],
                      ["dog"],
                      ["bike"],
                      ["ntr"],
                      ["car"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    var imageNumber = 0
        var x = 0
        var y = 5
        var z = 0
    let maxNumOfWrongGuesses = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CheckButton.isEnabled = false;
        
        PlayAgainButton.isHidden = true
        
        word = words[count][0]
        userGuessLabel.text=""
        
        updateUnderscores();
        
        hintLabel.text = "Hint: "+words[count][1]
        statusLabel.text = ""
        
        wordsGuessedLabel.text = wordsGuessedLabel.text! + "\(x)"
        
        wordsRemainingLabel.text = wordsRemainingLabel.text! + "\(y)"
        
        totalWordsLabel.text = totalWordsLabel.text! + "5"
        
        guessCountLabel.text = "You have made " + "\(z)" + " guesses"
        
        
    }
        
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        
        z = z+1
        
        var letter = guessLetterField.text!
        
        
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_ "
            }
        }
        
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
        guessCountLabel.text = "You have made " + "\(z)" + " guesses"
        
        if z > maxNumOfWrongGuesses {
            guessCountLabel.text = "You have used all the available guesses, please play again"
            PlayAgainButton.isHidden = false
            count =  count-1
            imageNumber = imageNumber-1
            
        }
        
      
             if userGuessLabel.text!.contains("_") == false{
                 
                 PlayAgainButton.isHidden = false;
                 CheckButton.isEnabled = false;
                 
                 displayImage.image = UIImage(named: images[imageNumber][0])
                 wordsGuessedLabel.text = wordsGuessedLabel.text! + ""
                 x += 1
                 y -= 1
                 
                 wordsGuessedLabel.text = "Total number of words guessed successfully: " + "\(x)"
                 wordsRemainingLabel.text = "Total number of words remaining in game: " + "\(y)"
                 guessCountLabel.text = "Wow! You have made \(z) guesses to guess the word! "
             }
             CheckButton.isEnabled = false
    }
    
        
        @IBAction func playAgainButtonPressed(_ sender: UIButton) {
            
            PlayAgainButton.isHidden = true
            
            lettersGuessed = ""
            count += 1
            imageNumber = imageNumber+1

            
            if count == words.count{
                
                statusLabel.text = "Congrualtions! You are done with the game!\r Please start over again"
                
                guessCountLabel.text = ""
                hintLabel.text = ""
                displayImage.image = UIImage(named: "done")
                
                userGuessLabel.text = ""
                hintLabel.text = ""
                guessCountLabel.text = ""
                PlayAgainButton.isHidden = false
                
            }
            else{
                
                if(count >= 6) {
                    count = 0
                    imageNumber = 0
                    x = 0
                    y = 5
                    wordsGuessedLabel.text = "Total number of words guessed successfully: " + "\(x)"
                    wordsRemainingLabel.text = "Total number of words remaining in game:" + "\(y)"
                    statusLabel.text = ""
                }
                word = words[count][0]
                
                hintLabel.text = "Hint: "
                hintLabel.text! += words[count][1]
                
                CheckButton.isEnabled = true
                displayImage.image = UIImage(named: "")
                
                userGuessLabel.text = ""
                updateUnderscores()
                z = 0
                            guessCountLabel.text = "You have made " + "\(z)" + " guesses"
                        }
                        
            
        }
        
        
        
        
        
        func updateUnderscores(){
            for letter in word{
                userGuessLabel.text! += "_ "
            }
        }
        
    
    @IBAction func enterLabelChanged(_ sender: Any) {
        
       
               var textEnterd = guessLetterField.text!;
               
               textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
               guessLetterField.text = textEnterd
               
                    if textEnterd.isEmpty{
                   CheckButton.isEnabled = false
               }
               else{
                   CheckButton.isEnabled = true
               }
               
    }
    
    
    
}
