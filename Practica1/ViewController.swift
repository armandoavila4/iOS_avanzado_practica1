//
//  ViewController.swift
//  Practica1
//
//  Created by Jorge Armando Avila Estrada on 16/02/23.
//

import UIKit

class ViewController: UIViewController {
    let segmentedControl = UISegmentedControl (items: ["Anim1","Anim2","Anim3"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Se agrega el segmented control
        
        segmentedControl.frame = CGRect(x: 10, y: 80, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        self.view.addSubview(segmentedControl)
        
        segmentedControl.addTarget(self, action: #selector(sControlClick), for: .valueChanged)
        
        self.callAnimation(name:"fish", background:.cyan, width:Double(300),height: Double(300))
    }

    
    @objc func sControlClick(_ sender: UISegmentedControl) {
        view.subviews.last?.removeFromSuperview()
        switch segmentedControl.selectedSegmentIndex {
            case 0:
                self.callAnimation(name:"fish", background:.cyan, width:Double(300),height: Double(300))
            case 1 :
                self.callAnimation(name:"weet-run-cycle", background:.green,  width:Double(300),height: Double(300))
            case 2:
                self.callAnimation(name:"surfing-poodle", background:.orange,  width:Double(300),height: Double(300))
            default:
                break
            }
        }
    
    func callAnimation(name:String, background:UIColor, width:Double, height:Double){
        let animation = LoaderView()
        animation.createAnimation(name: name, width: width, height: height)
        animation.frame.size = CGSize(width: width, height: height)
        animation.center = self.view.center
        view.addSubview(animation)
        view.backgroundColor = background
    }
    
}

