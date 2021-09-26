//
//  ArticleDetailsViewController.swift
//  NY Times
//
//   Created by Fazil P on 25/09/21.
//

import UIKit

class ArticleDetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var abstractLabel: UILabel!
    
    var articleViewModel: ArticleViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.load(withImageUrl: articleViewModel.imageUrlString)
        titleLabel.text = articleViewModel.title
        abstractLabel.text = articleViewModel.abstract
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
