Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706916AC57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=657OdOr+yGKkNa/AzSYr3+jS+jqHXFGPU6LjaIIxRPY=; b=buL7JO5zarZ4JQ
	DwEPelvVpnVMa+coL4sma+9udqBfgVjRrdVZSbQBvHRnf6avA7RBjs1mltUiwg3vutUv58VRIgf3h
	620iSEiy9RVv++NrCakOdC5xDE6Gv4FHpldD8hizLJvzBd6Msr8C4cKyjDr2oT0BUiI93EGU4t+ha
	ELUZOi9iDa2+gPolr44KeIL+XHuMZfET0V8CclJx2c1n+e/zYs3SP461COg9zXrrXfXI75VaAcO+M
	xMTRElsZv90T5Wax+gVStlB3qPfljinyszdjQQOiH5KjVMSraJXKPdpGtOUYhG2YIETBO8M1IaFYr
	bldP4ojsfkas2GoR0hLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPqn-0000oT-NI; Tue, 16 Jul 2019 15:58:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPqQ-0000nH-9x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:58:23 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hnPqC-00053c-JT; Tue, 16 Jul 2019 17:58:08 +0200
Message-ID: <1563292685.2676.12.camel@pengutronix.de>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
From: Lucas Stach <l.stach@pengutronix.de>
To: Daniel Baluta <daniel.baluta@gmail.com>, Angus Ainslie <angus@akkea.ca>
Date: Tue, 16 Jul 2019 17:58:05 +0200
In-Reply-To: <CAEnQRZCoOyyZVs0=BjXB5=wYe3XW9GOF9JvwjhSU9BsChh08uA@mail.gmail.com>
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
 <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
 <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
 <9e196ce51eac9ce9c327198c4a2911a8@www.akkea.ca>
 <CAEnQRZCoOyyZVs0=BjXB5=wYe3XW9GOF9JvwjhSU9BsChh08uA@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085822_351954_C4CF201E 
