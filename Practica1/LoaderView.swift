//
//  LoaderView.swift
//  Practica1
//
//  Created by Jorge Armando Avila Estrada on 16/02/23.
//

import UIKit
import Lottie

class LoaderView: UIView {

    var animationView = LottieAnimationView()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init (frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init (coder: aDecoder)
    }
    
    func createAnimation(name:String, width:Double, height: Double) {
        animationView = LottieAnimationView(name: name)
        animationView.tag = 1
        animationView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        animationView.center = self.center
        animationView.animationSpeed = 1
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play ()
        animationView.translatesAutoresizingMaskIntoConstraints=false
        animationView.centerXAnchor.constraint(equalTo:centerXAnchor).isActive=true
        animationView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive=true
        animationView.widthAnchor.constraint(equalToConstant:width).isActive=true
        animationView.heightAnchor.constraint(equalToConstant:height).isActive=true
    }

}
