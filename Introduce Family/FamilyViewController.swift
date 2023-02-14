//
//  ViewController.swift
//  Introduce Family
//
//  Created by Juliana Nielson on 2/13/23.
//

import UIKit

class FamilyViewController: UIViewController {

    @IBOutlet weak var melissaButton: UIButton!
    @IBOutlet weak var michealButton: UIButton!
    @IBOutlet weak var christopherButton: UIButton!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siblingDestination = segue.destination as? DetailViewController

        if segue.identifier == "Melissa" {
            siblingDestination?.sibling = melissa
        } else if segue.identifier == "Michael" {
            siblingDestination?.sibling = michael
        } else if segue.identifier == "Christopher" {
            siblingDestination?.sibling = christopher
        } else if segue.identifier == "Juliana" {
            siblingDestination?.sibling = me
        }
    }
}

var melissaImage = UIImage(named: "MelissaDuck")
var michaelImage = UIImage(named: "MichaelDuck")
var chrisImage = UIImage(named: "ChrisDuck")
var myImage = UIImage(named: "JulianaDuck")

struct Sibling {
    var name: String
    var age: String
    var hobby: String
    var image: UIImage
}

let melissa = Sibling(name: "Melissa", age: "Age: 20", hobby: "Hobby: Art", image: melissaImage!)

let michael = Sibling(name: "Michael", age: "Age: 22", hobby: "Hobby: Animals", image: michaelImage!)

let christopher = Sibling(name: "Christopher", age: "Age: 24", hobby: "Hobby: Dungeons and Dragons", image: chrisImage!)

let me = Sibling(name: "Juliana", age: "Age: 18", hobby: "Hobby: Computers", image: myImage!)



