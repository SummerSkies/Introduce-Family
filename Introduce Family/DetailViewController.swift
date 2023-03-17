//
//  DetailViewController.swift
//  Introduce Family
//
//  Created by Juliana Nielson on 2/13/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var sibling: Sibling?
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var allLabels: [UILabel]!
    
    init?(coder: NSCoder, sibling: Sibling?) {
        self.sibling = sibling
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.sibling = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = sibling?.name
        ageLabel.text = sibling?.age
        hobbyLabel.text = sibling?.hobby
        imageView.image = sibling?.image
        for label in allLabels {
            label.textColor = sibling?.color
        }
    }
}
