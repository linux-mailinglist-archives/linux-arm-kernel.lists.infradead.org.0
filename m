Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C11F7449
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 09:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zxKVVoUvxkpVX3x7T04CDFwOqu+P6Xk09uL8mYhrOA=; b=XIvJ0/5uBKjDpC
	sOT+dZ1tALM1lYx5O6Ro53uFz7ZvGFWTu1Xe4sCRKth4MOMyfb4+Ja1TfoOiPTN0XmxelMi7ovZNI
	myEg7n0MbmtOTqBoZ5hFzGcH5Vo5d1hbIGdNY1pnjqm5n9QMuV4kW+2mKQ6rb7ICy3sLjUKDe8nlZ
	u5ayAWozhQBHTsSJymh58ad+JOUKlw8PnbOo3wOnZ4DIsZYLjHUhiidVh81oU+kI5xJh0QTZXLGpE
	9vMr0k4Se3FeOVTNGW+nAiKiGWv5KShykGaS2BeJIfSdzwlXxT9/2GVn+D+9utzryAUDUOgX0NB/F
	S+oGQb/hC53T1/XNjvxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdiZ-0007Lk-FN; Fri, 12 Jun 2020 07:03:11 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdiQ-0007KU-R4; Fri, 12 Jun 2020 07:03:05 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id EE08910000A;
 Fri, 12 Jun 2020 07:02:53 +0000 (UTC)
Date: Fri, 12 Jun 2020 09:02:52 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v2] mtd: parsers: bcm63xx: simplify CFE detection
Message-ID: <20200612090252.02581c21@xps13>
In-Reply-To: <7DC0E349-1319-47FE-8565-9B30C190EACB@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
 <20200608160649.3717152-1-noltari@gmail.com>
 <20200611095540.250184d2@xps13>
 <779D37C7-58CB-49AF-8739-C34295B86FC4@gmail.com>
 <715b0947-f4dd-0c04-5c52-5da06c04d665@gmail.com>
 <7DC0E349-1319-47FE-8565-9B30C190EACB@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_000303_146367_C375A94F 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, vigneshr@ti.com, richard@nod.at,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, tsbogend@alpha.franken.de,
 bcm-kernel-feedback-list@broadcom.com, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlIG9uIFRodSwgMTEgSnVuIDIwMjAKMTg6MTQ6MjAgKzAyMDA6Cgo+IEhpIEZsb3JpYW4s
