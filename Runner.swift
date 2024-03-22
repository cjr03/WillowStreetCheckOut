import SwiftUI

struct NRView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var isActive = false
    @State var netSalesText: String = ""
    @State var beerText: String = ""
    @State var wineText: String = ""
    @State var liqourText: String = ""
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Los Gatos Tip Out")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                VStack(){
                    Text("First Print Your Checkout.")
                        .bold()
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.all, 5.0)
                    Text("Next, complete the following.")
                        .bold()
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.all, 5.0)
                    HStack {
                        Text("Net Sales: ")
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        TextField("Enter", text: $netSalesText)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(Color.white.cornerRadius(10))
                            .foregroundColor(.black)
                    }.padding(.all, 20)
                        .background(Rectangle()
                            .foregroundColor(.red)
                            .cornerRadius(15))
                    HStack {
                        Text("Beer:          ")
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        TextField("Enter", text: $beerText)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(Color.white.cornerRadius(10))
                            .foregroundColor(.black)
                    }.padding(.all, 20)
                        .background(Rectangle()
                            .foregroundColor(.red)
                            .cornerRadius(15))
                    HStack {
                        Text("Wine:         ")
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        TextField("Enter", text: $wineText)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(Color.white.cornerRadius(10))
                            .foregroundColor(.black)
                    }.padding(.all, 20)
                        .background(Rectangle()
                            .foregroundColor(.red)
                            .cornerRadius(15))
                    HStack {
                        Text("Liqour:      ")
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        TextField("Enter", text: $liqourText)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(Color.white.cornerRadius(10))
                            .foregroundColor(.black)
                    }.padding(.all, 20)
                        .background(Rectangle()
                            .foregroundColor(.red)
                            .cornerRadius(15))
                    NavigationLink(destination: CONRView(), isActive: $isActive) {
                        Button {
                            appInfo.liqourSales = 0.0
                            appInfo.netSales = 0.0
                            if let liqourValue = Double(liqourText){
                                appInfo.liqourSales += (liqourValue)
                            } else {
                                isActive = false
                                appInfo.liqourSales = 0.0
                            }
                            if let beerValue = Double(beerText) {
                                appInfo.liqourSales += (beerValue)
                            } else {
                                isActive = false
                                appInfo.liqourSales = 0.0
                            }
                            if let wineValue = Double(wineText){
                                appInfo.liqourSales += wineValue
                            } else {
                                isActive = false
                                appInfo.liqourSales = 0.0
                            }
                            if let netValue = Double(netSalesText){
                                appInfo.netSales += netValue
                            } else {
                                isActive = false
                                appInfo.netSales = 0.0
                            }
                            isActive = true
                            if (netSalesText.count == 0 || beerText.count == 0 ||
                                wineText.count == 0 ||
                                liqourText.count == 0
                            ) {
                                isActive = false
                                appInfo.liqourSales = 0.0
                                appInfo.netSales = 0.0
                            }
                        } label: {
                            Text("Next")
                                .bold()
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(.horizontal, 105)
                                .padding(.vertical, 20)
                                .background(Rectangle()
                                    .foregroundColor(.red)
                                    .cornerRadius(15))
                        }
                    }
                }
                .padding(.all, 10.0)
                .background(Rectangle())
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(color: .white, radius: 10)
                .padding(.all, 10.0)
            }
            .padding(.all, 20.0)
            .background(Rectangle()
                .foregroundColor(.black)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding(.all, 25.0)
            .offset(x: 0, y: -25)
        }
    }
}

struct NRView_Previews: PreviewProvider {
    static var previews: some View {
        NRView()
    }
}
