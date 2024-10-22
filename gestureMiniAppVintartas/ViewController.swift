//
//  ViewController.swift
//  gestureMiniAppVintartas
//
//  Created by NICHOLAS VINTARTAS on 10/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerOutlet: UILabel!

    @IBOutlet weak var trOutlet: UILabel!
    
    @IBOutlet weak var tlOutlet: UILabel!
    
    @IBOutlet weak var blOutlet: UILabel!
    
    @IBOutlet weak var brOutlet: UILabel!
    
    func check() {
        var cX = centerOutlet.frame.origin.x
        var cY = centerOutlet.frame.origin.y
        
        var trX = trOutlet.frame.origin.x
        var trY = trOutlet.frame.origin.y
        
        var brX = brOutlet.frame.origin.x
        var brY = brOutlet.frame.origin.y
        
        var tlX = tlOutlet.frame.origin.x
        var tlY = tlOutlet.frame.origin.y
        
        var blX = blOutlet.frame.origin.x
        var blY = blOutlet.frame.origin.y
        
        if trX > cX && trY < cY && brX > cX && brY > cY && tlX < cX && tlY < cY && blX < cX && blY > cY {
            view.backgroundColor = .green
        }
        else {
            view.backgroundColor = .white
            print("c\(cX),\(cY)")
            print("tr\(trX),\(trY)")
            print("br\(brX),\(brY)")
            print("tl\(tlX),\(tlY)")
            print("bl\(blX),\(blY)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapRecog(_ sender: UITapGestureRecognizer) {
        var tapLoc = sender.location(in: view)
        centerOutlet.center = tapLoc
        check()
    }
    
    @IBAction func trRecog(_ sender: UIPanGestureRecognizer) {
        var trLoc = sender.location(in: view)
        trOutlet.center = trLoc
        check()
    }
    
    @IBAction func tlRecog(_ sender: UIPanGestureRecognizer) {
        var tlLoc = sender.location(in: view)
        tlOutlet.center = tlLoc
        check()
    }
    
    @IBAction func blRecog(_ sender: UIPanGestureRecognizer) {
        var blLoc = sender.location(in: view)
        blOutlet.center = blLoc
        check()
    }
    
    @IBAction func brRecog(_ sender: UIPanGestureRecognizer) {
        var brLoc = sender.location(in: view)
        brOutlet.center = brLoc
        check()
    }
    
}

