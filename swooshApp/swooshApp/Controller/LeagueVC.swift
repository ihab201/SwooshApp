//
//  LeagueVC.swift
//  swooshApp
//
//  Created by bennoui ihab on 4/10/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    
    @IBOutlet weak var NextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    

    @IBAction func NextPage(_ sender: Any) {
        performSegue(withIdentifier: "FromLeagueTo", sender: self)
    }
    
     @IBAction func WomensBtn(_ sender: Any) {
        selectedOption(typeOfLeague: "womens")
     }
    
    @IBAction func mensBtn(_ sender: Any) {
        selectedOption(typeOfLeague: "mens")

    }
    
    @IBAction func CoedBtn(_ sender: Any) {
        selectedOption(typeOfLeague: "coed")
    }
    
    func selectedOption(typeOfLeague : String){
        player.desiredLeague = typeOfLeague
        NextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player 
        }
    }
    
    
    
    
   
}
