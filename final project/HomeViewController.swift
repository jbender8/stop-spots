//
//  HomeViewController.swift
//  final project
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

struct spot {
    var name: String
    var rating: String
    var lat: String
    var lon: String
}

var fullertonSpots = [spot]()
var clybournSpots = [spot]()
var divisionSpots = [spot]()
var chicagoSpots = [spot]()
var grandSpots = [spot]()
var lakeSpots = [spot]()
var monroeSpots = [spot]()
var jacksonSpots = [spot]()



class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Jackson Coordinates
        
        makeFullertonRequest()
        makeClybournRequest()
        makeDivisionRequest()
        makeChicagoRequest()
        makeGrandRequest()
        makeLakeRequest()
        makeMonroeRequest()
        makeJacksonRequest()

        
        // Do any additional setup after loading the view.
    }
    
    
    func makeFullertonRequest() {
        let lat = "41.925238"
        let long = "-87.652790"
        
        var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
            url.append(lat)
            url.append(",")
            url.append(long)
        url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
            
            let urlReq = URL(string: url)!
            let urlRequest = URLRequest(url: urlReq)
            
            let task = AF.request(urlRequest)
                    .responseJSON { response in
                        if let data = response.data {
                          let responseJSON = JSON(data)
                            for result in responseJSON["results"] {
                                let name = result.1["name"].stringValue
                                let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                let rating = result.1["rating"].stringValue
                                fullertonSpots.append(
                                    spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                )
                            }
                }
            }

            task.resume()
    }
    
    func makeClybournRequest() {
        let lat = "41.910766"
        let long = "-87.648902"
        
        var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
            url.append(lat)
            url.append(",")
            url.append(long)
        url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
            
            let urlReq = URL(string: url)!
            let urlRequest = URLRequest(url: urlReq)
            
            let task = AF.request(urlRequest)
                    .responseJSON { response in
                        if let data = response.data {
                          let responseJSON = JSON(data)
                            for result in responseJSON["results"] {
                                let name = result.1["name"].stringValue
                                let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                let rating = result.1["rating"].stringValue
                                clybournSpots.append(
                                    spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                )
                            }
                }
            }

            task.resume()
    }
    
    func makeDivisionRequest() {
        let lat = "41.903915"
        let long = "-87.631935"
        
        var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
            url.append(lat)
            url.append(",")
            url.append(long)
        url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
            
            let urlReq = URL(string: url)!
            let urlRequest = URLRequest(url: urlReq)
            
            let task = AF.request(urlRequest)
                    .responseJSON { response in
                        if let data = response.data {
                          let responseJSON = JSON(data)
                            for result in responseJSON["results"] {
                                let name = result.1["name"].stringValue
                                let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                let rating = result.1["rating"].stringValue
                                divisionSpots.append(
                                    spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                )
                            }
                }
            }

            task.resume()
    }

     func makeChicagoRequest() {
        let lat = "41.896673"
        let long = "-87.628226"
        
        var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
            url.append(lat)
            url.append(",")
            url.append(long)
        url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
            
            let urlReq = URL(string: url)!
            let urlRequest = URLRequest(url: urlReq)
            
            let task = AF.request(urlRequest)
                    .responseJSON { response in
                        if let data = response.data {
                          let responseJSON = JSON(data)
                            for result in responseJSON["results"] {
                                let name = result.1["name"].stringValue
                                let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                let rating = result.1["rating"].stringValue
                                chicagoSpots.append(
                                    spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                )
                            }
                }
            }

            task.resume()
    }
    
    func makeGrandRequest() {
          let lat = "41.891816"
          let long = "-87.628164"
          
          var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
              url.append(lat)
              url.append(",")
              url.append(long)
          url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
              
              let urlReq = URL(string: url)!
              let urlRequest = URLRequest(url: urlReq)
              
              let task = AF.request(urlRequest)
                      .responseJSON { response in
                          if let data = response.data {
                            let responseJSON = JSON(data)
                              for result in responseJSON["results"] {
                                  let name = result.1["name"].stringValue
                                  let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                  let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                  let rating = result.1["rating"].stringValue
                                  grandSpots.append(
                                      spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                  )
                              }
                  }
              }

              task.resume()
      }
    
    func makeLakeRequest() {

           let lat = "41.885126"
           let long = "-87.627907"
           
           var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
               url.append(lat)
               url.append(",")
               url.append(long)
           url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
               
               let urlReq = URL(string: url)!
               let urlRequest = URLRequest(url: urlReq)
               
               let task = AF.request(urlRequest)
                       .responseJSON { response in
                           if let data = response.data {
                             let responseJSON = JSON(data)
                               for result in responseJSON["results"] {
                                   let name = result.1["name"].stringValue
                                   let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                   let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                   let rating = result.1["rating"].stringValue
                                   lakeSpots.append(
                                       spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                   )
                               }
                   }
               }

               task.resume()
       }
    
    func makeMonroeRequest() {

           let lat = "41.880735"
           let long = "-87.627718"
           
           var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
               url.append(lat)
               url.append(",")
               url.append(long)
           url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
               
               let urlReq = URL(string: url)!
               let urlRequest = URLRequest(url: urlReq)
               
               let task = AF.request(urlRequest)
                       .responseJSON { response in
                           if let data = response.data {
                             let responseJSON = JSON(data)
                               for result in responseJSON["results"] {
                                   let name = result.1["name"].stringValue
                                   let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                   let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                   let rating = result.1["rating"].stringValue
                                   monroeSpots.append(
                                       spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                   )
                               }
                   }
               }

               task.resume()
       }
    
    func makeJacksonRequest() {
        let lat = "41.878228"
        let long = "-87.627651"
        
        var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
            url.append(lat)
            url.append(",")
            url.append(long)
        url.append("&radius=500&types=food&key=AIzaSyCzzyP_EMxOmYBAAH84nh19wUJ28wMq30Y")
            
            let urlReq = URL(string: url)!
            let urlRequest = URLRequest(url: urlReq)
            
            let task = AF.request(urlRequest)
                    .responseJSON { response in
                        if let data = response.data {
                          let responseJSON = JSON(data)
                            for result in responseJSON["results"] {
                                let name = result.1["name"].stringValue
                                let latitude = result.1["geometry"]["location"]["lat"].stringValue
                                let longitude = result.1["geometry"]["location"]["lng"].stringValue
                                let rating = result.1["rating"].stringValue
                                jacksonSpots.append(
                                    spot(name: name, rating: rating, lat: latitude, lon: longitude)
                                )
                            }
                }
            }

            task.resume()
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
