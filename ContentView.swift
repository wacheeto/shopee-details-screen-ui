//
//  ContentView.swift
//  Xcode Demo
//
//  Created on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var preview = "protein3"
    @State private var activeModal: ActiveModal?
    
    enum ActiveModal: Identifiable {
        case modal1, modal2
        
        var id: Int {
            switch self {
            case .modal1: return 1
            case .modal2: return 2
            }
        }
    }

    var body: some View {
        ScrollView{
            ZStack{
                Color(.white).ignoresSafeArea()
                VStack(spacing:0){ //post image
                    Image(preview)
                        .resizable()
                        .frame(height: 350)
                        .clipped()
                    Text("3 Variations Available")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 10)
                    HStack{//image below (horizontal)
                        Button {
                            imageHandler(selected: "protein3")
                        } label: {
                            Image("protein3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50,height: 50)
                        }
                        Button {
                            imageHandler(selected: "protein1")
                        } label: {
                            Image("protein1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50,height: 50)
                        }
                        Button {
                            imageHandler(selected: "protein2")
                        } label: {
                            Image("protein2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50,height: 50)
                        }
                        Spacer()
                    }.padding(.horizontal,16)
                    VStack{//image below (horizontal)
                        HStack{ //spread
                            Text("P359")
                                .foregroundColor(Color(red: 238/255, green: 77/255, blue: 45/255))
                                .font(.title3)
                                .bold()
                            //spread here
                            Spacer()
                            Text("10k+ Sold")
                                .bold()
                            Image(systemName: "questionmark.circle")
                                .foregroundColor(.gray)
                            Image(systemName: "heart")
                                .foregroundColor(.gray)
                        }
                    }.padding()
                    //first button
                    VStack(spacing:0){
                        Text("Optimum Nutrition Whey Protein Powder, 5lbs, 5.5lbs, ON Gold Standard")
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                            .font(.subheadline)
                            .overlay(
                                Rectangle()
                                    .frame(height: 0.3)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                        Button {
                            activeModal = .modal1
                        } label: {
                            HStack{
                                Image(systemName: "truck.box")
                                    .foregroundColor(.green)
                                VStack (alignment: .leading, spacing: 4){// shoud not be in center (right dapat)
                                    Text("Guaranteed to get by 7-9 May")
                                    Text("Free Shipping")
                                    Text("Get a P50 voucher if your order arrives late.").font(.caption)
                                }.foregroundColor(.black)
                                    .font(.callout)
                                Spacer()
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.gray)
                            }.padding(.vertical,5)
                                .padding(.horizontal, 16)
                        }.overlay(
                            Rectangle()
                                .frame(height:0.3)
                                .foregroundColor(.gray),
                            alignment: .bottom
                        )
                        //second
                        Button {
                            activeModal = .modal2
                        } label: {
                            HStack {
                                Image(systemName: "checkmark.shield")
                                    .foregroundColor(Color(red: 238/255, green: 77/255, blue: 45/255))
                                    .frame(width: 25)
                                VStack (alignment: .leading, spacing: 4){// shoud not be in center (right dapat)
                                    Text("Free and Easy Returns")
                                }.foregroundColor(.black)
                                    .font(.callout)
                                Spacer()
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.gray)
                            }.padding(.vertical,10).padding(.horizontal, 16)
                        }.overlay(
                            Rectangle()
                                .frame(height: 0.3)
                                .foregroundColor(.gray),
                            alignment: .bottom
                        )
                        //third
                        Button {
                            
                        } label: {
                            HStack {
                                Image(systemName: "creditcard")
                                    .foregroundColor(Color(red: 238/255, green: 77/255, blue: 45/255))
                                    .frame(width: 25)
                                VStack (alignment: .leading, spacing: 4){// shoud not be in center (right dapat)
                                    Text("SPay Later: Pay safely, in installments")
                                }.foregroundColor(.black)
                                    .font(.callout)
                                Spacer()
                            }.padding(.vertical,10).padding(.horizontal, 16)
                        }.overlay(
                            Rectangle()
                                .frame(height: 0.1)
                                .foregroundColor(.gray),
                            alignment: .bottom
                        ) //end
                        //comments (header)
                        Rectangle()
                            .foregroundColor(Color(red: 229/255, green: 228/255, blue: 226/255))
                            .frame(height: 15)
                        VStack(spacing: 0){
                            HStack{
                                Text("4.4")
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                Text("Product Ratings (328)")
                                Spacer()
                            }.frame(maxWidth: .infinity).padding()
                                .overlay(
                                    VStack {
                                        Spacer()
                                        Rectangle()
                                            .frame(height: 0.5)
                                            .foregroundColor(.gray)
                                    }
                                )
                            VStack{
                                HStack{
                                    Image(systemName: "person.circle.fill")
                                            .foregroundColor(.gray)
                                    Text("a*****n")
                                    Spacer()
                                    Text("Helpful (1)")
                                    Image(systemName: "hand.thumbsup")
                                }
                                HStack{
                                    Image(systemName: "star.fill").foregroundColor(.orange)
                                    Image(systemName: "star.fill").foregroundColor(.orange)
                                    Image(systemName: "star.fill").foregroundColor(.orange)
                                    Image(systemName: "star.fill").foregroundColor(.orange)
                                    Image(systemName: "star.fill").foregroundColor(.orange)
                                    Text("Similar Product Review")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    Image(systemName: "questionmark.circle.fill").foregroundColor(.gray)
                                    Spacer()
                                }.padding(.top, 5)
                                
                                VStack(alignment: .leading, spacing: 10){
                                    Text("WHAT THE FREAKY!")
                                    HStack{
                                        Image("gotham")
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                            .cornerRadius(15)
                                        Image("gotham")
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                            .cornerRadius(15)
                                        Spacer()
                                    }
                                }
                                //shop
                                VStack{
                                    HStack{
                                       
                                    }
                                }
                            }.frame(maxWidth: .infinity).padding()
                                .overlay(
                                    Rectangle()
                                        .frame(height: 0.2)
                                        .foregroundColor(.gray),
                                    alignment: .bottom
                                )
                        }
                        Rectangle()
                            .foregroundColor(Color(red: 229/255, green: 228/255, blue: 226/255))
                            .frame(height: 15)
                        VStack(spacing:0){
                            HStack{
                                Image("bruce").resizable()
                                    .frame(width: 70,height: 70)
                                    .cornerRadius(100)
                                VStack{
                                    Text("Bruce Wayne")
                                        .font(.subheadline)
                                        .bold()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Active 5 mins ago")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Marikina City")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                            HStack{
                                VStack{
                                    Text("4.8")
                                    Text("Rating").foregroundColor(.gray).font(.caption)
                                }.frame(maxWidth: .infinity)
                                    .overlay(
                                        Rectangle()
                                            .frame(width: 0.5)
                                            .foregroundColor(.gray),
                                        alignment: .trailing
                                    )
                                Spacer()
                                VStack{
                                    Text("88")
                                    Text("Products").foregroundColor(.gray).font(.caption)
                                }.frame(maxWidth: .infinity)
                                    .overlay(
                                        Rectangle()
                                            .frame(width: 0.5)
                                            .foregroundColor(.gray),
                                        alignment: .trailing
                                    )
                                Spacer()
                                VStack{
                                    Text("85%")
                                    Text("Chat Response").foregroundColor(.gray).font(.caption)
                                }
                                Spacer()
                            }.padding()
                        }.frame(maxWidth: .infinity).padding(10)
                            .overlay(
                                Rectangle()
                                    .frame(height: 0.2)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                    }
                    Rectangle()
                        .foregroundColor(Color(red: 229/255, green: 228/255, blue: 226/255))
                        .frame(height: 15)
                    VStack(spacing: 0){
                        Button {
                            print("pressed1")
                        } label: {
                            HStack{
                                Text("Specification")
                                    .bold()
                                Spacer()
                                Text("Discount stock, Othe...")
                                Image(systemName: "arrow.right")
                                    .foregroundStyle(.gray)
                            }.frame(maxWidth: .infinity).padding()
                                .overlay(
                                    Rectangle()
                                        .frame(height: 0.2)
                                        .foregroundStyle(.gray),
                                    alignment: .bottom
                                )
                        }.foregroundStyle(.black)

                        VStack(alignment: .leading, spacing: 10) {
                            Text("Optimum Nutrition Whey Protein Powder")
                                .font(.title2)
                                .bold()

                            Text("Fuel your fitness with the world’s best-selling whey protein. ON Gold Standard Whey delivers premium-quality protein to support muscle growth and recovery.")
                                .font(.body)

                            Text("✅ 24g Whey Protein per Serving")
                            Text("✅ 5.5g BCAAs for Recovery")
                            Text("✅ Fast Absorption & Easy Mixing")
                            Text("✅ Available in 5lbs and 5.5lbs Tubs")

                            Text("Perfect for post-workout recovery or daily protein needs.")
                                .font(.callout)
                                .foregroundColor(.gray)
                            }.padding()
                    }
                    //second
//                    Spacer()
                }
                
            }.sheet(item: $activeModal) { modal in
                switch modal {
                case .modal1:
                    ModalView1()
                        .presentationDetents([.medium])
                case .modal2:
                    ModalView2()
                        .presentationDetents([.medium])
                }
            }
        }
    }
    func imageHandler(selected:String){
        preview = selected
        print("hi", preview)
    }
}

struct ModalView1: View{
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 0) {
                Text("Shipping Fee Information")
                    .frame(maxWidth: .infinity).padding()
                        .overlay(
                                Rectangle()
                                    .frame(height: 0.3)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                        )
                        .bold()
                        .font(.headline)
                HStack{
                    Text("Shipping to")
                    Spacer()
                    Text("Marikina City, Metr..")
                }.frame(maxWidth: .infinity).padding()
                Rectangle()
                    .foregroundColor(Color(red: 229/255, green: 228/255, blue: 226/255))
                    .frame(height: 15)
                VStack(spacing: 10){
                    HStack{
                        Text("Standard Local")
                            .font(.callout)
                            .bold()
                        Spacer()
                        Text("P0")
                            .font(.callout)
                            .bold()
                    }
                    HStack{
                        Image(systemName:"box.truck.badge.clock.fill")
                        Text("Guranteed to get by 7 - 9 May")
                    }.font(.callout)
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Get a P50 voucher if your order arrives late.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }.padding()
                Rectangle()
                    .foregroundColor(Color(red: 229/255, green: 228/255, blue: 226/255))
                    .frame(height: 15)
                HStack{
                    Text("Economy Local")
                        .font(.callout)
                        .bold()
                    Spacer()
                    Text("Service Unavailable")
                        .font(.callout)
                        .bold()
                        .foregroundColor(.gray)
                }.padding()
                Rectangle()
                    .foregroundColor( Color(red: 229/255, green: 228/255, blue: 226/255))
                    .frame(height: 15)
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Text("OK")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(red: 238/255, green: 77/255, blue: 45/255))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            }
        }
}
struct ModalView2: View{
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 0) {
            Text("Shopping Guarantee")
                .frame(maxWidth: .infinity).padding()
                    .overlay(
                            Rectangle()
                                .frame(height: 0.3)
                                .foregroundColor(.gray),
                            alignment: .bottom
                    )
                    .bold()
                    .font(.headline)
            HStack{
                Image(systemName: "arrow.uturn.backward.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25,height: 25)
                    .foregroundColor(Color(red: 238/255, green: 77/255, blue: 45/255))
                VStack(spacing: 5){
                    Text("Free & Easy Returns")
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Returns are completely free, with no need to contact sellers.")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.gray)
                    Text("* Terms and conditions apply")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.gray)
                }
            }.padding()
            Spacer()
            Button {
                dismiss()
            } label: {
                Text("OK")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 238/255, green: 77/255, blue: 45/255))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
        }
    }
}
#Preview {
    ContentView()
}
    
