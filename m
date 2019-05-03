Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F2313052
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz9QPhM/eMzuopxlr9Kf+CcltphCjsOAUfTMp2LJfRA=; b=eCcFVWP6IcZdlK
	z3TPm12FjrRWJSpq35DQ9Dy40Gl1D9M+n9h/Y7JscO30msoP+L7S8Sn+zK2ICdLrMQ9+FvUf9d0VL
	apTtE4+V1sv0yyi6pjrc/VQc3eTvXX3mw8c6BH08QVTHaxM96F+FNBjB9rljL/infIfAC2mkzjVoy
	9ReIUHgO0p9FtmY/xNrUj/hH5jEpQXkIsqitofOcZkSTtwtGiZZJ39DaCbVDoaBfMJQuFAFvEk5WI
	yAwHtRAN1Xtw7DsSWLQDpy4HIMyR+T7Id0ptFmBk06qytA5ZV5BiuieeblwNOJqKet2M636IPIkBd
	QDRVsaadSsWalXDa5q7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZH4-0004RW-0K; Fri, 03 May 2019 14:34:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZGy-0004R6-Mp; Fri, 03 May 2019 14:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zkm3QZZG6XwDmJfaWQJCoO1QtMmf+FU1hCkrwKt79TM=; b=E4evq2C+JuS5EfhWJCOW9hDkSj
 wciqJgZXV/NKhxcweT7PB92kHHirN0UWx5cHvbh2t8U3gJJLf2vvA1anuQPbsMnjHsr9KguDjUrTK
 5UbNsgpxFRFYUO9qbzB0Ro2ab0hp1iTmVMzO/vlxSErm9iUF7aESGZgtegQVZLvUY79aIIZGtycYZ
 rFrB1wC17F7QTDG+kIym8A0BW3VQe8fDnm17uuXv9PZW6qcmp8K/rRJVa7Ar45noVPoJV5uL5LEov
 l7zCLrn4we56mGbVHNFjGP07Og7VxbABaZi4HACdrcGIKBKGF5kDgiI9rickmA0GemsINuYXaB7u6
 D2SzrOqg==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZGv-00081F-9w; Fri, 03 May 2019 14:34:46 +0000
Received: from xps13 (91.172.185.81.rev.sfr.net [81.185.172.91])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A04F8100015;
 Fri,  3 May 2019 14:34:03 +0000 (UTC)
Date: Fri, 3 May 2019 16:34:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 10/36] mtd: nand: Introduce the ECC engine abstraction
Message-ID: <20190503163400.16c7c666@xps13>
In-Reply-To: <20190331141025.3a996561@collabora.com>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-11-miquel.raynal@bootlin.com>
 <20190331141025.3a996561@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_103445_523071_B1239E21 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDMxIE1hcgoyMDE5IDE0OjEwOjI1ICswMjAwOgoKPiBPbiBNb24sICA0
