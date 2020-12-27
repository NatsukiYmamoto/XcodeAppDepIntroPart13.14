//
//  ViewController.swift
//  XcodeAppDepIntroPart13.14
//
//  Created by 山本 夏紀 on 2020/12/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeSlider(_ sender: Any) {
        self.label.text = "\'(self.slider.value)"
    }

    @IBAction func pressButton(_ sender: Any) {
  

            //　アクションシートを作成
            let actionSheet = UIAlertController(
                title: "ここがtitleです",
                message: "ここがmessage",
                preferredStyle: .actionSheet)
        
            //　アラートアクション（A）を作成＆追加
            let actionA = UIAlertAction(
                title: "案内する", style: .default, handler: { action in print("選択肢Aが選ばれました") })
            actionSheet.addAction(actionA)
        
            //　アラートアクション（B）を作成＆追加
            let actionB = UIAlertAction(
                title: "案内しない", style: .default, handler: { action in print("選択肢Bが選ばれました") })
            actionSheet.addAction(actionB)
        
            //　キャンセルアクションを作成＆追加
            let cancel   = UIAlertAction(
                    title: "キャンセル", style: .cancel, handler: { action in print("キャンセルが選ばれました") })
                actionSheet.addAction(cancel)
            
            //　アクションシートを表示
        present(actionSheet, animated: true, completion: nil)
            }
        }
    

