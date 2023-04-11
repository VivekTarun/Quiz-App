

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ];
    
    var  questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI();
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // user sends the data
        let actualAnswer = quiz[questionNumber][1] // actual ans that is mentioned in the array above.
        
        // for printing the answer
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        updateUI();
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

