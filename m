Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177911E25A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqZeTKpJNi8YaHV7nMLM8g3VF+xFwHl2Ub1tdEBHaHo=; b=bjehP5F2+PbqGO
	fs+5pYB0C4by/NL65N6v6Ybfz6NhVtTUof3bd1N7TBWCp8lIYRcyjJ6oS8YoHSgAU8awpxCPWWbEh
	os38bYq+RyxB3cgPxZa1lBGQ2UhGsgjLB8/rvPunMOErqK3UEmmz1iaChSCgtdQ1JDs4i+OBcFMUZ
	29SJPp6sRCcjClxr7gAUQ7l4LQW+WI0TWMMXiHAVbbSoQTXbsoF5oD+dGM2GIVFxB7zXhk7jqM+ns
	2W4CqGZoTqf220rlItSukQXzHWRkqGmNoL+caFxIWr9uBjk6W1cNzAAsLfOtQIWZP8/+Ejs0fy5Au
	eg4rxUqIKLkQyMYcivNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifiY5-0007ju-MT; Fri, 13 Dec 2019 10:51:53 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiXw-0007jB-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 10:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eE4y8gsP10bYUZzcVYOhJBg5DwSCvVSdn/DLmbL2E+c=; b=KG2Q9xxGPQbHwOnzaFTeiWqv4
 MuzEQ0Mo63HBPb6xDidwbS+UxlTKXjYsOz5Rre7ybDEqTIEhVtAKLNr1ynkXWlvSi3D/arx+JZ3N8
 YFBKUjVbMACt0wP04qZzq8vO4IXjdYdPZvE4DDM2iLkIhHZfUO8Fo8RMiC4o/34LinF5a0dYucLi5
 TUwavlFDK6tAG9W9VyaXt4fHQKB/1TlRbEl4ThYBvfIarfWAbrEv9SnX6mZSfDGv9kzpGfu41OeWM
 mhO3sEVGlWYM283yIdijjSph58GOP4dp39WCnfVWjx3iAQbtNao5IQCMJd9Hio/TQ/WHsaLpyk+M/
 tceFikAqw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52398)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifiX7-0004Il-Di; Fri, 13 Dec 2019 10:50:53 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifiX0-0007pM-S5; Fri, 13 Dec 2019 10:50:46 +0000
Date: Fri, 13 Dec 2019 10:50:46 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Message-ID: <20191213105046.GQ25745@shell.armlinux.org.uk>
References: <20191127071136.5240-1-peng.ma@nxp.com>
 <20191128100613.GI25745@shell.armlinux.org.uk>
 <VI1PR04MB4431CF7F051F9439C84F84FAED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191211104347.GA25745@shell.armlinux.org.uk>
 <VI1PR04MB44313AA19A4F81BA1AD9BC5CED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191211114230.GC25745@shell.armlinux.org.uk>
 <VI1PR04MB4431DF2E270FC45A6CC878A9ED550@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191212105857.GE25745@shell.armlinux.org.uk>
 <VI1PR04MB44318D7C92B6A29D04840B0DED540@VI1PR04MB4431.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB44318D7C92B6A29D04840B0DED540@VI1PR04MB4431.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_025145_235670_9B1AF4DD 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Chen <peter.chen@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Leo Zhang <leo.zhang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mirela Rabulea <mirela.rabulea@nxp.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Mircea Pop <mircea.pop@nxp.com>, Fancy Fang <chen.fang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Robin Gong <yibin.gong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 BOUGH CHEN <haibo.chen@nxp.com>, Ying Liu <victor.liu@nxp.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Viorel Suman <viorel.suman@nxp.com>, Robert Chiras <robert.chiras@nxp.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Zening Wang <zening.wang@nxp.com>, Han Xu <han.xu@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 Ranjani Vaidyanathan <ranjani.vaidyanathan@nxp.com>,
 Bogdan Florin Vlad <bogdan.vlad@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMTMsIDIwMTkgYXQgMTA6MzM6NTFBTSArMDAwMCwgUGVuZyBNYSB3cm90ZToK
PiAKPiAKPiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+RnJvbTogUnVzc2VsbCBLaW5n
IC0gQVJNIExpbnV4IGFkbWluIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4gPlNlbnQ6IDIwMTnl
ubQxMuaciDEy5pelIDE4OjU5Cj4gPlRvOiBQZW5nIE1hIDxwZW5nLm1hQG54cC5jb20+Cj4gPkNj
OiBzaGF3bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOwo+ID5saW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eEByZW1wZWwtcHJpdmF0LmRlOyBBYmVsIFZlc2EK
PiA+PGFiZWwudmVzYUBueHAuY29tPjsgQWlzaGVuZyBEb25nIDxhaXNoZW5nLmRvbmdAbnhwLmNv
bT47IEFuc29uIEh1YW5nCj4gPjxhbnNvbi5odWFuZ0BueHAuY29tPjsgQm9nZGFuIEZsb3JpbiBW
bGFkIDxib2dkYW4udmxhZEBueHAuY29tPjsKPiA+Qk9VR0ggQ0hFTiA8aGFpYm8uY2hlbkBueHAu
Y29tPjsgQ2xhcmsgV2FuZwo+ID48eGlhb25pbmcud2FuZ0BueHAuY29tPjsgRGFuaWVsIEJhbHV0
YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPjsgRmFuY3kKPiA+RmFuZyA8Y2hlbi5mYW5nQG54cC5j
b20+OyBIYW4gWHUgPGhhbi54dUBueHAuY29tPjsgSG9yaWEgR2VhbnRhCj4gPjxob3JpYS5nZWFu
dGFAbnhwLmNvbT47IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2RhbkBueHAuY29tPjsgSmFj
a3kKPiA+QmFpIDxwaW5nLmJhaUBueHAuY29tPjsgSm9ha2ltIFpoYW5nIDxxaWFuZ3Fpbmcuemhh
bmdAbnhwLmNvbT47IEp1biBMaQo+ID48anVuLmxpQG54cC5jb20+OyBMZW8gWmhhbmcgPGxlby56
aGFuZ0BueHAuY29tPjsgTGVvbmFyZCBDcmVzdGV6Cj4gPjxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNv
bT47IE1pcmNlYSBQb3AgPG1pcmNlYS5wb3BAbnhwLmNvbT47IE1pcmVsYQo+ID5SYWJ1bGVhIDxt
aXJlbGEucmFidWxlYUBueHAuY29tPjsgUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+OyBQZXRl
cgo+ID5DaGVuIDxwZXRlci5jaGVuQG54cC5jb20+OyBSYW5qYW5pIFZhaWR5YW5hdGhhbgo+ID48
cmFuamFuaS52YWlkeWFuYXRoYW5AbnhwLmNvbT47IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGly
YXNAbnhwLmNvbT47Cj4gPlJvYmluIEdvbmcgPHlpYmluLmdvbmdAbnhwLmNvbT47IFNoZW53ZWkg
V2FuZwo+ID48c2hlbndlaS53YW5nQG54cC5jb20+OyBWaW9yZWwgU3VtYW4gPHZpb3JlbC5zdW1h
bkBueHAuY29tPjsgWWluZyBMaXUKPiA+PHZpY3Rvci5saXVAbnhwLmNvbT47IFplbmluZyBXYW5n
IDx6ZW5pbmcud2FuZ0BueHAuY29tPjsKPiA+a2VybmVsQHBlbmd1dHJvbml4LmRlOyBmZXN0ZXZh
bUBnbWFpbC5jb207Cj4gPmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgtaTJjQHZnZXIua2VybmVsLm9yZwo+ID5TdWJqZWN0OiBSZTogW0VYVF0gUmU6IFtQQVRDSF0g
aTJjOiBpbXg6IERlZmVyIHByb2JpbmcgaWYgRURNQSBub3QgYXZhaWxhYmxlCj4gPgo+ID5DYXV0
aW9uOiBFWFQgRW1haWwKPiA+Cj4gPk9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDAzOjA5OjMyQU0g
KzAwMDAsIFBlbmcgTWEgd3JvdGU6Cj4gPj4gSGVsbG8gUnVzc2VsbCwKPiA+Pgo+ID4+IFRoYW5r
cyB2ZXJ5IG11Y2ggZm9yIHlvdXIgc3RyaWN0IGd1aWRhbmNlIGFuZCBjb21tZW50cy4KPiA+PiBJ
IHJlYWxpemVkIGl0IGlzIGhhcmQgdG8gdXMgdGhhdCB3ZSB3YW50IHRvIGkyYyB1c2VkIGVkbWEg
d2hlbiBlZG1hCj4gPj4gcHJvYmUgYWZ0ZXIgaTJjIHByb2JlLgo+ID4KPiA+SSBoYXZlIG5vIHBy
b2JsZW0gd2l0aCB0aGF0IGFpbS4gIEknbSBqdXN0IHZlcnkgY29uY2VybmVkIGJ5IHRoZSBwcm9w
b3NlZAo+ID5pbXBsZW1lbnRhdGlvbiwgZXNwZWNpYWxseSB3aGVuIGl0IGhhcyBhbHJlYWR5IGJl
ZW4gcHJvdmVuIHRvIGNhdXNlCj4gPnJlZ3Jlc3Npb25zIGluIHRoZSBrZXJuZWwuIEkgc2VlbSB0
byByZW1lbWJlciB0aGF0IHRoZSBpbmZpbml0ZSBsb29wIGNhdXNlZAo+ID5vdGhlciBpc3N1ZXMs
IHN1Y2ggYXMgdGhlIHN5c3RlbSBiZWluZyB1bmFibGUgdG8gY29tcGxldGUgYm9vdGluZy4KPiA+
Cj4gPj4gSSBsb29rIGZvcndhcmQgdG8gZGlzY3Vzc2luZyB3aXRoIHlvdSBhcyBiZWxvdywgaWYg
eW91IGxpa2UuCj4gPj4gVGhhbmtzLgo+ID4+Cj4gPj4gWW91IHNheSBJIGNvdWxkIGRvIHRoaXM6
Cj4gPj4gIlNvLCBpZiB5b3Ugd2FudCB0byBkbyB0aGlzIChhbmQgeWVzLCBJJ2QgYWxzbyBlbmNv
dXJhZ2UgaXQgdG8gYmUKPiA+PiBjb25kaXRpb25hbCBvbiBFRE1BIGJlaW5nIGJ1aWx0LWluLCBh
cyBJMkMgaXMgY29tbW9ubHkgdXNlZCBhcyBhIHdheQo+ID4+IHRvIGdldCBhdCBSVENzLCB3aGlj
aCBhcmUgcmVhZCBiZWZvcmUga2VybmVsIG1vZHVsZXMgY2FuIGJlIGxvYWRlZCkKPiA+PiB0aGVu
IHlvdSBNVVNUIG1vdmUKPiA+PiBpMmNfaW14X2RtYV9yZXF1ZXN0KCkgYmVmb3JlCj4gPj4gaTJj
X2FkZF9udW1iZXJlZF9hZGFwdGVyKCkgdG8gYXZvaWQgdGhlIGluZmluaXRlIGxvb3AuIgo+ID4+
Cj4gPj4gRXZlbiBpZiBJIGRvIHRoaXMsIEl0J3MgaGFyZCB0byBhdm9pZCB0aGUgaW5maW5pdGUg
bG9vcCBvZiBpMmMgcHJvYmUgY2F1c2VkIGJ5Cj4gPkVETUEoYnVpbGQtaW4pIGluaXRpYWxpemF0
aW9uIGZhaWx1cmUuCj4gPgo+ID5JdCBpc24ndCBjbGVhciB3aGF0IHlvdSBtZWFuIGhlcmUuCj4g
Pgo+ID5JZiBFRE1BIGZhaWxzIHRvIHByb2JlIChiZWNhdXNlIGZzbF9lZG1hX3Byb2JlKCkgcmV0
dXJucyBhbiBlcnJvciBvdGhlciB0aGFuCj4gPkVQUk9CRV9ERUZFUikgdGhlbiBvZl9kbWFfZmlu
ZF9jb250cm9sbGVyKCkgd2lsbCByZXR1cm4gTlVMTC4gVGhhdCB3aWxsIGJlCj4gPnByb3BhZ2F0
ZWQgZG93biB0aHJvdWdoIGkyY19pbXhfZG1hX3JlcXVlc3QoKS4gVGhpcyBpcyBubyBkaWZmZXJl
bnQgZnJvbSB0aGUKPiA+Y2FzZSB3aGVyZSBFRE1BIGlzIGJ1aWx0IGFzIGEgbW9kdWxlLiBJdCBp
cyBhbHNvIG5vIGRpZmZlcmVudCBmcm9tIHRoZSBjYXNlCj4gPndoZXJlIEVETUEgaGFzbid0IHll
dCBiZWVuIHByb2JlZC4KPiA+Cj4gSGVsbG8gUnVzc2VsbCwKPiAKPiBUaGUgcmVzdWx0IG9mIG15
IHRlc3QgaXMgbm90IGxpa2UgdGhhdCwgSXQgaXMgc3RpbGwgd2l0aCBwcm9iZSBsb29wLCB0aGUg
dGVzdCBjb25maWcgYXMgZm9sbG93czoKClNvIHlvdSBoYXZlbid0IHRlc3RlZCB0aGUgc2NlbmFy
aW8gdGhhdCBjYXVzZXMgdGhlIHByb2JsZW0uICBIb3cKY29udmVuaWVudCBmb3IgeW91LgoKPiAx
LkVETUEgYnVpbGQtaW4KPiAyLnJldHVybiAtRUlOVkFMIHRvcCBvZiBmc2xfZWRtYV9wcm9iZSB3
aGVuIGVkbWEgcHJvYmUKPiAzLmkyYyBwcm9iZSB3aXRoIG9yaWdpbmFsIHBhdGNoLCBJIHB1dCB0
aGUgaTJjX2lteF9kbWFfcmVxdWVzdCBpbiBmcm9udCBvZiBpMmNfYWRkX251bWJlcmVkX2FkYXB0
ZXIgb3IgdXNlZCBvcmlnaW5hbCBwYXRjaC4KPiAKPiBJIHNlbmQgeW91IHRoZSBmdW5jdGlvbiBv
Zl9kbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsIGNvdWxkIGV4cGxhaW4gaXQgbGFzdCBtYWlsLAo+
ICJSZXR1cm4gLUVQUk9CRV9ERUZFUiIgZGVwZW5kcyBvbjoKPiAxLiBlZG1hIG5vdCBwcm9iZSBv
ciBwcm9iZSBmYWlsZWQKPiAyLiBUaGVyZSBpcyBlZG1hIG5vZGUgaW4gRFRTIGFuZCBJMkMgd2l0
aCBlZG1hIHByb3BlcnR5CgpDb3JyZWN0LgoKSSdtIHNvcnJ5LCBidXQgbXkgcGF0aWVuY2UgaXMg
d2VhcmluZyB2ZXJ5IHRoaW4uIEkndmUgZXhwbGFpbmVkIHRoZQpwcm9ibGVtIGluIGRldGFpbCwg
SSd2ZSBleHBsYWluZWQgaG93IHlvdSBjYW4gcmVwcm9kdWNlIGl0LCBidXQgaXQKc2VlbXMgSSdt
IG5vdCBiZWluZyBsaXN0ZW5lZCB0by4gU28sIEkgZG9uJ3QgaGF2ZSBhbnl0aGluZyBmdXJ0aGVy
IHRvCmFkZCB0byB0aGlzIGRpc2N1c3Npb24gdGhhdCBoYXNuJ3QgYWxyZWFkeSBiZWVuIHNhaWQu
CgpDb25zaWRlciBhbnkgcGF0Y2ggdGhhdCBhZGRzICphbnkqIHBhdGggdGhhdCBjYW4gcmV0dXJu
IC1FUFJPQkVfREVGRVIKYWZ0ZXIgYSBzdWNjZXNzZnVsIGNhbGwgdG8gaTJjX2FkZF9udW1iZXJl
ZF9hZGFwdGVyKCkgb3IgaXRzIHNpbWlsYXIKZnVuY3Rpb25zIHRvIGJlIE5BSydkIGJ5IG15c2Vs
ZiBvbiBhY2NvdW50IG9mIHRoaXMgaW5maW5pdGUgcHJvYmUgbG9vcAp0aGF0IGhhcyBiZWVuIHBy
b3ZlbiBpbiBwcmV2aW91cyBrZXJuZWxzIHRvIG9jY3VyLgoKVGhhbmtzLgoKLS0gClJNSydzIFBh
dGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVz
LwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEy
LjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1i
cHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
