//
//  CurrentUserFooter+.swift
//  Swiftcord
//
//  Created by Vincent Kwok on 3/9/22.
//

import SwiftUI

extension CurrentUserFooter {
	@ViewBuilder func accountSwitcher() -> some View {
		DialogView(title: "Manage Accounts", description: "Switch accounts, sign in, sign out, go wild.") {
			Button { switcherPresented = false } label: {
				Text("action.close")
			}
			.buttonStyle(.plain)
			Spacer()
			Button {
				switcherPresented = false
				loginPresented = true
			} label: {
				Text("Add an account")
			}
			.buttonStyle(FlatButtonStyle())
			.controlSize(.small)
		} content: {
			GroupBox {
				ScrollView {
					LazyVStack(spacing: 0) {
						ForEach(switcher.accounts, id: \.id) { account in
							AccountRow(
								meta: account,
								isCurrent: account.id == user.id,
								switcherPresented: $switcherPresented
							)
							if account != switcher.accounts.last {
								Divider().padding(.horizontal, 16)
							}
						}
					}
				}
				.frame(maxHeight: 240)
				.padding(-4)
			}
		}
	}
}
