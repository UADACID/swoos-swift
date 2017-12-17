//
//  LeagueVC.swift
//  swoos
//
//  Created by pratama setya aji on 12/17/17.
//  Copyright © 2017 pratama setya aji. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMenPress(_ sender: Any) {
        selectLeague(leagueType: "Men")
    }
    
    @IBAction func onWomenPress(_ sender: Any) {
        selectLeague(leagueType: "Women")
    }
    
    @IBAction func onCoPress(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    @IBAction func onPressNext(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
