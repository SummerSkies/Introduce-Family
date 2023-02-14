//
//  DetailViewController.swift
//  Introduce Family
//
//  Created by Juliana Nielson on 2/13/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var sibling: Sibling?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = sibling?.name
        ageLabel.text = sibling?.age
        hobbyLabel.text = sibling?.hobby
        imageView.image = sibling?.image
    }

}
