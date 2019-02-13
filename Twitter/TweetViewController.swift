//
//  TweetViewController.swift
//  Twitter
//
//  Created by Caleb Giles on 2/13/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    @IBOutlet weak var tweetTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTweet(_ sender: Any) {
        if(tweetTextView.text.isEmpty){
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        TwitterAPICaller.client?.postTweet(tweetString: tweetTextView.text, success: {
            self.dismiss(animated: true, completion: nil)
        }, failure: { (Error) in
            print("Error posting tweet \(Error)")
        })
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}