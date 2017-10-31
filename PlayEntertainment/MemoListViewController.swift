//
//  MemoListViewController.swift
//  PlayEntertainment
//
//  Created by 김현석 on 2017. 10. 31..
//  Copyright © 2017년 Kimhyeonseok. All rights reserved.
//

import UIKit

class MemoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var memoData = [String]()
    
    @IBAction func unwind(to unwindSegue: UIStoryboardSegue, MemoList subsequentVC: UIViewController) {
        print("unwind")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = false
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        memoData = UserDefaults.standard.object(forKey: "memoData") as? [String] ?? [String]()
//        print(memoData.count)
        return memoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "writeMemo", for: indexPath)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
    }
    
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
