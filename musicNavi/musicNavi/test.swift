//
//  11.swift
//  musicNavi
//
//  Created by 변상필 on 2023/06/28.
//

import SwiftUI

// sample SiteInfo
struct SiteInfo: Identifiable {
  let id = UUID()
  let customer: String
  let otherInfo: String
}

struct test: View {

  // a "flat" database
  var siteInfoList = [
    SiteInfo(customer: "Dog", otherInfo: "1"),
    SiteInfo(customer: "Dog", otherInfo: "2"),
    SiteInfo(customer: "Cat", otherInfo: "3"),
    SiteInfo(customer: "Bird", otherInfo: "4"),
    SiteInfo(customer: "Dog", otherInfo: "5"),
    SiteInfo(customer: "Bird", otherInfo: "6"),
    SiteInfo(customer: "Cat", otherInfo: "7")
  ]

  // produces a dictionary of the form
  // [
  // "Dog" : [three SiteInfo records],
  // "Cat" : [two SiteInfo records],
  // "Bird" : [two SiteInfo records]
  // ]
  var sitesCollatedByCustomer: [String : [SiteInfo]] {
    Dictionary(grouping: siteInfoList, by: { $0.customer })
  }

  // pulls out the keys from the dictionary made above, sorted
  var uniqueCustomers: [String] {
    sitesCollatedByCustomer.map({ $0.key }).sorted()
  }

  var body: some View {
    NavigationView {
      List {
        ForEach(uniqueCustomers, id: \.self) { customer in
            
          Section(header: Text(customer)) {
            ForEach(self.sitesCollatedByCustomer[customer]!) { site in
              SiteRow(site: site)
            }
          }
//            Button {
//                print(uniqueCustomers)
//                print(sitesCollatedByCustomer)
//            } label: {
//                Text("dfsd")
//            }
        }
      } // end of List
        .navigationBarTitle(Text("Site Listing"))
        


    } // end of NavigationView
  }
}

struct SiteRow: View {

  var site: SiteInfo

    var body: some View {
      HStack {
        Text(site.customer)
        Spacer()
        Text(site.otherInfo)
      }
    }
}
struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
