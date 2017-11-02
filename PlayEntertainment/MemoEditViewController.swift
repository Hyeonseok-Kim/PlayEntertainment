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
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        print("viewDidAppear")
//        super.viewDidAppear(animated)
//        let viewControllers: [UIViewController] = [UIViewController()]
//        if let pageViewController = parent as? UIPageViewController{
//            pageViewController.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
//        }
//    }
    
    @IBAction func edittingMemo(_ sender: Any) {
        if memoTextView.text == "" {}else {
            memoData.insert(memoTextView.text, at: 0)
        }
        UserDefaults.standard.set(memoData, forKey: "memoData") //saving
//        navigationController?.popViewController(animated: true) //모달 창 내리기
        dismiss(animated: true, completion: {
            print("loading..")
            MemoListViewController().viewDidLoad()
        })
        
    }
    
    @IBAction func trashMemo(_ sender: Any) {
//        navigationController?.popViewController(animated: true) //모달 창 내리기
        dismiss(animated: true, completion: {print(self.memoData)})
        print("Trash")
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
 

}
