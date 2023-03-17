//
//  FamilyTableViewController.swift
//  Introduce Family
//
//  Created by Juliana Nielson on 3/16/23.
//

import UIKit

extension UIColor {

    static let chalkBlue = UIColor(red: 110.0 / 255.0, green: 176.0 / 255.0, blue: 225.0 / 255.0, alpha: 1)
    static let chalkGreen = UIColor(red: 110.0 / 255.0, green: 199.0 / 255.0, blue: 144.0 / 255.0, alpha: 1)
    static let chalkYellow = UIColor(red: 255.0 / 255.0, green: 235.0 / 255.0, blue: 141.0 / 255.0, alpha: 1)
    static let chalkPink = UIColor(red: 255.0 / 255.0, green: 136.0 / 255.0, blue: 183.0 / 255.0, alpha: 1)
}

class FamilyTableViewController: UITableViewController {
    
    var family: [Sibling] = [
        Sibling(name: "Michael", age: "Age: 22", hobby: "Hobby: Animals", image: michaelImage!, color: .chalkBlue),
        Sibling(name: "Melissa", age: "Age: 20", hobby: "Hobby: Art", image: melissaImage!, color: .chalkGreen),
        Sibling(name: "Christopher", age: "Age: 24", hobby: "Hobby: Dungeons and Dragons", image: chrisImage!, color: .chalkYellow),
        Sibling(name: "Juliana", age: "Age: 18", hobby: "Hobby: Computers", image: julianaImage!, color: .chalkPink)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return family.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "familyCell", for: indexPath) as! FamilyTableViewCell
        
        let sibling = family[indexPath.row]
        
        cell.update(with: sibling)

        return cell
    }
    
    @IBSegueAction func viewSibling(_ coder: NSCoder, sender: Any?) -> DetailViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return nil }
        
        let sibling = family[indexPath.row]
        return DetailViewController(coder: coder, sibling: sibling)
    }
}

var melissaImage = UIImage(named: "MelissaDuck")
var michaelImage = UIImage(named: "MichaelDuck")
var chrisImage = UIImage(named: "ChrisDuck")
var julianaImage = UIImage(named: "JulianaDuck")
