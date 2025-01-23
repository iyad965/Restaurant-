//
//  ContentView.swift
//  restaurant
//
//  Created by iyad on 21/01/2025.
//

import SwiftUI

struct Restaurants{
    var UniqueId: Int
    var image: String
    var category:String
    var title:String
    var body:String
}

struct ContentView: View {
    
    let restaurants = [
        Restaurants(UniqueId: 1, image: "meal", category: "Ternding", title: "Restaurant1", body: "this is good restaurnats have cafe and wifi"),
        Restaurants(UniqueId: 2, image: "humburger", category: "Ternding", title: "Restaurant1", body: "this is good restaurnats have cafe and wifi"),
        Restaurants(UniqueId: 3, image: "patatos", category: "Ternding", title: "Restaurant1", body: "this is good restaurnats have cafe and wifi"),
        Restaurants(UniqueId: 3, image: "spaghetti", category: "Ternding", title: "Restaurant1", body: "this is good restaurnats have cafe and wifi")]
    
    let restaurantList = [
        Trail(name: "caffe latte", image: "caffe latte", location: "Palto Alto", rated: 3.4, distance: 4.2),
        Trail(name: "Cappuccino", image: "Cappuccino", location: "Redwood", rated: 5.4, distance: 2.2),
        Trail(name: "Star Bax", image: "mocha", location: "Chtoura", rated: 6.5, distance: 7.8),
        Trail(name: "Stanford", image: "caffe latte", location: "Blounder", rated: 8.4, distance: 3.7),
        Trail(name: "Stanford", image: "caffe latte", location: "Milpitas", rated: 9.4, distance: 5.8)]
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Restaurant")
                            .font(.largeTitle).bold()
                        Text("New Yourk, USAN")
                            .foregroundColor(Color.gray.opacity(0.9))
                    }
                    Spacer()
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                }.padding()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(restaurants, id: \ .UniqueId){
                            value in
                            ZStack{
                                Image("\(value.image)").resizable().shadow(color: .gray, radius: 20 )
                                LinearGradient(
                                    colors: [.black,.red], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.4)
                                VStack{
                                    Text(value.category)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading).padding()
                                    Text(value.title).font(.title2)
                                        .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading)
                                    HStack{
                                        Text(value.body).foregroundColor(.white)
                                            .fixedSize(horizontal: false, vertical: true)
                                        Spacer()
                                        Text("SEE ALL").foregroundColor(.black)
                                            .padding(7).fontWeight(.bold)
                                            .background(.white).cornerRadius(12)
                                          
                                    }.padding()
                                }
                             
                            }.frame(width: 300, height: 180).cornerRadius(20.0)
                        }
                    }
                    
                }
                HStack{
                    Text("Top Rrated").font(.title3).fontWeight(.bold)
                     
                    Spacer()
                    Text("See All >").font(.system(size: 15))
                        .foregroundColor(.red)
                      
                }.padding()
                
                List(restaurantList){
                    Trail in
                    NavigationLink(destination: ShowDetailsView()){
                        TrailRow(trail: Trail)
                            .listRowSeparator(.hidden)
                    }
                }
                Spacer()
                
            }
        }
    }
}

struct Trail:Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var location: String
    var rated: Double
    var distance: Double
}

struct TrailRow:View{
    var trail:Trail
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                HStack{
                    Image(trail.image).resizable()
                        .background(.black)
                        .cornerRadius(3.0)
                        .frame(width: 140,height:100)
                    VStack(alignment: .leading){
                        Text(trail.name)
                        Text(trail.location).font(.subheadline).foregroundColor(.gray)
                        HStack{
                            Image(systemName: "star.fill")
                                .imageScale(.small)
                                .foregroundColor(.red)
                            Text(String(format: "%.1f", trail.rated)).font(.subheadline)
                        }
                    }
                }
                
            }
            Spacer()
            VStack{
                Image(systemName: "heart.fill")
                    .foregroundColor(.red).padding()
                Text(String(format: "%.1f", trail.distance)).font(.footnote)
                    .fontWeight(.bold)
            }.frame(width:.infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
