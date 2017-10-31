//
//  MemoEditViewController.swift
//  PlayEntertainment
//
//  Created by 김현석 on 2017. 10. 31..
//  Copyright © 2017년 Kimhyeonseok. All rights reserved.
//

import UIKit

class MemoEditViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    
    var memoData = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memoData = UserDefaults.standard.object(forKey: "memoData") as? [String] ?? [String]() //If value has noting default value

        if memoData.count == 0 {
            memoTextView.text = "..."
        }else {
            memoTextView.text = memoData[0]
        }
        
    }
    
    
    @IBAction func edittingMemo(_ sender: Any) { //save
        
        memoData.insert(memoTextView.text, at: 0)
        
        UserDefaults.standard.set(memoData, forKey: "memoData") //saving
        
    }
    
    @IBAction func trashMemo(_ sender: Any) {
        print("Trash")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
