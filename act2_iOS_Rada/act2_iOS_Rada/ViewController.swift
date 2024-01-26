//
//  act2_iOS_Rada
//
//  Created by athaína rada on 22/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var labelNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(6)+1)
        labelNumber.text = String(randomNumber)
        if input.text == labelNumber.text{
            view.backgroundColor = UIColor.green
            
        }else{
            view.backgroundColor = UIColor.red
        }
    }
    

    }
    
    

