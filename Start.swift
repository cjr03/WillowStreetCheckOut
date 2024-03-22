import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.red)
                    .ignoresSafeArea()
                VStack() {
                    Spacer()
                    Image("WSpizza")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 15)
                        .padding(.horizontal, 150.0)
                        .padding(.vertical, 20)
                    VStack(alignment: .center, spacing: 25) {
                        Text("Willow Street Tip Out")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("Thank you for your hard work!")
                            .bold()
                            .font(.body)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        VStack(){
                            Spacer()
                            Text("Select your location to start:")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            HStack {
                                Spacer()
                                NavigationLink(destination: LGView(), label: { Text("Los Gatos")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                })
                                Spacer()
                                NavigationLink(destination: WGView(), label: { Text("Willow Glen")
                                    .bold()
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                })
                                Spacer()
                            }.padding(.vertical, 25.0)
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
                }
                .padding(.bottom, 200.0)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

class AppInformation: ObservableObject {
    @Published var liqourSales = 0.0
    @Published var netSales = 0.0
    @Published var foodSales = 0.0
    @Published var busserTip = 0.0
    @Published var doorSales = 0.0
    @Published var uberSales = 0.0
    @Published var runner = false
}
