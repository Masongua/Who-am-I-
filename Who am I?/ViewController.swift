//
//  ViewController.swift
//  Who am I?
//
//  Created by 5e on 2/9/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var points: UILabel!
    
    
    @IBAction func button(_ sender: Any) {
        guard !people.isEmpty else {return}
        if let name = textField.text{
            if name.lowercased() == person.name.lowercased(){
                point += 1
            }
        }
        
        updatePoint()
        nextPerson()
        
    }
    
    var person = people[0]
    var point = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePoint()
        nextPerson()
    }
    
    func rando() -> Int{
        return Int.random(in: 0...people.count - 1)
    }

    func nextPerson(){
        let x = rando()
        person = people.remove(at: x)
        image.image = person.image
        
        label.text = person.description
        
    }
    
    func updatePoint(){
        points.text = String(point)
    }

}

struct Person {
    var image: UIImage
    var name: String
    var description: String
}

var people = [Person(image: UIImage(named: "kendrick")!, name: "Kendrick", description: "Grammy"), Person(image: UIImage(named: "glover")!, name: "Donald Glover", description: "This is America"), Person(image: UIImage(named: "m")!, name: "Martin Luther King Jr.", description: "Famous guy"), Person(image: UIImage(named: "mal")!, name: "Malcolm X", description: "Violent man"), Person(image: UIImage(named: "rosa")!, name: "Rosa Parks", description: "Went to Jail")]


