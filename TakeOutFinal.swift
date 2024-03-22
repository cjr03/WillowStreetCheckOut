import SwiftUI

struct COTOView: View {
    @EnvironmentObject var appInfo: AppInformation
    var body: some View {
            ZStack {
                Color(.red)
                    .ignoresSafeArea()
                VStack() {
                    Spacer()
                    VStack(alignment: .center, spacing: 25) {
                        Text("Tip Out Completed")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            Text("Net Sales: " + String(Int(appInfo.netSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("Door Dash Sales: " + String(Int(appInfo.doorSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("Uber Eats Sales: " + String(Int(appInfo.uberSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            HStack{
                                Text("Total 3rd Party Sales: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.doorSales+appInfo.uberSales))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Net Sales - 3rd Party: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.netSales-appInfo.doorSales-appInfo.uberSales))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Tippable Sales: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int((appInfo.netSales-appInfo.doorSales-appInfo.uberSales)*0.15))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Runner Tip: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int((appInfo.netSales-appInfo.doorSales-appInfo.uberSales)*0.15*0.05))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                        }
                        .padding(.all, 10.0)
                        .background(Rectangle())
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(color: .white, radius: 10)
                        .padding(.all, 10.0)
                    }
                    .padding(.all, 25.0)
                    .background(Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .shadow(radius: 15))
                    .padding(.all, 25.0)
                    Spacer()
                }.offset(x:0, y:-25)
        }
    }
}

struct COTOView_Previews: PreviewProvider {
    static var previews: some View {
        COTOView()
    }
}
