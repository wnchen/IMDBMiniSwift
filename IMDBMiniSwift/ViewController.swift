//
//  ViewController.swift
//  AlamofireWithSwiftyJSON
//
//  Created by MAC-186 on 4/12/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit
import Alamofire
//import SwiftyJSON
import AlamofireObjectMapper
import ObjectMapper

class ViewController: UIViewController {

    //var movies = [Movie]() //Array of dictionary
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        Alamofire.request(URL, method: .get, parameters: ["s": "spider"]).responseObject{ (response: DataResponse<SearchResponse>) in
            //print(response.request)
            print(response.response)
            //print(response.result)
            //print(response.data)
            
            let searchResponse = response.result.value
            print(searchResponse?.searchCount!)
            self.movies = (searchResponse?.searchArray)!
            print(self.movies.count)
 */
    }


    /*
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        let movie = movies[(indexPath as NSIndexPath).row]
        cell.titleLabel.text = movie.title
        cell.yearLabel.text = movie.year
        //var dict = arrRes[(indexPath as NSIndexPath).row]
        //cell.textLabel?.text = dict["Title"] as? String
        //cell.detailTextLabel?.text = dict["Year"] as? String
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
 */
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