X-CRM114-Status: GOOD (  31.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Andra Danciu <andradanciu1997@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 andrew.smirnov@gmail.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLAoKQW0gTWl0dHdvY2gsIGRlbiAwMy4wNy4yMDE5LCAxNjoyNSArMDMwMCBzY2hy
aWViIERhbmllbCBCYWx1dGE6Cj4gPiBPbiBXZWQsIEp1bCAzLCAyMDE5IGF0IDQ6MTIgUE0gQW5n
dXMgQWluc2xpZSA8YW5ndXNAYWtrZWEuY2E+IHdyb3RlOgo+ID4gCj4gPiBIaSBEYW5pZWwsCj4g
PiAKPiA+IE9uIDIwMTktMDctMDMgMDc6MTAsIERhbmllbCBCYWx1dGEgd3JvdGU6Cj4gPiA+ID4g
PiA+IE9uIFdlZCwgSnVsIDMsIDIwMTkgYXQgNDowMSBQTSBBbmd1cyBBaW5zbGllIDxhbmd1c0Bh
a2tlYS5jYT4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gSGkgQW5kcmEsCj4gPiA+ID4gCj4gPiA+
ID4gSSB0cmllZCB0aGlzIG91dCBvbiBsaW51eC1uZXh0IGFuZCBJJ20gbm90IGFibGUgdG8gcmVj
b3JkIG9yIHBsYXkKPiA+ID4gPiBzb3VuZC4KPiA+ID4gPiAKPiA+ID4gPiBJIGFsc28gYWRkZWQg
dGhlIHNhaTIgZW50cnkgdG8gdGVzdCBvdXQgb3VyIGRldmtpdCBhbmQgZ2V0IGEgUENNCj4gPiA+
ID4gdGltZW91dAo+ID4gPiA+IHdpdGggdGhhdC4KPiA+ID4gCj4gPiA+IEhpIEFuZ3VzLAo+ID4g
PiAKPiA+ID4gVGhlcmUgYXJlIHN0aWxsIGxvdHMgb2YgU0FJIHBhdGNoZXMgdGhhdCBuZWVkIHRv
IGJlIHVwc3RyZWFtLiBNZSBhbmQKPiA+ID4gQW5kcmEKPiA+ID4gd2lsbCBiZSB3b3JraW5nIG9u
IHRoYXQgb3ZlciB0aGlzIHN1bW1lci4KPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gT24gMjAxOS0w
Ny0wMiAwNzoyMywgQW5kcmEgRGFuY2l1IHdyb3RlOgo+ID4gPiA+ID4gU0FJMyBhbmQgU0FJNiBu
b2RlcyBhcmUgdXNlZCB0byBjb25uZWN0IHRvIGFuIGV4dGVybmFsIGNvZGVjLgo+ID4gPiA+ID4g
VGhleSBoYXZlIDEgVHggYW5kIDEgUnggZGF0YWxpbmUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiA+ID4gPiBDYzogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgo+ID4gPiA+
ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHJhIERhbmNpdSA8YW5kcmFkYW5jaXUxOTk3
QGdtYWlsLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gQ2hhbmdlcyBzaW5jZSB2MjoKPiA+
ID4gPiA+IMKgwqDCoMKgwqDCoC0gcmVtb3ZlZCBtdWx0aXBsZSBuZXcgbGluZXMKPiA+ID4gPiA+
IAo+ID4gPiA+ID4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoC0gQWRk
ZWQgc2FpMyBub2RlIGJlY2F1c2Ugd2UgbmVlZCBpdCB0byBlbmFibGUgYXVkaW8gb24gcGljby1w
aS04bQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgLSBBZGRlZCBjb21taXQgZGVzY3JpcHRpb24KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEu
ZHRzaSB8IDI5Cj4gPiA+ID4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kK
PiA+ID4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiA+
ID4gPiA+IGluZGV4IGQwOWI4MDhlZmY4Ny4uNzM2Y2Y4MWI2OTVlIDEwMDY0NAo+ID4gPiA+ID4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiA+ID4gPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4gPiA+ID4g
PiBAQCAtMjc4LDYgKzI3OCwyMCBAQAo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6ZS1jZWxscyA9IDwxPjsKPiA+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmFuZ2VzID0gPDB4MzAwMDAwMDAg
MHgzMDAwMDAwMCAweDQwMDAwMD47Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2FpNjogc2FpQDMwMDMwMDAw
IHsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLXNhaSIsCj4gPiA+ID4gCj4g
PiA+ID4gSSBkb24ndCBmaW5kIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgaW4gc291bmQvc29jL2Zz
bC9mc2xfc2FpLmMuIEFyZW4ndAo+ID4gPiA+IHRoZSByZWdpc3RlcnMgYXQgYSBkaWZmZXJlbnQg
b2Zmc2V0IGZyb20gImZzbCxpbXg2c3gtc2FpIi4KPiA+ID4gCj4gPiA+IFllcywgeW91IGFyZSBy
aWdodCBvbiB0aGlzLiBXZSBhcmUgdHJ5aW5nIHRvIHNsb3dseSBwdXNoIGFsbCBvdXIKPiA+ID4g
aW50ZXJuYWwtdHJlZQo+ID4gPiBwYXRjaGVzIHRvIG1haW5saW5lLiBPYnZpb3VzbHksIHdpdGgg
c3RhcnRlZCB3aXRoIGxvdyBoYW5naW5nIGZydWl0cywKPiA+ID4gRFRTCj4gPiA+IG5vZGVzIGFu
ZCBzbWFsbCBTQUkgZml4ZXMuCj4gPiA+IAo+ID4gPiBTb29uLCB3ZSB3aWxsIHN0YXJ0IHRvIHNl
bmQgcGF0Y2hlcyBmb3IgU0FJIElQIGlwZ3JhZGUgZm9yIGlteDguCj4gPiA+IAo+ID4gPiA+IAo+
ID4gPiA+IEhvdyBpcyB0aGlzIHN1cHBvc2VkIHRvIHdvcmsgPwo+ID4gPiA+IAo+ID4gPiAKPiA+
ID4gRm9yIHRoZSBtb21lbnQgaXQgd29uJ3Qgd29yayB1bmxlc3Mgd2Ugd2lsbCB1cHN0cmVhbSBh
bGwgb3VyIFNBSQo+ID4gPiBpbnRlcm5hbCBwYXRjaGVzLgo+ID4gPiBCdXQgd2Ugd2lsbCBnZXQg
dGhlcmUgaG9wZWZ1bGx5IHRoaXMgc3VtbWVyLgo+ID4gPiAKPiA+IAo+ID4gU2hvdWxkbid0IGEg
d29ya2luZyBkcml2ZXIgYmUgdXBzdHJlYW0gYmVmb3JlIGVuYWJsaW5nIGl0IGluIHRoZQo+ID4g
ZGV2aWNldHJlZSA/Cj4gCj4gSSBzZWUgeW91ciBwb2ludCBoZXJlIGFuZCBtYXliZSB5b3VyIHN1
Z2dlc3Rpb24gaXMgdGhlIGlkZWFsCj4gd2F5IHRvIGRvIHRoaW5ncy4KPiAKPiBBbnlob3csIEkg
ZG9uJ3Qgc2VlIGEgcHJvYmxlbSB3aXRoIGFkZGluZyB0aGUgbm9kZSBpbiBkdHMKPiBiZWNhdXNl
IENPTkZJR19GU0xfU0FJIGlzIG5vdCBzZXQgaW4gdGhlIGRlZmF1bHQgY29uZmlnLgo+IAo+IFdl
IHRyeSB0byBzcGVlZHVwIHRoZSB1cHN0cmVhbWluZyBwcm9jZXNzIGdpdmluZyB0aGUgZmFjdAo+
IHRoYXQgU0FJIHBhdGNoZXMgd2lsbCBnbyB0aHJvdWdoIGF1ZGlvIG1haW50YWluZXIncyB0cmVl
IGFuZAo+IHRoZSBEVFMgcGF0Y2hlcyB3aWxsIG1vc3QgbGlrZWx5IGdvIHRocm91Z2ggU2hhd24n
cyB0cmVlLgoKSSd2ZSBhbHNvIGxvb2tlZCBhdCBhZGRpbmcgYXVkaW8gc3VwcG9ydCB0byBvbmUg
b2YgdGhlIGN1c3RvbSBib2FyZHMgSQpoYXZlIGhlcmUgYW5kIHdhcyBjYXVnaHQgYSBiaXQgb2Zm
IGd1YXJkIGJ5IHRoZSBmYWN0IHRoYXQgdGhlIFNBSQpkcml2ZXIgaXMgdG90YWxseSBicm9rZW4g
Zm9yIGkuTVg4TSBkdWUgdG8gbWlzc2luZyBwYXRjaGVzLCBhcyBJCmFzc3VtZWQgdGhlIG5lY2Vz
c2FyeSBiaXRzIGFyZSBpbiBwbGFjZSBiZWZvcmUgdGhlIERUIHBhdGNoZXMgYXJlCmxhbmRlZC4g
SXQncyBjZXJ0YWlubHkgbm90IGhvdyB0aGluZ3MgYXJlIHVzdWFsbHkgZG9uZS4KClRoaXMgYWxz
byBtZWFucyB0aGUgRFQgZGVzY3JpcHRpb24gb2YgdGhlIFNBSSBub2RlcyBpcyB3cm9uZywgYXMg
dGhleQphcmUgYWN0dWFsbHkgbm90IGNvbXBhdGlibGUgdG8gdGhlICJmc2wsaW14NnN4LXNhaSIu
IFRoZSByZWdpc3RlcgpsYXlvdXQgaXMgbW92ZWQgYXJvdW5kLCBzbyB0aGVyZSBpcyBubyBwb2lu
dCBpbiBjbGFpbWluZyBhbnkgYmFja3dhcmRzCmNvbXBhdCB3aXRoIHRoZSBvbGQgU0FJIHZlcnNp
b24uCgpEbyB5b3UgaGF2ZSBhbiBFVEEgd2hlbiB0aGUgbmVjZXNzYXJ5IHBhdGNoZXMgZm9yIHRo
ZSBpLk1YOE0gU0FJIHdpbGwKYmUgYXZhaWxhYmxlIGZvciB0ZXN0IGFuZCByZXZpZXc/CgpSZWdh
cmRzLApMdWNhcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
