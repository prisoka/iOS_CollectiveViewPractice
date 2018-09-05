//
//  ViewController.swift
//  CollectiveViewPractice
//
//  Created by Priscilla Okawa on 5/9/18.
//  Copyright © 2018 Priscilla Okawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let dogName = ["Aquila", "Flora", "Happy", "Peanut Butter"]
    
    let dogPhoto = [UIImage(named: "Aquila"), UIImage(named: "Flora"), UIImage(named: "Happy"), UIImage(named: "PeanutButter")]
    
    let ages = ["6", "5", "4", "2"]
    
    let sizes = ["large", "medium", "medium", "11:11 AM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("requests view controller did load")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.dogPhoto.image = dogPhoto[indexPath.row]
        cell.dogName.text = dogName[indexPath.row]
        cell.age.text = ages[indexPath.row]
        cell.size.text = sizes[indexPath.row]
        
        return cell
    }
}


