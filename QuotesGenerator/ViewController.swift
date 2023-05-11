//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by Eunchan Kim on 2023/05/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "늦었다고 생각할 때가 진짜 너무 늦었다", name: "박명수"),
        Quote(contents: "결혼과 죽음은 뒤로 미룰수록 좋다", name: "박명수"),
        Quote(contents: "뭘 무서워 그냥 하는거지. 난관이 이것만 있겠어?", name: "박명수"),
        Quote(contents: "원수는 직장에서 만난다", name: "박명수"),
        Quote(contents: "열심히는 하지만 노력은 안한다", name: "박명수"),
        Quote(contents: "조금만 더 돈 벌고 뜬다. 이 바닥", name: "박명수"),
        Quote(contents: "엉망으로 살아야 해! 인생은 한 번이야!", name: "박명수"),
        Quote(contents: "허벌가에서 태어나서 이런 거에요! 저도 재벌가에서 태어났으면 이런 거 안 해요!", name: "박명수"),
        Quote(contents: "꿈은 없고요. 그냥 놀고 싶습니다", name: "박명수")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) //0~4 사이의 난수값
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

