//
//  ViewController.swift
//  Li_Yuying_Word_Scrambler
//
//  Created by Home on 2018/9/28.
//  Copyright © 2018年 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var explainLabel: UILabel!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var hintButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var upButton1: UIButton!
    
    @IBOutlet weak var upButton2: UIButton!
    
   
    
    @IBOutlet weak var upButton3: UIButton!
    
    @IBOutlet weak var upButton4: UIButton!
    
    @IBOutlet weak var upButton5: UIButton!
    
    @IBOutlet weak var upButton6: UIButton!
    
    @IBOutlet weak var upButton7: UIButton!
    
    @IBOutlet weak var upButton8: UIButton!
    
    @IBOutlet weak var upButton9: UIButton!
    
    @IBOutlet weak var upButton10: UIButton!
    
    
    @IBOutlet weak var downButton1: UIButton!
    
    @IBOutlet weak var downButton2: UIButton!
    
    @IBOutlet weak var downButton3: UIButton!
    
    @IBOutlet weak var downButton4: UIButton!
    
    @IBOutlet weak var downButton5: UIButton!
    
    @IBOutlet weak var downButton6: UIButton!
    
    @IBOutlet weak var downButton7: UIButton!
    
    @IBOutlet weak var downButton8: UIButton!
    
    @IBOutlet weak var downButton9: UIButton!
    
    @IBOutlet weak var downButton10: UIButton!
    
    @IBOutlet weak var downButton11: UIButton!
    
    @IBOutlet weak var downButton12: UIButton!
    
    @IBOutlet weak var extraButton1: UIButton!
    
    @IBOutlet weak var extraButton2: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    var score = 50
    // The user's original score is 50
    
    var nameArray: [String] = []
    var scoreArray: [Int] = []
    // nameArray and scoreArray are used to store data
    
    var allMyStoredData = UserDefaults.standard
    // Use userdefault to store data
   
    func loadData() {
        if let loadPlayerName: [String] = UserDefaults.standard.value(forKey: "PlayerName") as? [String] {
            nameArray = loadPlayerName
        }
        if let loadPlayerScore: [Int] = UserDefaults.standard.value(forKey: "PlayerScore") as? [Int]{
            scoreArray = loadPlayerScore
        }
    }
    // This function will load the stored data

    var name=String()
    // This will store data that are passed from the log in page
    struct Question {
        var word: String
        var explanation: String
    }
    // This is the structure for the word and explanation
    
    var emptyQuestionArray:[Question]=[]
    // store the questions after shuffle
    var checkHintArray: [UIButton] = []
    // Remove the letter if hint has been clicked
    var letterArray:[String] = []
    // use fot hint part
    var hintArray:[String] = []
    // store the word needed to be hinted
    var explanationArray:[String] = []
    // used to store the explanation
    var wordArray: [String] = []
    // used to store the word
    var emptyButtonArray: [UIButton] = []
    // used to store buttons after shuffled
    var extraLetterArray: [String]=["a", "b", "c", "d", "e", "f", "g", "f", "i", "j","k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"]
    // used to fulfill all down buttons
    var emptyExtraLetterArray: [String] = []
    var buttonUsedInHint:[UIButton] = []
    var showLetterArray: [String] = []
    // used to collect letters in order to determine how many buttons are shown
    var checkWord: String = ""
    // used to store the result of the word made by button title
    var buttonTitleArray: [UIButton] = []
    // used to check the shown buttons' titles
   
    var checkArray:[String] = []
    // Used to check the word

    var first = Question(word: "Paris", explanation: "The capital city of France")
    var second = Question(word: "Caribou", explanation: "Animal on the Canadian quarter")
    var third = Question(word: "Ottawa", explanation: "The capital city of Canada")
    var forth = Question(word: "Versailles", explanation: "What gigantic palace did Louis XIV construct near Paris")
    var fifth = Question(word: "Three", explanation: "How many oceans touch Canada")
    var sixth = Question(word: "Strasbourg", explanation: "The capital city of Alsace")
    var seventh = Question(word: "Loire", explanation: "The longest river in France (1012km)")
    var eighth = Question(word: "Loonie", explanation: "What is the Canadian $1 coin called")
    var ninth = Question(word: "Nunavut", explanation: "What is the most recent territory in Canada called")
    var tenth = Question(word: "Eurostar", explanation: "What is the name of the fast train linking Paris to London")
    var eleven = Question(word: "Wines", explanation: "What are 'Moulin à vent', 'Saint Estèphe' and 'Côte de Beaune'")
    var twelve = Question(word: "Clovis", explanation: "Who was the first king of France (481-511)")
    var thirteen = Question(word: "Hotpot", explanation: "The most famous food in China")
    var fourteen = Question(word: "Berlin", explanation: "The capital city of Germany")
    var fifteen = Question(word: "Tokyo", explanation: "The capital city of Japan")
    var sixteen = Question(word: "Panda", explanation: "A special kind of animal in China")
    var seventeen = Question(word: "Brazil", explanation: "What non-European country shares France's longest border (730km)")
    var eighteen = Question(word: "Anemometer", explanation: "The instrument that used for measuring wind speed")
    var nineteen = Question(word: "Twelve", explanation: "The number of straight edges a cube have")
    var twenty = Question(word: "Crust", explanation: "Layer of planet Earth that is made up of tectonic plates")
    var twentyOne = Question(word: "Tulips", explanation: "The kind of ‘bulbs’ that were once exchanged as a form of currency")
    var twentyTwo = Question(word: "Sword", explanation: "A kind of weapon that is a falchion")
    var twentyThree = Question(word: "Dictionary", explanation: "Another word for a ‘lexicon’")
    var twentyFour = Question(word: "Blue", explanation: "The color of a Himalayan poppy")
    var twentyFive = Question(word: "lightbulb", explanation: "The first electrical item did Thomas Edison invent")
    var twentySix = Question(word: "honey", explanation: "Sweet food made by bees using nectar from flowers")
    var twentySeven = Question(word: "Hogwarts", explanation: "Name the school that Harry Potter attends")
    var twentyEight = Question(word: "Australia", explanation: "Name of a country which is the home to the kangaroo")
    var twentyNine = Question(word: "Spain", explanation: "A country sent an Armada to attack Britain in 1588")
    var thirty = Question(word: "Red", explanation: "The top color in a rainbow")
    var thirtyOne = Question(word: "Ireland", explanation: "Saint Patrick is the Patron Saint of  this country")
    var thirtyTwo = Question(word: "Oak", explanation: "From what tree do acorns come")
    var thirtyThree = Question(word: "Woody", explanation: "The name of the toy cowboy in Toy Story")
    var thirtyFour = Question(word: "Swift", explanation: "A kind of computer language")
    var thirtyFive = Question(word: "Pisa", explanation: "Which Italian city is famous for its leaning tower")
    var thirtySix = Question(word: "Goat", explanation: "On a farm a kid is a baby what")
    var thirtySeven = Question(word: "Hedwig", explanation: "What is the name of Harry Potter’s pet owl")
    var thirtyEight = Question(word: "Cardiff", explanation: "Which is the largest city in Wales")
    var thirtyNine = Question(word: "Chengdu", explanation: "China’s delicious food city")
    var forty = Question(word: "Tennis", explanation: "In which sport did Li Na excel at")
    var fortyOne = Question(word: "Shanghai", explanation: "Which is the largest Chinese city by population")
    var fortyTwo = Question(word: "Monkey", explanation: "What animal represents the Chinese year of 2016")
    var fortyThree = Question(word: "Glamorgan", explanation: "Which county did Ravi Shastri play for")
    var fortyFour = Question(word: "Punter", explanation: "Ricky Ponting is also known as what")
    var fortyFive = Question(word: "Pigeon", explanation: "The nickname of Glenn McGrath")
    var fortySix = Question(word: "Rose", explanation: "National Flower of the United States")
    var fortySeven = Question(word: "Iris", explanation: "National Flower of France")
    var fortyEight = Question(word: "Frangipani", explanation: "National Flower of Nicaragua")
    var fortyNine = Question(word: "Cornflower", explanation: "National Flower of Germany")
    var fifty = Question(word: "Lotus", explanation: "National Flower of India")
    // These are 50 words used to scramble
    

    func shuffleQuestion() {
        var questionArray = [first, second, third, forth, fifth,sixth,seventh, eighth, ninth,tenth,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen,twenty,twentyOne,twentyTwo,twentyThree,twentyFour,twentyFive,twentySix,twentySeven,twentyEight,twentyNine,thirty,thirtyOne,thirtyTwo,thirtyThree,thirtyFour,thirtyFive,thirtySix,thirtySeven,thirtyEight,thirtyNine,forty,fortyOne,fortyTwo,fortyThree,fortyFour,fortyFive,fortySix,fortySeven,fortyEight,fortyNine,fifty]
        var upperLimit: UInt32 = 50
        var random: Int
        for _ in 1...50 {
            random = Int((arc4random_uniform(upperLimit)))
            emptyQuestionArray.append(questionArray[random])
            questionArray.remove(at: random)
            upperLimit -= 1
        }
        for index in emptyQuestionArray {
            wordArray.append(index.word)
            explanationArray.append(index.explanation)
        }
    }
    // function used to shuffle all questions
    
    func buttonShuffle() {
        var buttonArray = [downButton1, downButton2, downButton3, downButton4, downButton5, downButton6, downButton7, downButton8, downButton9, downButton10, downButton11, downButton12]
        
        var upperLimit: UInt32 = 12
        var random: Int
        for _ in 1...12 {
            random = Int((arc4random_uniform(upperLimit)))
            emptyButtonArray.append(buttonArray[random]!)
            buttonArray.remove(at: random)
            upperLimit -= 1
        }
    }
    // function used to shuffle button and store in emptyButtonArray
    
    func shuffleExrtaLetter(){
        var extraLetterArray: [String]=["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v","w", "x", "y", "z"]
        var upperLimit: UInt32 = 26
        var random:Int
        for _ in 1...26 {
            random = Int((arc4random_uniform(upperLimit)))
            emptyExtraLetterArray.append(extraLetterArray[random])
            extraLetterArray.remove(at: random)
            upperLimit -= 1
        }
    }
    // This function will shuffle the letters
    
    func show(word: inout[String], explanation:inout [String], showWord: UILabel){
        showWord.text = explanation[0]
        explanation.remove(at: 0)
        for character in word[0] {
            showLetterArray.append(String(character))
            emptyButtonArray[0].setTitle(String(character), for: .normal)
            checkHintArray.append(emptyButtonArray[0])
            emptyButtonArray.remove(at: 0)
        }
         shuffleExrtaLetter()
        for index in 0..<emptyButtonArray.count {
            emptyButtonArray[0].setTitle(emptyExtraLetterArray[index], for: .normal)
            emptyButtonArray.remove(at: 0)
        }
        emptyExtraLetterArray.removeAll()
        hintArray.append(word[0])
        checkArray.append(word[0])
        word.remove(at: 0)
        for character in hintArray[0] {
            letterArray.append(String(character))
        }
        
        var upButtonArray = [upButton1, upButton2, upButton3, upButton4, upButton5, upButton6, upButton7, upButton8, upButton9, upButton10]
        for index in 0..<showLetterArray.count {
            
            upButtonArray[index]?.isHidden=false
            
        buttonUsedInHint.append(upButtonArray[index]!)
        buttonTitleArray.append(upButtonArray[index]!)
        }
        showLetterArray.removeAll()
    }
    // function used to show explanations and words, everytime, explanation will be removed after shown and hintArray will store this word
    
    func putLetterInUpButton(downButton: UIButton){
        if upButton1.currentTitle == nil {
            upButton1.setTitle(downButton.currentTitle, for: .normal)
           upButton1!.pulsate()
        } else if upButton2.currentTitle == nil {
            upButton2.setTitle(downButton.currentTitle, for: .normal)
             upButton2!.pulsate()
        } else if upButton3.currentTitle == nil {
            upButton3.setTitle(downButton.currentTitle, for: .normal)
             upButton3!.pulsate()
        } else if upButton4.currentTitle == nil {
            upButton4.setTitle(downButton.currentTitle, for: .normal)
             upButton4!.pulsate()
        } else if upButton5.currentTitle == nil {
            upButton5.setTitle(downButton.currentTitle, for: .normal)
             upButton5.pulsate()
        } else if upButton6.currentTitle == nil {
            upButton6.setTitle(downButton.currentTitle, for: .normal)
             upButton6!.pulsate()
        } else if upButton7.currentTitle == nil {
            upButton7.setTitle(downButton.currentTitle, for: .normal)
             upButton7!.pulsate()
        } else if upButton8.currentTitle == nil {
            upButton8.setTitle(downButton.currentTitle, for: .normal)
             upButton8!.pulsate()
        } else if upButton9.currentTitle == nil {
            upButton9.setTitle(downButton.currentTitle, for: .normal)
             upButton9!.pulsate()
        } else if upButton10.currentTitle == nil {
            upButton10.setTitle(downButton.currentTitle, for: .normal)
             upButton10!.pulsate()
        }
        downButton.setTitle(nil, for: .normal)
        downButton.isEnabled=false
    }
    // When the user clicks the down button. the letter on it will be put in up button
    
    func putLetterInDownButton(upButton: UIButton) {
        if downButton1.currentTitle == nil {
            downButton1.setTitle(upButton.currentTitle, for: .normal)
            downButton1.isEnabled=true
            downButton1!.pulsate()
        } else if downButton2.currentTitle == nil {
            downButton2.setTitle(upButton.currentTitle, for: .normal)
            downButton2.isEnabled=true
             downButton2!.pulsate()
        } else if downButton3.currentTitle == nil {
            downButton3.setTitle(upButton.currentTitle, for: .normal)
            downButton3.isEnabled=true
             downButton3!.pulsate()
        } else if downButton4.currentTitle == nil {
            downButton4.setTitle(upButton.currentTitle, for: .normal)
            downButton4.isEnabled=true
             downButton4!.pulsate()
        } else if downButton5.currentTitle == nil {
            downButton5.setTitle(upButton.currentTitle, for: .normal)
            downButton5.isEnabled=true
             downButton5!.pulsate()
        } else if downButton6.currentTitle == nil {
            downButton6.setTitle(upButton.currentTitle, for: .normal)
            downButton6.isEnabled=true
             downButton6!.pulsate()
        } else if downButton7.currentTitle == nil {
            downButton7.setTitle(upButton.currentTitle, for: .normal)
            downButton7.isEnabled=true
             downButton7!.pulsate()
        } else if downButton8.currentTitle == nil {
            downButton8.setTitle(upButton.currentTitle, for: .normal)
            downButton8.isEnabled=true
             downButton8!.pulsate()
        } else if downButton9.currentTitle == nil {
            downButton9.setTitle(upButton.currentTitle, for: .normal)
            downButton9.isEnabled=true
             downButton9!.pulsate()
        } else if downButton10.currentTitle == nil {
            downButton10.setTitle(upButton.currentTitle, for: .normal)
            downButton10.isEnabled=true
             downButton10!.pulsate()
        } else if downButton11.currentTitle == nil {
            downButton11.setTitle(upButton.currentTitle, for: .normal)
            downButton11.isEnabled=true
             downButton11!.pulsate()
        } else if downButton12.currentTitle == nil {
            downButton12.setTitle(upButton.currentTitle, for: .normal)
            downButton12.isEnabled=true
             downButton12!.pulsate()
        }
        upButton.setTitle(nil, for: .normal)
    }
    // When the user clicks the up button. the letter on it will be put in down button
    
    func clickdownButtonCheck(button: UIButton) {
        if button.currentTitle != nil {
            putLetterInUpButton(downButton: button)
        } else {
            button.isEnabled=false
        }
    }
    // This function will check if the tittle for the down button is empty
    
    
    func clickUpButtonCheck(button: UIButton) {
        if button.currentTitle == nil {
            button.isEnabled=false
        } else{
            putLetterInDownButton(upButton: button)
        }
    }
    // This function will check if the tittle for the up button is empty
    
    
    func buttonCheck() {
        var number = 0
           for button in buttonTitleArray {
            if button.currentTitle == nil {
                submitButton.isEnabled = false
                downButtonEnable()
            } else {
                number += 1
            }
        }
        if number == buttonTitleArray.count {
            submitButton.isEnabled=true
        } else {
            number = 0
        }
        
        if submitButton.isEnabled==true {
            let downButtonArray = [downButton1,downButton2, downButton3,downButton4,downButton5, downButton6, downButton7,downButton8,downButton9,downButton10,downButton11,downButton12]
            for index in 0...11 {
                if downButtonArray[index]?.isEnabled==true {
                    downButtonArray[index]?.isEnabled=false
                }
            }
        }
    }
    // The user cannot click submit button until up buttons all have title.
    
    func downButtonEnable() {
        let downButton = [downButton1,downButton2, downButton3,downButton4,downButton5, downButton6, downButton7,downButton8,downButton9,downButton10,downButton11,downButton12]
        for button in downButton {
            button?.isEnabled=true
        }
    }
    //This function will enable all down Buttons
    
    let alert = UIAlertController(title: "You are correct", message: "Do you want to try more", preferredStyle: .alert)
    let alert2 = UIAlertController(title: "Sorry, you are wrong", message: "Try next one, you can do it!", preferredStyle: .alert)
    let giveUpAlert = UIAlertController(title: "Really ?", message: "You want to give up ?", preferredStyle: .alert)
    // These are used to show alert boxes
    
    func giveUp() {
        for index in 0..<buttonUsedInHint.count {
    buttonUsedInHint[index].setTitle(letterArray[index], for: .normal)
            score -= 1
        }
         scoreLabel.text = "Score: \(score)"
        hintRemoveLetter()
        downButtonEnableFalse()
        extraButton1.isEnabled=false
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.moveNext()
        }
    }
    //When the user clicks the "give up this one", this function will move to the next word
    
    func downButtonEnableFalse(){
        let down = [downButton1,downButton2,downButton3,downButton4,downButton5,downButton6,downButton7,downButton8,downButton9,downButton10,downButton11,downButton12]
        for button in down {
            button?.isEnabled=false
        }
    }
    //This function will disable all down buttons
    
    var number2 = 0
    var successiveSuccess = 0
    func submitCheck() {
        for button in buttonTitleArray {
            checkWord += button.currentTitle!
        }
        if checkWord.lowercased() == checkArray[0].lowercased() {
            score += checkWord.count
            successiveSuccess += 1
            switch successiveSuccess {
            case 1...10: score += 2
            case 11...20: score += 4
            case 21...30: score += 8
            case 31...40: score += 16
            default: score += 32
            }
            scoreLabel.text = "Score: \(score)"
            number2 = 1
            for button in buttonTitleArray {
                button.pulsate()
            }
        } else {
            var usedForScore:[String] = []
            for character in checkArray[0] {
                usedForScore.append(String(character))
            }
            for index in 0..<usedForScore.count {
                if buttonTitleArray[index].currentTitle?.lowercased() == usedForScore[index].lowercased(){
                      score += 1
                     scoreLabel.text = "Score: \(score)"
                }
            }
            usedForScore.removeAll()
            number2 = 2
            for button in buttonTitleArray{
                button.shake()
            }
        }
    }
    // This function will check if the word is correct.
    
    func giveUpAll() {
        for index in 0..<wordArray.count {
            for _ in wordArray[index] {
                score -= wordArray[index].count
            }
        }
        scoreLabel.text = "Score: \(score)"
        present(moveNextAlert, animated: true)
    }
    //This function will be called when the user chooses to give up trying all words
   
     let moveNextAlert = UIAlertController(title: "You have finished all", message: "Do you want to play again", preferredStyle: .alert)
    func moveNext() {
        submitButton.isEnabled=false
        extraButton1.isEnabled=true
        successiveHint = 0
        refresh()
        upButtonReset()
        downButtonEnable()
        buttonShuffle()
        if explanationArray.count != 0 {
        show(word: &wordArray, explanation: &explanationArray, showWord: explainLabel)
        } else {
            present(moveNextAlert, animated:true)
        }
    }
    // This function will show the user the next word
    
    func restart(){
        successiveHint = 0
        successiveSuccess = 0
       extraButton1.isHidden=true
        upButtonReset()
        hintButton.isHidden=true
        explainLabel.text = ""
        submitButton.isHidden=true
        upAndDownButtonHidden()
        refresh()
        downButtonEnable()
        playButton.isHidden=false
        emptyQuestionArray.removeAll()
        wordArray.removeAll()
        explanationArray.removeAll()
        emptyButtonArray.removeAll()
        
    
        let score3 = score
        scoreArray.append(score3)
        allMyStoredData.set(scoreArray, forKey: "PlayerScore")
        let name3 = name
        nameArray.append(name3)
        allMyStoredData.set(nameArray, forKey: "PlayerName")
        score = 50
        scoreLabel.text = "Score: \(score)"
    }
    //When the user chooses to play again, the function will restart the game. Clear everything. However, the user's name and score will still be stored.
    
    func hintRemoveLetter() {
        var upButtonArray = [upButton1, upButton2, upButton3, upButton4, upButton5, upButton6, upButton7, upButton8, upButton9, upButton10]
        
        for index in 0..<checkHintArray.count {
          
            if upButtonArray[index]?.currentTitle == checkHintArray[index].currentTitle {
                checkHintArray[index].setTitle(nil, for: .normal)
            }
        }
        
    }
    // if hint is pressed, the letter in the down button will disappear and the up button will show it.
    
    func refresh() {
        
        emptyButtonArray.removeAll()
        hintArray.removeAll()
        letterArray.removeAll()
        checkHintArray.removeAll()
        hintButton.isEnabled=true
        showLetterArray.removeAll()
        hiddenButton()
        checkArray.removeAll()
        buttonTitleArray.removeAll()
        checkWord=""
        buttonUsedInHint.removeAll()
        
    }
    // when the user begins the next question, all things will be removed from question before it
    
    func hiddenButton() {
        let upButtonArray = [upButton1, upButton2, upButton3, upButton4, upButton5, upButton6, upButton7, upButton8, upButton9, upButton10]
        for button in upButtonArray {
            button?.isHidden=true
        }
    }
    // This function will hide all up buttons when the user moves to next question
    
    var successiveHint = 0
    func hint() {
        guard letterArray.count != 0 else {return hintButton.isEnabled=false}
        if buttonUsedInHint[0].currentTitle != nil {
            
            if buttonUsedInHint[0].currentTitle?.lowercased() != letterArray[0].lowercased() {
                putLetterInDownButton(upButton: buttonUsedInHint[0])
                buttonUsedInHint[0].setTitle(letterArray[0], for: .normal)
                buttonUsedInHint[0].pulsate()
                buttonUsedInHint[0].isEnabled=false
                buttonUsedInHint.remove(at: 0)
                letterArray.remove(at: 0)
                score -= 1
                 scoreLabel.text = "Score: \(score)"
            } else {
            buttonUsedInHint[0].isEnabled=false
            buttonUsedInHint.remove(at: 0)
            letterArray.remove(at: 0)
            }
        } else {
            buttonUsedInHint[0].setTitle(letterArray[0], for: .normal)
            buttonUsedInHint[0].pulsate()
            buttonUsedInHint[0].isEnabled=false
            buttonUsedInHint.remove(at: 0)
            letterArray.remove(at: 0)
            switch successiveHint {
            case 1: score -= 2
            case 2: score -= 4
            case 3: score -= 6
            case 4: score -= 8
            case 5: score -= 10
            case 6: score -= 12
            case 7: score -= 14
            case 8: score -= 16
            case 9: score -= 18
            default: score -= 20
            }
             scoreLabel.text = "Score: \(score)"
        }
    }
    //This function is used to show the correct letter when the user press hint button. If the user has put a letter in the up button, this function will replace the wrong letter with the right letter.
    func upButtonReset() {
        let upButtonArray = [upButton1, upButton2, upButton3, upButton4, upButton5, upButton6, upButton7, upButton8, upButton9, upButton10]
        for button in upButtonArray {
        
            button?.setTitle(nil, for: .normal)
            button?.isEnabled=true
        }
    }
    //This function will remove all titles that up buttons have and enable all up buttons
    
    func upAndDownButtonHidden() {
        let buttonArray:[UIButton] = [upButton1, upButton2, upButton3, upButton4, upButton5,upButton6, upButton7, upButton8,upButton9,upButton10,downButton1,downButton2,downButton3,downButton4,downButton5,downButton6,downButton7,downButton8,downButton9,downButton10,downButton11,downButton12]
        for button in buttonArray {
            button.isHidden=true
        }
    }
    // This function will hide all up and down buttons
    
    func leaderBoardButtonShown() {
        extraButton2.isHidden=false
        explainLabel.isHidden=true
        playButton.isHidden=true
        userNameLabel.isHidden=true
        hintButton.isHidden=true
        submitButton.isHidden=true
        extraButton1.isHidden=true
        upAndDownButtonHidden()
    }
    // When there is nothing in the explanation array, and user chooses not to play again, the button leads to leaderboard will show
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        submitButton.isEnabled=false
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in self.moveNext()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {
            action in self.leaderBoardButtonShown()}))
        alert2.addAction(UIAlertAction(title: "Move next", style: .default, handler:{
            action in self.moveNext()
        }))
        giveUpAlert.addAction(UIAlertAction(title: "Give up this", style: .default, handler: {
            action in self.giveUp()
        }))
        giveUpAlert.addAction(UIAlertAction(title: "Give up all", style: .default, handler: {
            action in self.giveUpAll()
        }))
        moveNextAlert.addAction(UIAlertAction(title: "Play Again", style: .default, handler: {
            action in self.restart()
        }))
        moveNextAlert.addAction(UIAlertAction(title: "No", style: .default, handler: {
            action in self.leaderBoardButtonShown()
        }))
        
        //These will set the action for the alert boxes
        
        userNameLabel.text = name
        score = 50
        scoreLabel.text = "Score: \(score)"
    }
    // This will set the action for the alter boxes and set the original score for the user
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let thirdController = segue.destination as! thirdViewController
        thirdController.comparedName=nameArray
        thirdController.comparedScore=scoreArray
    }
    // This function will prepare the name and score stored in the arrays before segue to the leaderboard
    
    override func viewDidAppear(_ animated: Bool) {
        let nameArray1: [String]? = allMyStoredData.object(forKey: "PlayerName") as? [String]
        if let nameArray2 = nameArray1 {
           nameArray = nameArray2
        }
        let scoreArray1: [Int]? = allMyStoredData.object(forKey: "PlayerScore") as? [Int]
        if let scoreArray2=scoreArray1 {
           scoreArray=scoreArray2
        }
    }
    // This function will load the stored data
    
    
    @IBAction func hintButton(_ sender: Any) {
        successiveHint += 1
        hint()
        hintRemoveLetter()
        buttonCheck()
    }
    // When the user presses the hint button in one question, the successiveHint will plus one and the letter will be removed from the down button. Also, the computer will check if up buttons all have title
    
    @IBAction func submitButton(_ sender: UIButton) {
        submitCheck()
        if number2 == 1{
            sender.pulsate()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.present(self.alert, animated: true)
            }
        } else if number2 == 2 {
            sender.shake()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.present(self.alert2, animated: true)
            }
        }
        downButtonEnable()
        number2 = 0
        successiveHint = 0
    }
    // If the user's answer is correct, the submit button will pulse. Otherwise, it will shake. 'number2' is used to determine whether the answer is correct
    
    @IBAction func playButton(_ sender: UIButton) {
        sender.pulsate()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.successiveSuccess = 0
            self.successiveHint = 0
        self.explainLabel.isHidden=false
            self.hintButton.isHidden=false
            self.submitButton.isHidden=false
            self.downButton1.isHidden=false
            self.downButton2.isHidden=false
            self.downButton3.isHidden=false
            self.downButton4.isHidden=false
            self.downButton5.isHidden=false
            self.downButton6.isHidden=false
            self.downButton7.isHidden=false
            self.downButton8.isHidden=false
            self.downButton9.isHidden=false
            self.downButton10.isHidden=false
            self.downButton11.isHidden=false
            self.downButton12.isHidden=false
            self.extraButton1.isHidden=false
            self.score = 50
            self.shuffleQuestion()
            self.buttonShuffle()
            self.submitButton.isEnabled=false
            self.show(word: &self.wordArray, explanation: &self.explanationArray, showWord: self.self.explainLabel)
            self.playButton.isHidden=true
            self.upButtonReset()
        }
    }
    // When the user press play button, it will pulse for two seconds and then the game will begin. All up and down buttons will show.
    
    
    @IBAction func upButton1(_ sender: Any) {
         clickUpButtonCheck(button: upButton1)
          buttonCheck()
    }
    //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton2(_ sender: Any) {
         clickUpButtonCheck(button: upButton2)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton3(_ sender: Any) {
         clickUpButtonCheck(button: upButton3)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton4(_ sender: Any) {
         clickUpButtonCheck(button: upButton4)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton5(_ sender: Any) {
         clickUpButtonCheck(button: upButton5)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton6(_ sender: Any) {
         clickUpButtonCheck(button: upButton6)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    
    @IBAction func upButton7(_ sender: Any) {
         clickUpButtonCheck(button: upButton7)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    @IBAction func upButton8(_ sender: Any) {
         clickUpButtonCheck(button: upButton8)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    @IBAction func upButton9(_ sender: Any) {
         clickUpButtonCheck(button: upButton9)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    @IBAction func upButton10(_ sender: Any) {
         clickUpButtonCheck(button: upButton10)
         buttonCheck()
    }
     //When the user presses the up button, it will move the letter to the down button and check if all up buttons have titles.
    @IBAction func downButton1(_ sender: Any) {
        clickdownButtonCheck(button: downButton1)
        buttonCheck()
    }
     //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    
    @IBAction func downButton2(_ sender: Any) {
        clickdownButtonCheck(button: downButton2)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton3(_ sender: Any) {
        clickdownButtonCheck(button: downButton3)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton4(_ sender: Any) {
        clickdownButtonCheck(button: downButton4)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton5(_ sender: Any) {
        clickdownButtonCheck(button: downButton5)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton6(_ sender: Any) {
        clickdownButtonCheck(button: downButton6)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton7(_ sender: Any) {
        clickdownButtonCheck(button: downButton7)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton8(_ sender: Any) {
        clickdownButtonCheck(button: downButton8)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton9(_ sender: Any) {
        clickdownButtonCheck(button: downButton9)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton10(_ sender: Any) {
        clickdownButtonCheck(button: downButton10)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton11(_ sender: Any) {
        clickdownButtonCheck(button: downButton11)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    @IBAction func downButton12(_ sender: Any) {
        clickdownButtonCheck(button: downButton12)
        buttonCheck()
    }
    //When the user presses the down button, it will move the letter to the up button and check if all up buttons have titles.
    
    @IBAction func extraButton1(_ sender: Any) {
        // This is the button for giving up
        
        present(giveUpAlert, animated: true)
            }
    // This button allows user to give up
    
    @IBAction func extraButton2(_ sender: Any) {
        let score2 = score
        scoreArray.append(score2)
        let name2 = name
        nameArray.append(name2)
        
        allMyStoredData.set(nameArray, forKey: "PlayerName")
        allMyStoredData.set(scoreArray, forKey: "PlayerScore")
        performSegue(withIdentifier: "segue2", sender: self)
    }
    // This button will transform all data to the thirdViewController
}

