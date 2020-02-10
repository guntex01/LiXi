//
//  ViewController.swift
//  LiXi
//
//  Created by guntex01 on 2/8/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var soTienLabel: UILabel!
    @IBOutlet weak var baoLiXiImageView: UIImageView!
    @IBOutlet weak var openButton: UIButton!
    var isOpen: Bool = true
    var n: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        baoLiXiImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/4 * 3)
        baoLiXiImageView.image = UIImage(named: "lixi.png" )
        openButton.setTitle("Mở lì xì", for: .normal)
        isOpen = true
        
    }

    @IBAction func onPress(_ sender: Any) {
        if isOpen{
                    baoLiXiImageView.image = UIImage(named: "tienlixi.png")
                    openButton.setTitle("Mở tiếp", for: .normal)
                    isOpen = false
                }else{
                    baoLiXiImageView.image = UIImage(named: "lixi.png")
                    openButton.setTitle("Mở lì xì", for: .normal)
                    isOpen = true
            ranDomTien()
    }
        soTienLabel.text = String("\(ranDomTien()) vnđ")
}
    func ranDomTien() -> Int{
        let m = Int.random(in: 1000...1000000)
        
        if n == m {
            
        }
        n = m
        return m
        
    }
    }


