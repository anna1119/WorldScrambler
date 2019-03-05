//
//  reviewViewController.swift
//  Li_Yuying_Word_Scrambler
//
//  Created by Period Three on 2018-10-04.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

class reviewViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var wordLbl: UILabel!
    
    @IBOutlet weak var meaningLbl: UILabel!
    
    
    let myWord: [String] = ["Paris", "Versailles", "Caribou", "Three", "Strasbourg", "Loire", "Ottawa", "Loonie", "Nunavut", "Eurostar", "Wines", "Swift", "Hotpot", "Berlin", "Tokyo", "Panda", "Six", "Anemometer", "Twelve", "Crust", "Tulips", "Sword", "Dictionary", "Blue", "Lightbulb", "Honey", "Hogwarts", "Australia", "Spain", "Red", "Ireland", "Oak", "Woody", "Clovis", "Pisa", "Goat", "Hedwig", "Cardiff", "Chengdu", "Tennis", "Shanghai", "Monkey", "Glamorgan", "Punter", "Pigeon", "Rose", "Iris", "Frangipani", "Cornflower", "Lotus"]
    let meaning : [String] = ["It is the capital city of France", "What gigantic palace did Louis XIV construct near Paris", "What animal is on the Canadian quarter", "How many oceans touch Canada", "What is the capital city of Alsace", "What is the longest river in France (1012km)", "What is the capital city of Canada (the national capital)", "What is the Canadian $1 coin called", "What is the most recent territory in Canada called", "What is the name of the fast train linking Paris to London", "What are 'Moulin à vent', 'Saint Estèphe' and 'Côte de Beaune'", "A computer language", "A famous food in China", "The capital city of Germany", "The capital city of Japan", "A special animal in China", "The number of players in an ice hockey team", "The instrument that used for measuring wind speed", "The number of straight edges a cube have", "Layer of planet Earth that is made up of tectonic plates", "The kind of ‘bulbs’ that were once exchanged as a form of currency", "A kind of weapon that is a falchion", "Another word for a ‘lexicon’", "The color of a Himalayan poppy", "The first electrical item did Thomas Edison invent", "Sweet food made by bees using nectar from flowers", "Name the school that Harry Potter attends", "Name of a country which is the home to the kangaroo", "A country sent an Armada to attack Britain in 1588", "The top color in a rainbow", "Saint Patrick is the Patron Saint of  this country", "From what tree do acorns come", "The name of the toy cowboy in Toy Story", "Who was the first king of France (481-511)", "Which Italian city is famous for its leaning tower", "On a farm a kid is a baby what", "What is the name of Harry Potter’s pet owl", "Which is the largest city in Wales", "China’s delicious food city", "In which sport did Li Na excel at", "Which is the largest Chinese city by population", "What animal represents the Chinese year of 2016", "Which county did Ravi Shastri play for", "Ricky Ponting is also known as what", "The nickname of Glenn McGrath", "National Flower of the United States", "National Flower of France", "National Flower of Nicaragua", "National Flower of Germany", "National Flower of India"]
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myWord.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
        myCell.textLabel?.text = myWord[indexPath.row]
        myCell.detailTextLabel?.text = "\(meaning[indexPath.row])"
        
        return myCell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
