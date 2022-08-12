//
//  ViewController.swift
//  tekrarJestAlgilayici
//
//  Created by Recep Akkoyun on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblIstanbul: UILabel!
    @IBOutlet weak var imgIstanbul: UIImageView!
    
    var istanbul = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgIstanbul.isUserInteractionEnabled = true // burda etkileşimi algıladı ama hala etkileşimde ne                                                                                    yapıcağını bilmiyor, hemen tanımlayalım.
        
        let etkilesim = UITapGestureRecognizer(target:self, action: #selector(imgDegistir)) // burda etkileşimi üzerine                                                                          tıklandığında olarak tanımladım. şimdi bu ikisini birleştirelim
        
        imgIstanbul.addGestureRecognizer(etkilesim) // birlestirme islemini de burda yaptim.
        
    }
    @objc func imgDegistir(){
        if istanbul == true{
            imgIstanbul.image = UIImage(named: "ankara")
            lblIstanbul.text = "Ankara"
            istanbul = false
        }
        else{
            imgIstanbul.image = UIImage(named: "istanbul")
            lblIstanbul.text = "Istanbul"
            istanbul = true
        }
        
    }
    
}

