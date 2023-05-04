//
//  ViewController.swift
//  Project15
//
//  Created by Brandon Johns on 5/4/23.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        

        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        
        view.addSubview(imageView)
        
    }//viewDidLoad

    @IBAction func tapped(_ sender: UIButton)
    {
        sender.isHidden = true                                                                                          // hides button as soon as its tapped
        
       // UIView.animate(withDuration: 1, delay: 0, options: [], animations: {                                         moves
                                                                                                                                        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [], animations: {
                                                                                                                        // moves with spring action 
               switch self.currentAnimation {
               case 0:
                   self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)                                        // twice the normal size
                   break
               case 1:
                   self.imageView.transform = .identity                                                                 // returns it
                   
               case 2:
                   self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)                            // subtracted from current postion of the penguin
                   
               case 3:
                   self.imageView.transform = .identity
                   
               case 4:
                   self.imageView.transform = CGAffineTransform(rotationAngle:  .pi )
                   
               case 5:
                   self.imageView.transform = .identity
                   
               case 6:
                   self.imageView.alpha = 0.1
                   self.imageView.backgroundColor = .green
                   
               case 7:
                   self.imageView.alpha = 1
                   self.imageView.backgroundColor = .clear
                   
               default:
                   break
               }// switch
           }) { finished in
               sender.isHidden = false                                                                                      // shows button again
           }// clsoure
        
        
        currentAnimation += 1
        
        if currentAnimation > 7
        {
            currentAnimation = 0
        }// currentAnimation
        
    }//tapped
    
}//viewController

