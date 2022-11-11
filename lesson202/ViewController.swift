//
//  ViewController.swift
//  lesson202
//
//  Created by Garib Agaev on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    var array: (UIView?, UIView?, UIView?)
    
    private var countClicks = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = (redView, yellowView, greenView)
        
        customizeView(
            view: redView,
            color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        )
        
        customizeView(
            view: yellowView,
            color: #colorLiteral(red: 1, green: 0.9349926114, blue: 0, alpha: 0.5)
        )
        
        customizeView(
            view: greenView,
            color: #colorLiteral(red: 0, green: 1, blue: 0, alpha: 0.5)
        )
    }
    
    @IBAction func nextButton() {
        countClicks = (countClicks + 1) % 3
        print(countClicks)
        switch countClicks {
        case 0:
            changeColor(firstColor: redView, secondColor: yellowView)
        case 1:
            changeColor(firstColor: yellowView, secondColor: greenView)
        case 2:
            changeColor(firstColor: greenView, secondColor: redView)
        default:
            break
        }
    }
    
    private func changeColor(firstColor: UIView!, secondColor: UIView!) {
        firstColor.backgroundColor = firstColor.backgroundColor?.withAlphaComponent(0.5)
        secondColor.backgroundColor = secondColor.backgroundColor?.withAlphaComponent(1)
    }
    
    private func customizeView(view: UIView!, color: UIColor) {
        view.layer.cornerRadius = view.frame.width / 2
        view.backgroundColor = color
    }
}