IE1hciAyMDE5IDIzOjI4OjE1ICswMTAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBDcmVhdGUgYSBnZW5lcmljIEVDQyBlbmdpbmUgb2Jq
ZWN0Lgo+ID4gCj4gPiBMYXRlciB0aGUgZWNjL2VuZ2luZS5jIGZpbGUgd2lsbCByZWNlaXZlIG1v
cmUgZ2VuZXJpYyBjb2RlIGNvbWluZyBmcm9tCj4gPiB0aGUgcmF3IE5BTkQgc3BlY2lmaWMgcGFy
dC4gVGhpcyBpcyBhIGJhc2UgdG8gaW5zdGFudGlhdGUgRUNDIGVuZ2luZQo+ID4gb2JqZWN0cy4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvS2NvbmZpZyAgICAgICAgICAg
ICAgICAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgICB8ICAgMSArCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9lY2MvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgfCAgIDYgKwo+ID4gIGRyaXZlcnMvbXRkL25hbmQvZWNjL01ha2VmaWxlICAg
ICAgICAgICAgICAgIHwgICAzICsKPiA+ICBkcml2ZXJzL210ZC9uYW5kL2VjYy9lbmdpbmUuYyAg
ICAgICAgICAgICAgICB8IDEzOCArKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9tdGQv
bmFuZC9yYXcvYXRtZWwvbmFuZC1jb250cm9sbGVyLmMgfCAgIDkgKy0KPiA+ICBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMgICB8ICAxMiArLQo+ID4gIGRyaXZlcnMv
bXRkL25hbmQvcmF3L21hcnZlbGxfbmFuZC5jICAgICAgICAgIHwgICA3ICstCj4gPiAgZHJpdmVy
cy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYyAgICAgICAgICAgICAgfCAgIDQgKy0KPiA+ICBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYyAgICAgICAgICAgICB8ICAxNyArLS0KPiA+ICBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2VzbXQuYyAgICAgICAgICAgICB8ICAxMSArLQo+ID4g
IGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfaHluaXguYyAgICAgICAgICAgIHwgIDQxICsrKy0t
LQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfamVkZWMuYyAgICAgICAgICAgIHwgICA0
ICstCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9taWNyb24uYyAgICAgICAgICAgfCAg
MTQgKy0KPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX29uZmkuYyAgICAgICAgICAgICB8
ICAgOCArLQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfc2Ftc3VuZy5jICAgICAgICAg
IHwgIDE5ICstLQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfdG9zaGliYS5jICAgICAg
ICAgIHwgIDExICstCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvc3VueGlfbmFuZC5jICAgICAg
ICAgICAgfCAgIDUgKy0KPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy90ZWdyYV9uYW5kLmMgICAg
ICAgICAgICB8ICAgOSArLQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYyAgICAgICAg
ICAgICAgICAgIHwgICA0ICstCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvbWFjcm9uaXguYyAg
ICAgICAgICAgICAgfCAgIDYgKy0KPiA+ICBkcml2ZXJzL210ZC9uYW5kL3NwaS90b3NoaWJhLmMg
ICAgICAgICAgICAgICB8ICAgNiArLSAgCj4gCj4gQ2FuIHdlIHBsZWFzZSBzcGxpdCB0aGF0IGlu
IDMgcGF0Y2hlczoKPiAKPiAxLyBpbnRyb2R1Y2UgdGhlIEVDQyBmcmFtZXdvcmsKPiAyLyBjb252
ZXJ0IHNwaSBuYW5kCj4gMy8gY29udmVydCByYXcgbmFuZAoKU3BsaXQgaW4gMiBwYXRjaGVzOgox
LyBJbnRyb2R1Y2UgdGhlIEVDQyBmcmFtZXdvcmsKMi8gQ2hhbmdlIHRoZSBlY2NyZXEgcGFyYW1l
dGVyIG9mIHRoZSBuYW5kX2RldmljZSBzdHJ1Y3R1cmUgd2hpY2gKaW1wYWN0cyBib3RoIHJhdyBh
bmQgU1BJIE5BTkQgZnJhbWV3b3Jrcy4KCj4gCj4gPiAgaW5jbHVkZS9saW51eC9tdGQvbmFuZC5o
ICAgICAgICAgICAgICAgICAgICAgfCAgODIgKysrKysrKysrKy0KPiA+ICBpbmNsdWRlL2xpbnV4
L210ZC9zcGluYW5kLmggICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ID4gIDI0IGZpbGVzIGNo
YW5nZWQsIDMyNyBpbnNlcnRpb25zKCspLCA5MyBkZWxldGlvbnMoLSkKPiA+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tdGQvbmFuZC9lY2MvS2NvbmZpZwo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL210ZC9uYW5kL2VjYy9NYWtlZmlsZQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL210ZC9uYW5kL2VjYy9lbmdpbmUuYwo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvbmFuZC9LY29uZmlnIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiBpbmRl
eCBkMmVmOGI4OTU2OGUuLjc1ZDBiZDE4YjgxOCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbXRk
L25hbmQvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiBAQCAt
Niw1ICs2LDYgQEAgY29uZmlnIE1URF9OQU5EX0NPUkUKPiA+ICBzb3VyY2UgImRyaXZlcnMvbXRk
L25hbmQvb25lbmFuZC9LY29uZmlnIgo+ID4gIHNvdXJjZSAiZHJpdmVycy9tdGQvbmFuZC9yYXcv
S2NvbmZpZyIKPiA+ICBzb3VyY2UgImRyaXZlcnMvbXRkL25hbmQvc3BpL0tjb25maWciCj4gPiAr
c291cmNlICJkcml2ZXJzL210ZC9uYW5kL2VjYy9LY29uZmlnIgo+ID4gIAo+ID4gIGVuZG1lbnUK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlIGIvZHJpdmVycy9tdGQv
bmFuZC9NYWtlZmlsZQo+ID4gaW5kZXggN2VjZDgwYzBhNjZlLi45NzcyZTc4MTUzNGQgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlCj4gPiArKysgYi9kcml2ZXJzL210
ZC9uYW5kL01ha2VmaWxlCj4gPiBAQCAtNiwzICs2LDQgQEAgb2JqLSQoQ09ORklHX01URF9OQU5E
X0NPUkUpICs9IG5hbmRjb3JlLm8KPiA+ICBvYmoteQkrPSBvbmVuYW5kLwo+ID4gIG9iai15CSs9
IHJhdy8KPiA+ICBvYmoteQkrPSBzcGkvCj4gPiArb2JqLXkJKz0gZWNjLwo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbXRkL25hbmQvZWNjL0tjb25maWcgYi9kcml2ZXJzL210ZC9uYW5kL2VjYy9L
Y29uZmlnCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4w
MTQzOWY2NmVjYmYKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQv
ZWNjL0tjb25maWcKPiA+IEBAIC0wLDAgKzEsNiBAQAo+ID4gK21lbnUgIkVDQyBlbmdpbmUgc3Vw
cG9ydCIKPiA+ICsKPiA+ICtjb25maWcgTVREX05BTkRfRUNDCj4gPiArCXRyaXN0YXRlCj4gPiAr
ICAKPiAKPiBUaGVyZSdzIGFscmVhZHkgYW4gTVREX05BTkRfRUNDIHN5bWJvbCBkZWZpbmVkIGlu
Cj4gZHJpdmVycy9tdGQvbmFuZC9yYXcvS2NvbmZpZywKCkRpZG4ndCBmaW5kIGFueT8KCj4gcGx1
cyBJIGRvbid0IHRoaW5rIHdlIHdhbnQgZWNjL2VuZ2luZS5jCj4gdG8gYmUgY29tcGlsZWQgYXMg
YSBtb2R1bGUsIGJ1dCBpbnN0ZWFkIGJlIGVtYmVkZGVkIGluIG5hbmQtY29yZS5rby4KCkhvdyB3
b3VsZCB5b3UgZG8gdGhhdD8gSSBkb24ndCBmaW5kIHRoZSByaWdodCB3YXkgdG8gZW1iZWQKbmFu
ZF9lY2NfZW5naW5lLm8gZGlyZWN0bHkgaW4gbmFuZGNvcmUuby4gVGhlIG9ubHkgc29sdXRpb24g
SSBmb3VuZCB3YXMKdG8gYWRkIG5hbmRjb3JlLSQoPGNvbmQ+KSArPSBlY2MvdGhpbmcubyBkaXJl
Y3RseSBpbgpkcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlIGJ1dCBJIGRvbid0IHRoaW5rIGl0IGlz
IGFjY2VwdGFibGU/Cgo+IE5vdCB0byBtZW50aW9uIHRoYXQgdGhlIG5hbWUsIGVuZ2luZS5rbywg
aXMgcHJvYmFibHkgdG9vIGdlbmVyaWMuCgpSZW5hbWVkIGl0IG5hbmRfZWNjX2VuZ2luZS5rbyBm
b3Igbm93LgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