Cj4gCj4gPiBFbCAxMSBqdW4gMjAyMCwgYSBsYXMgMTc6NDIsIEZsb3JpYW4gRmFpbmVsbGkgPGYu
ZmFpbmVsbGlAZ21haWwuY29tPiBlc2NyaWJpw7M6Cj4gPiAKPiA+IAo+ID4gCj4gPiBPbiA2LzEx
LzIwMjAgODoxNiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOiAgCj4gPj4gSGkg
TWlxdWVsLAo+ID4+ICAgCj4gPj4+IEVsIDExIGp1biAyMDIwLCBhIGxhcyA5OjU1LCBNaXF1ZWwg
UmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiBlc2NyaWJpw7M6Cj4gPj4+IAo+ID4+
PiBIaSDDgWx2YXJvLAo+ID4+PiAKPiA+Pj4gw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0
YXJpQGdtYWlsLmNvbT4gd3JvdGUgb24gTW9uLCAgOCBKdW4gMjAyMAo+ID4+PiAxODowNjo0OSAr
MDIwMDoKPiA+Pj4gICAKPiA+Pj4+IEluc3RlYWQgb2YgdHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJz
aW9uIHN0cmluZywgd2hpY2ggaXMgY3VzdG9taXplZCBieSBzb21lCj4gPj4+PiB2ZW5kb3JzLCBs
ZXQncyBqdXN0IGNoZWNrIHRoYXQgIkNGRTEiIHdhcyBwYXNzZWQgb24gYXJndW1lbnQgMy4KPiA+
Pj4+IAo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0
YXJpQGdtYWlsLmNvbT4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEdvcnNraSA8am9uYXMu
Z29yc2tpQGdtYWlsLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4gdjI6IHVzZSBDRkVfRVBUU0VBTCBk
ZWZpbml0aW9uIGFuZCBhdm9pZCB1c2luZyBhbiBhZGRpdGlvbmFsIGZ1bnRpb24uCj4gPj4+PiAK
PiA+Pj4+IGRyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQuYyB8IDI5ICsrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+PiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAyNSBkZWxldGlvbnMoLSkKPiA+Pj4+IAo+ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRk
L3BhcnNlcnMvYmNtNjN4eHBhcnQuYyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQu
Ywo+ID4+Pj4gaW5kZXggNzhmOTBjNmMxOGZkLi40OTNhNzViMmYyNjYgMTAwNjQ0Cj4gPj4+PiAt
LS0gYS9kcml2ZXJzL210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMKPiA+Pj4+ICsrKyBiL2RyaXZl
cnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQuYwo+ID4+Pj4gQEAgLTIyLDYgKzIyLDkgQEAKPiA+
Pj4+ICNpbmNsdWRlIDxsaW51eC9tdGQvcGFydGl0aW9ucy5oPgo+ID4+Pj4gI2luY2x1ZGUgPGxp
bnV4L29mLmg+Cj4gPj4+PiAKPiA+Pj4+ICsjaW5jbHVkZSA8YXNtL2Jvb3RpbmZvLmg+Cj4gPj4+
PiArI2luY2x1ZGUgPGFzbS9mdy9jZmUvY2ZlX2FwaS5oPiAgCj4gPj4+IAo+ID4+PiBBcmUgeW91
IHN1cmUgYm90aCBpbmNsdWRlcyBhcmUgbmVlZGVkPyAgCj4gPj4gCj4gPj4gYXNtL2Jvb3RpbmZv
LmggaXMgbmVlZGVkIGZvciBmd19hcmczIGFuZCBhc20vZncvY2ZlL2NmZV9hcGkuaCBpcyBuZWVk
ZWQgZm9yIENGRV9FUFRTRUFMLgo+ID4+ICAgCj4gPj4+IAo+ID4+PiBJIGRvbid0IHRoaW5rIGl0
IGlzIGEgZ29vZCBoYWJpdCB0byBpbmNsdWRlIGFzbS8gaGVhZGVycywgYXJlIHlvdSBzdXJlCj4g
Pj4+IHRoZXJlIGlzIG5vdCBhbm90aGVyIGhlYWRlciBkb2luZyBpdCBqdXN0IGZpbmU/ICAKPiA+
PiAKPiA+PiBCb3RoIGFyZSBuZWVkZWQgdW5sZXNzIHlvdSB3YW50IHRvIGFkZCBhbm90aGVyIGRl
ZmluaXRpb24gb2YgQ0ZFX0VQVFNFQUwgdmFsdWUuCj4gPj4gVGhlcmUgYXJlIGN1cnJlbnRseSB0
d28gQ0ZFIG1hZ2ljIGRlZmluaXRpb25zLCB0aGUgb25lIGluIGFzbS9mdy9jZmUvY2ZlX2FwaS5o
IGFuZCBhbm90aGVyIG9uZSBpbiBiY200N3h4cGFydC5jOgo+ID4+IGh0dHBzOi8vZ2l0aHViLmNv
bS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9hcmNoL21pcHMvaW5jbHVkZS9hc20vZncvY2Zl
L2NmZV9hcGkuaCNMMjgKPiA+PiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxv
Yi9tYXN0ZXIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY200N3h4cGFydC5jI0wzMyAgCj4gPiAKPiA+
IFRoZSBjYXZlYXQgd2l0aCB0aGF0IGFwcHJvYWNoIGlzIHRoYXQgdGhpcyByZWR1Y2VzIHRoZSBj
b21waWxhdGlvbgo+ID4gc3VyZmFjZSB0byBNSVBTIGFuZCBCTUlQU19HRU5FUklDIGFuZCBCQ002
M1hYIG9ubHksIHdoaWNoIGlzIGEgYml0Cj4gPiBzbWFsbC4gSWYgd2UgY291bGQgbW92ZSB0aGUg
Q0ZFIGRlZmluaXRpb25zIHRvIGEgc2hhcmVkIGhlYWRlciwgYW5kCj4gPiBjb25zb2xpZGF0ZSB0
aGUgdmFsdWUgdXNlZCBieSBiY200N3h4cGFydC5jIGFzIHdlbGwsIHRoYXQgd291bGQgYWxsb3cg
dXMKPiA+IHRvIGJ1aWxkIHRoZSBiY202M3h4cGFydC5jIGZpbGUgd2l0aCBDT01QSUxFX1RFU1Qg
b24gb3RoZXIKPiA+IGFyY2hpdGVjdHVyZXMuIFRoaXMgZG9lcyBub3QgcmVhbGx5IGhhdmUgZnVu
Y3Rpb25hbCB2YWx1ZSwgYnV0IGZvcgo+ID4gbWFpbnRhaW5lcnMgbGlrZSBNaXF1ZWwsIGl0IGFs
bG93cyB0aGVtIHRvIHF1aWNrbHkgdGVzdCB0aGVpciBlbnRpcmUKPiA+IGRyaXZlcnMvbXRkLyBk
aXJlY3RvcnkuICAKPiAKPiBJIGRvbuKAmXQgdGhpbmsgZndfYXJnMyBhdmFpbGFibGUgb24gbm9u
IG1pcHMgYXJjaHMsIGlzIGl0Pwo+IEnigJltIGhhcHB5IHRvIG1vdmUgaXQgdG8gYSBzaGFyZWQg
aGVhZGVyICh3aGljaCB3b3VsZCBiZSBhIGdvb2QgbG9jYXRpb24gZm9yIHRoaXM/KSwgYnV0IGlm
IEnigJltIHJpZ2h0IGl0IHdvdWxkIHN0aWxsIGJlIHJlc3RyaWN0ZWQgdG8gTUlQUy4KClJlc3Ry
aWN0aW5nIGEgZGVmaW5pdGlvbiB0byBNSVBTLCBldmVuIGlmIGl0IG1ha2VzIHNlbnNlIGZvciB5
b3UgaXMKdmVyeSBsaW1pdGluZyBmb3IgbWUuIEkgbmVlZCB0byBiZSBhYmxlIHRvIGJ1aWxkIGFz
IG11Y2ggZHJpdmVycyBhcyBJCmNhbiBmcm9tIG15IGxhcHRvcCBhbmQgdmVyaWZ5IHRoZXkgYXQg
bGVhc3QgY29tcGlsZSBjb3JyZWN0bHkuIElmIEkgbmVlZAphIE1JUFMgdG9vbGNoYWluLCBhbiBB
UkMgdG9vbGNoYWluLCBhIFBvd2VyUEMsIGFuIEFSTSwgYW4gQVJNNjQgYW5kCndoYXRldmVyIG90
aGVyIGZ1bmt5IHRvb2xjaGFpbiB0byBkbyBqdXN0IHRoYXQgaW4gWCBzdGVwczogaXQncyB2ZXJ5
CnBhaW5mdWwuIFdlIGhhdmUgYmVlbiBhZGRpbmcgQ09NUElMRV9URVNUIGRlcGVuZGVuY2llcyBv
biBhcyBtdWNoCmRyaXZlcnMgYXMgd2UgY291bGQgYW5kIHdlIHdhbnQgdG8gY29udGludWUgbW92
aW5nIGZvcndhcmQuIFVzaW5nIHN1Y2gKaW5jbHVkZSB3b3VsZCBuZWVkIHRvIGRyb3AgdGhlIENP
TVBJTEVfVEVTVCBjb25kaXRpb24gZnJvbSBLY29uZmlnIGFuZAp0aGlzIGlzIG5vdCBzb21ldGhp
bmcgSSBhbSB3aWxsaW5nIHRvIGRvLgoKVGhhbmtzIGZvciB5b3VyIHVuZGVyc3RhbmRpbmcgOikK
TWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
