//
//  MovieSearchViewController.swift
//  IMDBMiniSwift
//
//  Created by Chen, Wenbin on 10/10/16.
//  Copyright © 2016 Chen, Wenbin. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    @IBOutlet weak var movieYearTextField: UITextField!
    
    
    @IBAction func submitButton(_ sender: UIButton) {
        //performSegue(withIdentifier: "showMovies", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieNameTextField.delegate = self
        movieYearTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == movieNameTextField {
            movieNameTextField.resignFirstResponder()
        } else if textField == movieYearTextField {
            movieYearTextField.resignFirstResponder()
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == movieNameTextField {
            movieNameTextField.text = textField.text
        } else if textField == movieYearTextField {
            movieYearTextField.text = textField.text
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (movieNameTextField.text!.isEmpty){
            showAlertButton(tile: "Alert", msg: "Name can not be empty")
            return
        }
        if segue.identifier == "showMovies" {
            let controller = segue.destination as! MovieTableViewController
            controller.name = movieNameTextField.text!
            controller.year = movieYearTextField.text!
        }
    }
    
    func showAlertButton(tile: String, msg: String) {
        let alert = UIAlertController(title: tile, message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
