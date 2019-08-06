Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA183AD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 23:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+ZBy6rIGdjeQ2CkSiApcMB96t4YdnIp0PQFncoIqgI=; b=J8JqJWS+KTaGjb
	4ZjyV6QcOR6DJUpmwBJeHtAfNl6Fd8E8vJK/IcjeYQF2Bz2FFPxl9LrkPrr653x+y4eSQI7XlK86Q
	kzLObsbZYnjE5DmbotBoDFKGRO+DBGpjkngBxXDRDvoigOO5GTjVY1Hfcha6VMwwnPRWhc7J1rcRE
	csOhIcaTi4maufLSNPRfFQQbk+moQik+Kz7Je3m49M9xOG2BD6w/aZP9/FnZc+d77/T9IHMQkgtLs
	pQNr6nQv8mHrNcCYoHTRgGQT4wwvB21u3k88lIryQJutBdkVFmDVbfR8zV/hgeGq8ISUHZjDxIdM5
	7eoyOri8lg6bBk3zJBRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv6kF-00043o-Sa; Tue, 06 Aug 2019 21:11:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv6k3-000437-Q4
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 21:11:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 953EE12661549;
 Tue,  6 Aug 2019 14:11:33 -0700 (PDT)
Date: Tue, 06 Aug 2019 14:11:33 -0700 (PDT)
Message-Id: <20190806.141133.1365654857955536268.davem@davemloft.net>
To: natechancellor@gmail.com
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190803060155.89548-1-natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 06 Aug 2019 14:11:34 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_141135_848501_1607B7EA 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, willy@infradead.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4NCkRhdGU6
IEZyaSwgIDIgQXVnIDIwMTkgMjM6MDE6NTYgLTA3MDANCg0KPiBBZnRlciBjb21taXQgMTcxYTli
YWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRlc3QgYnVpbGQgb24NCj4gIU1JUFMiKSwg
dGhlIGZvbGxvd2luZyBjb21iaW5hdGlvbiBvZiBjb25maWdzIGNhdXNlIGEgZmV3IEtjb25maWcN
Cj4gd2FybmluZ3MgYW5kIGJ1aWxkIGVycm9ycyAoZGlzdGlsbGVkIGZyb20gYXJtIGFsbHllc2Nv
bmZpZyBhbmQgUmFuZHkncw0KPiByYW5kY29uZmlnIGJ1aWxkcyk6DQo+IA0KPiAgICAgQ09ORklH
X05FVERFVklDRVM9eQ0KPiAgICAgQ09ORklHX1NUQUdJTkc9eQ0KPiAgICAgQ09ORklHX0NPTVBJ
TEVfVEVTVD15DQo+IA0KPiBhbmQgQ09ORklHX09DVEVPTl9FVEhFUk5FVCBhcyBlaXRoZXIgYSBt
b2R1bGUgb3IgYnVpbHQtaW4uDQo+IA0KPiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5j
aWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTg0KPiAgIERlcGVuZHMgb24gW25dOiBORVRERVZJ
Q0VTIFs9eV0gJiYgTURJT19ERVZJQ0UgWz15XSAmJiBNRElPX0JVUyBbPXldDQo+ICYmIDY0QklU
IFs9bl0gJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW5dDQo+ICAgU2VsZWN0ZWQgYnkg
W3ldOg0KPiAgIC0gT0NURU9OX0VUSEVSTkVUIFs9eV0gJiYgU1RBR0lORyBbPXldICYmIChDQVZJ
VU1fT0NURU9OX1NPQyB8fA0KPiBDT01QSUxFX1RFU1QgWz15XSkgJiYgTkVUREVWSUNFUyBbPXld
DQo+IA0KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0
ZW9uLmM6MTQ6DQo+IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oOjExMTozNjogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mDQo+IGZ1bmN0aW9uIKF3cml0ZXGiOyBkaWQgeW91
IG1lYW4goXdyaXRlbKI/DQo+IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQ0KPiAgIDExMSB8ICNkZWZpbmUgb2N0X21kaW9fd3JpdGVxKHZhbCwgYWRkcikgd3JpdGVxKHZh
bCwgKHZvaWQgKilhZGRyKQ0KPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+DQo+IA0KPiBDT05GSUdfNjRCSVQgaXMgbm90IHN0cmljdGx5IG5lY2Vzc2Fy
eSBpZiB0aGUgcHJvcGVyIHJlYWRxL3dyaXRlcQ0KPiBkZWZpbml0aW9ucyBhcmUgaW5jbHVkZWQg
ZnJvbSBpby02NC1ub25hdG9taWMtbG8taGkuaC4NCj4gDQo+IENPTkZJR19PRl9NRElPIGlzIG5v
dCBuZWVkZWQgd2hlbiBDT05GSUdfQ09NUElMRV9URVNUIGlzIGVuYWJsZWQgYmVjYXVzZQ0KPiBv
ZiBjb21taXQgZjlkYzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBv
Zl9tZGlvLmguIikuDQo+IA0KPiBGaXhlczogMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246
IEFsbG93IHRlc3QgYnVpbGQgb24gIU1JUFMiKQ0KPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmll
QGtlcm5lbC5vcmc+DQo+IFJlcG9ydGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFk
ZWFkLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2Vs
bG9yQGdtYWlsLmNvbT4NCg0KQXBwbGllZCB0byBuZXQtbmV4dC4NCg0KUGxlYXNlIG1ha2UgaXQg
Y2xlYXIgd2hhdCB0cmVlIHlvdXIgY2hhbmdlcyBhcmUgdGFyZ2V0dGluZyBpbiB0aGUgZnV0dXJl
LA0KdGhhbmsgeW91Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
