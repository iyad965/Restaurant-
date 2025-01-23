//
//  ShowDetailsView.swift
//  restaurant
//
//  Created by iyad on 22/01/2025.
//

import SwiftUI

struct ShowDetailsView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("details")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 600)
                    .overlay{
                        LinearGradient(
                            colors: [.black, .red], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.2)
                    }
                VStack(alignment: .trailing){
                    Text("BOOKING").foregroundColor(.white)
                        .padding(9)
                    .background(.red)
                    .cornerRadius(22).padding(.bottom,50)
                    
                    HStack{
                        Label("3.4", systemImage: "star.fill")
                            .font(.caption).bold().padding(3).background(.white)
                            .cornerRadius(5)
                        Text("4.3 km").font(.footnote).bold().padding(3)
                            .background(.white).cornerRadius(5)
                    }.frame(maxWidth: 360,alignment: .topLeading)
                    
                    Text("Stanford").foregroundColor(.white).bold().font(.title)
                        .frame(maxWidth: 360,alignment: .topLeading)
                    Text("Palto Alto").foregroundColor(.white)
                        .frame(maxWidth: 360,alignment: .topLeading)
                    
                    HStack{
                        Text("wi-fi").font(.caption).bold().padding(3).background(.white)
                            .cornerRadius(5)
                        Text("Parking").font(.caption).bold().padding(3).background(.white)
                            .cornerRadius(5)
                        Text("Cafe").font(.caption).bold().padding(3).background(.white)
                            .cornerRadius(5)
                        Spacer()
                        Image(systemName: "heart.fill").font(.title).foregroundColor(.white)
                            .padding(3)
                    }.frame(maxWidth: 360,alignment: .topLeading)
                    
                }.padding(.top)
              
            }
            Text("They are grilling celebrities in their right. You've seen them on TV and you see their cookbooks lined along the shelves")
                .frame(maxWidth: .infinity,alignment: .leading).padding(.leading)
            HStack{
                Image(systemName: "calendar.circle").font(.system(size: 40)).foregroundColor(.gray)
                VStack(alignment: .leading){
                    Text("08:00 - 23:00").fontWeight(.bold)
                    Text("Monday to Sunday")
                }
                Spacer()
                Image(systemName: "mappin.circle").font(.system(size: 40)).foregroundColor(.gray)
                Image(systemName: "phone.circle").font(.system(size: 40)).foregroundColor(.gray)
            }.padding()
            VStack{
                HStack{
                    Text("Menu").fontWeight(.bold)
                    Spacer()
                    Text(">")
                }.padding().background(Color.gray.opacity(0.3)).cornerRadius(10)
            }.padding(.leading).padding(.trailing)
            VStack{
                HStack{
                    Text("Reviews").fontWeight(.bold)
                    Spacer()
                    Text("80")
                    Text(">")
                }.padding().background(Color.gray.opacity(0.3)).cornerRadius(10)
            }.padding(.leading).padding(.trailing)
            VStack{
                HStack{
                    Text("Gallery").fontWeight(.bold)
                    Spacer()
                    Text("15")
                    Text(">")
                }.padding().background(Color.gray.opacity(0.3)).cornerRadius(10)
            }.padding(.leading).padding(.trailing)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    
    }
}

struct ShowDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetailsView()
    }
}
