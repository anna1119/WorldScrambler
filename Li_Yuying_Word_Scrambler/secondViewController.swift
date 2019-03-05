//
//  secondViewController.swift
//  Li_Yuying_Word_Scrambler
//
//  Created by Home on 2018/10/1.
//  Copyright © 2018年 Home. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

  
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    
    
    
    @IBAction func startButton(_ sender: Any) {
        if textfield.text != "" {
        performSegue(withIdentifier: "segue", sender: self)
        }
    }
    // When the user enters the name and presses the start button, the phone will move to next view
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ViewController=segue.destination as! ViewController
        ViewController.name = textfield.text!
        textfield.text = ""
    }
    //This function will transform the user's name to the next view and remove the content in the textfield
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
