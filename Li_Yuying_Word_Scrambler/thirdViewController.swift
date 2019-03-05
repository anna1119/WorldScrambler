//
//  thirdViewController.swift
//  Li_Yuying_Word_Scrambler
//
//  Created by Home on 2018/10/2.
//  Copyright © 2018年 Home. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController, UITableViewDataSource {
    var comparedName:[String] = []
    var comparedScore: [Int] = []
    
    func putDataInOrder() {
        for index in 0..<comparedScore.count {
            var lowest = index
            for index2 in index+1..<comparedScore.count{
                if comparedScore[index2] > comparedScore[index] {
                    lowest = index2
                }
            }
            if index != lowest {
                comparedScore.swapAt(index, lowest)
                comparedName.swapAt(index, lowest)
            }
        }
    }
    //This selection algorithms will put the score into the order from largest to smallest
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comparedName.count
    }
    //The number of rows will depend on the number of compareName
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(comparedName.count)
        print(comparedScore.count)
        putDataInOrder()
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCoolCell", for: indexPath)
        myCell.textLabel?.text = comparedName[indexPath.row]
        myCell.detailTextLabel?.text = "\(comparedScore[indexPath.row])"
        
        return myCell
    }
    //This function will make the cell to show name and corresponding score.
   
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
