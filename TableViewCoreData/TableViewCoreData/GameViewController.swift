//
//  GameViewController.swift
//  TableViewCoreData
//
//  Created by Ale Rosenbaum on 27/08/18.
//  Copyright © 2018 academysenac. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbConsole: UILabel!
    @IBOutlet weak var lbReleaseDate: UILabel!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Game!
    override func viewDidLoad() {
        super.viewDidLoad()

        if (game != nil) {
            lbTitle.text = game.title
            lbConsole.text = game.console?.name
//            lbReleaseDate = game.releaseDate
        }
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
