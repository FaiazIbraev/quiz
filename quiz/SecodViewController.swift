//
//  SecodViewController.swift
//  quiz
//
//  Created by Faiaz Ibraev on 25/6/22.
//

import UIKit

class SecodViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var quesLabel: UILabel!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var againButton: UIButton!
    
    var sliderCounter: Int = 1
    var rightCounter: Int = 0
    var wrongCounter: Int = 0
    var total: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yesButton.layer.cornerRadius = 10
        noButton.layer.cornerRadius = 10
        quesLabel.text = "Небо синее?"
        slider.value = 1
        titleLabel.text = "Вопрос №1"
        againButton.isHidden = true
    }
    
    
    
    @IBAction func yesButtonTapped(_ sender: UIButton) {
        slider.value += 1
        sliderCounter += 1
        rightCounter += 1
        
        switch slider.value {
        case 1:
            quesLabel.text = "Небо синее?"
            titleLabel.text = "Вопрос №1"
            
        case 2:
            quesLabel.text = "Бишкек столица КР?"
            titleLabel.text = "Вопрос №2"
                rightCounter += 1
        case 3:
            quesLabel.text = "Солнце белое?"
            titleLabel.text = "Вопрос №3"
            if yesButton.tag == 1{
                rightCounter += 0
            } else if noButton.tag == 2{
                rightCounter += 1
            }
        case 4:
            quesLabel.text = "Трава красная?"
            titleLabel.text = "Вопрос №4"
            if yesButton.tag == 1{
                rightCounter += 0
            } else if noButton.tag == 2{
                rightCounter += 1
            }
        case 5:
            quesLabel.text = "Иссык-Куль в Баткене?"
            titleLabel.text = "Вопрос №5"
            if yesButton.tag == 1{
                rightCounter += 0
            } else if noButton.tag == 2{
                rightCounter += 1
            }
        case 6:
            quesLabel.text = "У машины 4 колеса?"
            titleLabel.text = "Вопрос №6"
            if yesButton.tag == 1{
                rightCounter += 1
            } else if noButton.tag == 2{
                rightCounter += 0
            }
        case 7:
            quesLabel.text = "Зимой идет снег?"
            titleLabel.text = "Вопрос №7"
            if yesButton.tag == 1{
                rightCounter += 1
            } else if noButton.tag == 2{
                rightCounter += 0
            }
        case 8:
            quesLabel.text = "Летом идет снег?"
            titleLabel.text = "Вопрос №8"
            if yesButton.tag == 1{
                rightCounter += 0
            } else if noButton.tag == 2{
                rightCounter += 1
            }
        case 9:
            quesLabel.text = "Земля плоская?"
            titleLabel.text = "Вопрос №9"
            if yesButton.tag == 1{
                rightCounter += 0
            } else if noButton.tag == 2{
                rightCounter += 1
            }
        case 10:
            quesLabel.text = "Есть ли белые медведи?"
            titleLabel.text = "Вопрос №10"
            if yesButton.tag == 1{
                rightCounter += 1
            } else if noButton.tag == 2{
                rightCounter += 0
            }
        default:
            "Sorry"
        }
//        print("right \(rightCounter)")
//        print("wrong \(wrongCounter)")
//        print("slider \(sliderCounter)")
      
        
        if sliderCounter > 10{
            slider.isHidden = true
            quesLabel.text = "Ваш результат: \(total)"
            titleLabel.text = "Опрос окончен"
            againButton.isHidden = false
            yesButton.isHidden = true
            noButton.isHidden = false
        }
    }
            

        
        
    

    @IBAction func noButtonTapped(_ sender: UIButton) {
        slider.value += 1
        sliderCounter += 1
        switch slider.value {
        case 1:
                wrongCounter += 0
        case 2:
            quesLabel.text = "Бишкек столица КР?"
            titleLabel.text = "Вопрос №2"
                wrongCounter += 0
print("No")
        case 3:
            quesLabel.text = "Солнце белое?"
            titleLabel.text = "Вопрос №3"
            if noButton.tag == 2{
                wrongCounter += 1
            }
        case 4:
            quesLabel.text = "Трава красная?"
            titleLabel.text = "Вопрос №4"
            if noButton.tag == 2{
                wrongCounter += 1
            }
        case 5:
            quesLabel.text = "Иссык-Куль в Баткене?"
            titleLabel.text = "Вопрос №5"
            if noButton.tag == 2{
                wrongCounter += 1
            }
        case 6:
            quesLabel.text = "У машины 4 колеса?"
            titleLabel.text = "Вопрос №6"
            if noButton.tag == 2{
                wrongCounter += 0
            }
        case 7:
            quesLabel.text = "Зимой идет снег?"
            titleLabel.text = "Вопрос №7"
            if noButton.tag == 2{
                wrongCounter += 0
            }
        case 8:
            quesLabel.text = "Летом идет снег?"
            titleLabel.text = "Вопрос №8"
            if noButton.tag == 2{
                wrongCounter += 1
            }
        case 9:
            quesLabel.text = "Земля плоская?"
            titleLabel.text = "Вопрос №9"
            if noButton.tag == 2{
                wrongCounter += 1
            }
        case 10:
            quesLabel.text = "Есть ли белые медведи?"
            titleLabel.text = "Вопрос №10"
            if noButton.tag == 2{
                wrongCounter += 0
               
                
            }
        default:
            "Sorry"
        }
        print("right \(rightCounter)")
        print("wrong \(wrongCounter)")
        print("slider \(sliderCounter)")
        
        if sliderCounter > 10{
            slider.isHidden = true
            quesLabel.text = "Ваш результат: \(total)"
            titleLabel.text = "Опрос окончен"
            againButton.isHidden = false
            yesButton.isHidden = true
            noButton.isHidden = false
        }
        }
 
    
    
    
    
    
    @IBAction func againButtonTapped(_ sender: UIButton) {
        self .dismiss(animated: true)
    }
    
}
