//
//  Service.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 02/02/22.
//

import Foundation

import UIKit

class Service: NSObject {

    weak var vc:ViewController?
    static let shareInstance = Service()
    
    func getAllMovieData(completion: @escaping([MovieModel]?, Error?) -> ()){
        let urlString = "https://itunes.apple.com/search?media=music&term=bollywood"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let err = error{
                completion(nil,err)
                print("Loading data error: \(err.localizedDescription)")
            }else{
                guard let data = data else { return }
                do{
                    var arrMovieData = [MovieModel]()
                    let results = try JSONDecoder().decode(ResultsModel.self, from: data)
                    for movie in results.results{
                        arrMovieData.append(MovieModel(artistName: movie.artistName!, trackName: movie.trackName!))
                    }
                    completion(arrMovieData, nil)
                }catch let jsonErr{
                    print("json error : \(jsonErr.localizedDescription)")
                }
            }
        }.resume()
    }
    
    
    //MARK: second method
    
    
    func getAllMovieDataINList(completion: @escaping([Results]?, Error?) -> ()){
        let urlString = "https://itunes.apple.com/search?media=music&term=bollywood"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let err = error{
                completion(nil,err)
                print("Loading data error: \(err.localizedDescription)")
            }else{
                guard let data = data else { return }
                do{
                    var arrMovieData = [Results]()
                    let results1 = try JSONDecoder().decode(ResultsModel1.self, from: data)
               //  print(results1)
                    
                   // print(results1.results)
                   let result = results1.results
                    for movie in results1.results{
                    
                        arrMovieData.append(Results.init(wrapperType:movie.wrapperType!, kind: movie.kind!, artistId: movie.artistId!, collectionId: movie.collectionId!, trackId: movie.trackId!, collectionName: movie.collectionName!, collectionCensoredName: movie.collectionCensoredName!, trackName: movie.trackName!, trackCensoredName: movie.trackCensoredName!, artistViewUrl: movie.artistViewUrl!, collectionViewUrl: movie.collectionViewUrl!, trackViewUrl: movie.trackViewUrl!, previewUrl: movie.previewUrl!, artworkUrl30: movie.artworkUrl30!, artworkUrl60: movie.artworkUrl60!, artworkUrl100: movie.artworkUrl100!, collectionPrice: Int(movie.collectionPrice!), collectionExplicitness: movie.collectionExplicitness!, releaseDate: movie.releaseDate!, trackExplicitness: movie.trackExplicitness!, discCount: movie.discCount!, discNumber: movie.discNumber!, artistName:movie.artistName!, trackCount: movie.trackCount!, trackNumber: movie.trackNumber!, trackTimeMillis: movie.trackTimeMillis!, country: movie.country!, currency: movie.currency!, primaryGenreName: movie.primaryGenreName!, isStreamable: movie.isStreamable!))
                        
                    }

                    completion(arrMovieData, nil)
                }catch let jsonErr{
                    print("json error : \(jsonErr.localizedDescription)")
                }
            }
        }.resume()
    }
    
    
    
    
    //** use Json decoder
    func ServiceListApi (completion: @escaping([feedmodel]?, Error?) -> ()){
        let urlString = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let err = error{
                completion(nil,err)
                print("Loading data error: \(err.localizedDescription)")
            }else{
                guard let data = data else { return }
                do{
                    var feedModel_list = [feedmodel]()
                    let results = try JSONDecoder().decode(itunesResults.self, from: data)
                    print(results.feed)
                    feedModel_list.append(feedmodel.init(id: results.feed.id, author: results.feed.author, updated: results.feed.updated, rights: results.feed.rights, title: results.feed.title))
//                    for movie in results.results{
//                        arrMovieData.append(MovieModel(artistName: movie.artistName!, trackName: movie.trackName!))
//                    }
                    completion(feedModel_list, nil)
                }catch let jsonErr{
                    print("json error : \(jsonErr.localizedDescription)")
                }
            }
        }.resume()
       
    } //
    
}
