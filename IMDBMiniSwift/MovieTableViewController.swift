//
//  MovieTableViewController.swift
//  AlamofireWithSwiftyJSON
//
//  Created by Chen, Wenbin on 10/5/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class MovieTableViewController: UITableViewController {

    var movies = [Movie]()
    var name = ""
    var year = ""
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        let URL = "http://www.omdbapi.com/"
        
        Alamofire.request(URL, method: .get, parameters: ["s": name, "y": year]).responseObject{ (response: DataResponse<SearchResponse>) in
            let searchResponse = response.result.value
            self.movies = (searchResponse?.searchArray)!
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print("get sections")
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("get movie count")
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cell construc")
        let cellIdentifier = "MovieTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MovieTableViewCell
        let movie = movies[indexPath.row]
        
        cell.titleLabel?.text = movie.title
        cell.typeLabel?.text = movie.type
        cell.yearLabel?.text = movie.year
        if let url = URL(string: movie.posterUrl!) {
            cell.posterImageView.contentMode = .scaleAspectFill
            downloadImage(url: url, imageView: cell.posterImageView)
        }

        return cell
    }
    
    func getDataFromUrl(url: URL, completion: @escaping (_ data: Data?, _  response: URLResponse?, _ error: Error?) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            completion(data, response, error)
            }.resume()
    }
    
    func downloadImage(url: URL, imageView: UIImageView) {
        print("Download Started")
        getDataFromUrl(url: url) { (data, response, error)  in
            DispatchQueue.main.sync() { () -> Void in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
                print("Download Finished")
                imageView.image = UIImage(data: data)
            }
        }
    }
}
