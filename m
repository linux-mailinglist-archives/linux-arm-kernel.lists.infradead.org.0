Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A59114556
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LPUAw/jTIvgP4dQZ7EFtKMe3xX9ZucX130L32H+TQw=; b=VlcB3JDb7uVBU+
	7ursu/iAUjKgsMAb7ncy+Sk0B//5J7SLX0WQzid/Mc+tUmHQCk3zNGbOiXEV8h+Hz2+mdX69PNrl8
	B5dChqDQi50W9pra6XZMgZaCuswQiQKYMOWe3bobmKR7lyP5vCeKg6hhA4D68MyEI3xw3+za0i7ub
	n1Xntju/mPlNaIBWCJBhZK+DRfwZhtm0ziSGHiwJbXg5+KH4GFGSHaOohkEtKi9RiCJAZ98IFF0L/
	nxcSO/wnnwneSzVGXLttfNkK8E0xql2QWAim4aVVaLvR9QWW7vTzhrWp3m6lJ0F7Q2FtG5/Lyrm1k
	cTjutwpRaeGkDXg8F++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYC5-0003Ce-At; Mon, 06 May 2019 07:37:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYBx-0003C3-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:37:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hNYBt-0003eJ-FE; Mon, 06 May 2019 09:37:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hNYBr-00071K-1w; Mon, 06 May 2019 09:37:35 +0200
Date: Mon, 6 May 2019 09:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Message-ID: <20190506073735.ctzybytamu44pbvv@pengutronix.de>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
 <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:13:06 up 48 days, 18:23, 78 users,  load average: 1.12, 1.24, 1.24
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_003741_784190_8336F61D 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBNYXkgMDQsIDIwMTkgYXQgMDk6Mjg6NDhBTSArMDAwMCwgQ2h1YW5odWEgSGFuIHdy
b3RlOgo+IAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFNhc2No
YSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiA+IFNlbnQ6IDIwMTnlubQ05pyIMzDm
l6UgMjA6NTEKPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPgo+ID4g
Q2M6IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgcm9i
aCtkdEBrZXJuZWwub3JnOwo+ID4gbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7Cj4gPiBsaW51eC1pMmNAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZzsgZmVzdGV2YW1AZ21haWwuY29tOyBkbC1saW51eC1pbXgKPiA+IDxsaW51eC1pbXhAbnhwLmNv
bT47IHdzYStyZW5lc2FzQHNhbmctZW5naW5lZXJpbmcuY29tOwo+ID4gdS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlOyBlaGFAZGVpZi5jb207IGxpbnV4QHJlbXBlbC1wcml2YXQuZGU7Cj4g
PiBsLnN0YWNoQHBlbmd1dHJvbml4LmRlOyBwZWRhQGF4ZW50aWEuc2U7IFN1bWl0IEJhdHJhCj4g
PiA8c3VtaXQuYmF0cmFAbnhwLmNvbT4KPiA+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0ggMS8y
XSBpMmM6IGlteDogSTJDIERyaXZlciBkb2Vzbid0IGNvbnNpZGVyCj4gPiBJMkNfSVBHQ0xLX1NF
TCBSQ1cgYml0IHdoZW4gdXNpbmcgbHMxMDQ2YSBTb0MKPiA+IAo+ID4gQ2F1dGlvbjogRVhUIEVt
YWlsCj4gPiAKPiA+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDEyOjQ3OjE4UE0gKzA4MDAsIENo
dWFuaHVhIEhhbiB3cm90ZToKPiA+ID4gVGhlIGN1cnJlbnQga2VybmVsIGRyaXZlciBkb2VzIG5v
dCBjb25zaWRlciBJMkNfSVBHQ0xLX1NFTCAoNDI0IGJpdCBvZgo+ID4gPiBSQ1cpIGluIGRlY2lk
aW5nICBpMmNfY2xrX3JhdGUgaW4gZnVuY3Rpb24gaTJjX2lteF9zZXRfY2xrKCkgeyAwCj4gPiA+
IFBsYXRmb3JtIGNsb2NrLzQsIDEgUGxhdGZvcm0gY2xvY2svMn0uCj4gPiA+Cj4gPiA+IFdoZW4g
dXNpbmcgbHMxMDQ2YSBTb0MsIHRoaXMgcG9wdWxhdGVzIGluY29ycmVjdCB2YWx1ZSBpbiBJQkZE
Cj4gPiA+IHJlZ2lzdGVyIGlmIEkyQ19JUEdDTEtfU0VMID0gMCwgd2hpY2ggZ2VuZXJhdGVzIGhh
bGYgb2YgdGhlIGRlc2lyZWQgQ2xvY2suCj4gPiA+Cj4gPiA+IFRoZXJlZm9yZSwgaWYgbHMxMDQ2
YSBTb0MgaXMgdXNlZCwgd2UgbmVlZCB0byBzZXQgdGhlIGkyYyBjbG9jawo+ID4gPiBhY2NvcmRp
bmcgdG8gdGhlIGNvcnJlc3BvbmRpbmcgUkNXLgo+ID4gCj4gPiBTbyB0aGUgY2xvY2sgZHJpdmVy
IHJlcG9ydHMgdGhlIHdyb25nIGNsb2NrLiBQbGVhc2UgZml4IHRoZSBjbG9jayBkcml2ZXIgdGhl
bi4KPiBObywgdGhpcyBpcyBhIHByb2JsZW0gd2l0aCB0aGUgaTJjIGRyaXZlci4gSXQgaXMgbm90
IGEgcHJvYmxlbSB3aXRoCj4gdGhlIGNsb2NrIGRyaXZlciwgc28gdGhlIGkyYyBkcml2ZXIgbmVl
ZHMgdG8gYmUgbW9kaWZpZWQuCgpTbyBob3cgZG9lcyB0aGlzIFJDVyBiaXQgZ2V0IGV2YWx1YXRl
ZD8gQWNjb3JkaW5nIHRvIHRoZSByZWZlcmVuY2UKbWFudWFsIG9ubHkgb25lIGNsb2NrIGdvZXMg
dG8gdGhlIGkyYyBtb2R1bGUgKGRlc2NyaWJlZCBhcyAxLzIgUGxhdGZvcm0KQ2xvY2spIGFuZCB0
aGUgaTJjIG1vZHVsZSBvbmx5IHRha2VzIG9uZSBjbG9jay4gU28gaXQgc2VlbXMgdGhlcmUgbXVz
dApiZSBhIC8yIGRpdmlkZXIgc29tZXdoZXJlLCBlaXRoZXIgaW4gZWFjaCBpMmMgbW9kdWxlIG9y
IHNvbWV3aGVyZQpvdXRzaWRlLiBDYW4geW91ciBJQyBndXlzIHRlbGwgeW91IHdoZXJlIGl0IGlz
PwoKT25lIHJlYXNvbiBJIHN1Z2dlc3RlZCB0aGUgY2xvY2sgZHJpdmVyIGlzIHRoYXQgdGhlIGNs
b2NrIGRyaXZlcgpjb250YWlucyBTb0Mgc3BlY2lmaWMgY29kZSBhbHJlYWR5LCBzbyBpdCBzaG91
bGQgYmUgZWFzaWVyIHRvIGludGVncmF0ZQp0aGVyZS4KClNhc2NoYQoKCi0tIApQZW5ndXRyb25p
eCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRw
Oi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hl
aW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBI
aWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1
NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
