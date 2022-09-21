//
//  SecondViewController.swift
//  NetworkingAssignment
//
//  Created by Macmini-13 on 21/09/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondTittleLabel: UILabel!
    
    @IBOutlet weak var secondAuthorLabel: UILabel!
    
    @IBOutlet weak var secondDesccriptionLabel: UILabel!
    
    @IBOutlet weak var secondContentLabel: UILabel!
    //@IBOutlet weak var secondContentLabel: UILabel!
    
    var titleLabel : String = ""
    var authorLabel : String = ""
    var descriptionLabel : String = ""
    var contentLabel : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTittleLabel.text = titleLabel
        secondAuthorLabel.text = authorLabel
        secondDesccriptionLabel.text = descriptionLabel
        secondContentLabel.text = contentLabel
    }
    

    

}
