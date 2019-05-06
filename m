Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39A9150A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaG/tYzPzSrYyYhJ7EuPqf6Jn6KoasysPVa6GCDw1XM=; b=qkswjo4A+81xt4
	W0yauVyqPID7woWQ8h7oUyIT+72Ucry/7Rk/M8csXJd4wWzhuaDzF3flLVHR65IgiR/FO3BWBXNwZ
	4wlZzI0HwvigK7dJLG8Fv3hgoffWxuyzWwd84Xgc7QVuYAYDRXwZG/yCT85zgMPZx9C5zZ6CpBygq
	L7qaEiCowtnPgRJw0AQAnsoqsub8QgmP9JzYR7W7cp1r1UvRiGn7ksQ0k2J9iGkGy9ETiVLn9d08/
	u6wdfWzZqf2TzEipVMyR5HRmMBeJhQWYetQ4G1bv3O9x0rGlTZkFKtI8FuLPJaybTCQgKJWohw1GT
	cywOZcK9vMze0AfgXHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfsY-0005rt-Es; Mon, 06 May 2019 15:50:10 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfsM-0005fF-Ih; Mon, 06 May 2019 15:50:00 +0000
X-Originating-IP: 90.88.149.145
Received: from xps13 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 3A9661C000A;
 Mon,  6 May 2019 15:49:48 +0000 (UTC)
Date: Mon, 6 May 2019 17:49:48 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 10/36] mtd: nand: Introduce the ECC engine abstraction
Message-ID: <20190506174948.1a7687ed@xps13>
In-Reply-To: <20190503175446.1338e7db@collabora.com>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-11-miquel.raynal@bootlin.com>
 <20190331141025.3a996561@collabora.com>
 <20190503163400.16c7c666@xps13>
 <20190503175446.1338e7db@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084958_918832_7788E719 
X-CRM114-Status: GOOD (  29.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
PiB3cm90ZSBvbiBGcmksIDMgTWF5CjIwMTkgMTc6NTQ6NDYgKzAyMDA6Cgo+IE9uIEZyaSwgMyBN
YXkgMjAxOSAxNjozNDowMCArMDIwMAo+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+IHdyb3RlOgo+IAo+ID4gSGkgQm9yaXMsCj4gPiAKPiA+IEJvcmlzIEJyZXppbGxv
biA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlIG9uIFN1biwgMzEgTWFyCj4g
PiAyMDE5IDE0OjEwOjI1ICswMjAwOgo+ID4gICAKPiA+ID4gT24gTW9uLCAgNCBNYXIgMjAxOSAy
MzoyODoxNSArMDEwMAo+ID4gPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4u
Y29tPiB3cm90ZToKPiA+ID4gICAgIAo+ID4gPiA+IENyZWF0ZSBhIGdlbmVyaWMgRUNDIGVuZ2lu
ZSBvYmplY3QuCj4gPiA+ID4gCj4gPiA+ID4gTGF0ZXIgdGhlIGVjYy9lbmdpbmUuYyBmaWxlIHdp
bGwgcmVjZWl2ZSBtb3JlIGdlbmVyaWMgY29kZSBjb21pbmcgZnJvbQo+ID4gPiA+IHRoZSByYXcg
TkFORCBzcGVjaWZpYyBwYXJ0LiBUaGlzIGlzIGEgYmFzZSB0byBpbnN0YW50aWF0ZSBFQ0MgZW5n
aW5lCj4gPiA+ID4gb2JqZWN0cy4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1
ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+
ICBkcml2ZXJzL210ZC9uYW5kL0tjb25maWcgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4g
PiA+ID4gIGRyaXZlcnMvbXRkL25hbmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICAx
ICsKPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9lY2MvS2NvbmZpZyAgICAgICAgICAgICAgICAg
fCAgIDYgKwo+ID4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL2VjYy9NYWtlZmlsZSAgICAgICAgICAg
ICAgICB8ICAgMyArCj4gPiA+ID4gIGRyaXZlcnMvbXRkL25hbmQvZWNjL2VuZ2luZS5jICAgICAg
ICAgICAgICAgIHwgMTM4ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgZHJpdmVycy9tdGQv
bmFuZC9yYXcvYXRtZWwvbmFuZC1jb250cm9sbGVyLmMgfCAgIDkgKy0KPiA+ID4gPiAgZHJpdmVy
cy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbmFuZC5jICAgfCAgMTIgKy0KPiA+ID4gPiAg
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbWFydmVsbF9uYW5kLmMgICAgICAgICAgfCAgIDcgKy0KPiA+
ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYyAgICAgICAgICAgICAgfCAgIDQg
Ky0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgICAgICAgICAgICAg
fCAgMTcgKy0tCj4gPiA+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfZXNtdC5jICAgICAg
ICAgICAgIHwgIDExICstCj4gPiA+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfaHluaXgu
YyAgICAgICAgICAgIHwgIDQxICsrKy0tLQo+ID4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9u
YW5kX2plZGVjLmMgICAgICAgICAgICB8ICAgNCArLQo+ID4gPiA+ICBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9uYW5kX21pY3Jvbi5jICAgICAgICAgICB8ICAxNCArLQo+ID4gPiA+ICBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9uYW5kX29uZmkuYyAgICAgICAgICAgICB8ICAgOCArLQo+ID4gPiA+ICBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX3NhbXN1bmcuYyAgICAgICAgICB8ICAxOSArLS0KPiA+ID4g
PiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF90b3NoaWJhLmMgICAgICAgICAgfCAgMTEgKy0K
PiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvc3VueGlfbmFuZC5jICAgICAgICAgICAgfCAg
IDUgKy0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvdGVncmFfbmFuZC5jICAgICAgICAg
ICAgfCAgIDkgKy0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvY29yZS5jICAgICAgICAg
ICAgICAgICAgfCAgIDQgKy0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvbWFjcm9uaXgu
YyAgICAgICAgICAgICAgfCAgIDYgKy0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvdG9z
aGliYS5jICAgICAgICAgICAgICAgfCAgIDYgKy0gICAgICAKPiA+ID4gCj4gPiA+IENhbiB3ZSBw
bGVhc2Ugc3BsaXQgdGhhdCBpbiAzIHBhdGNoZXM6Cj4gPiA+IAo+ID4gPiAxLyBpbnRyb2R1Y2Ug
dGhlIEVDQyBmcmFtZXdvcmsKPiA+ID4gMi8gY29udmVydCBzcGkgbmFuZAo+ID4gPiAzLyBjb252
ZXJ0IHJhdyBuYW5kICAgIAo+ID4gCj4gPiBTcGxpdCBpbiAyIHBhdGNoZXM6Cj4gPiAxLyBJbnRy
b2R1Y2UgdGhlIEVDQyBmcmFtZXdvcmsKPiA+IDIvIENoYW5nZSB0aGUgZWNjcmVxIHBhcmFtZXRl
ciBvZiB0aGUgbmFuZF9kZXZpY2Ugc3RydWN0dXJlIHdoaWNoCj4gPiBpbXBhY3RzIGJvdGggcmF3
IGFuZCBTUEkgTkFORCBmcmFtZXdvcmtzLgo+ID4gICAKPiA+ID4gICAgIAo+ID4gPiA+ICBpbmNs
dWRlL2xpbnV4L210ZC9uYW5kLmggICAgICAgICAgICAgICAgICAgICB8ICA4MiArKysrKysrKysr
LQo+ID4gPiA+ICBpbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmggICAgICAgICAgICAgICAgICB8
ICAgMiArLQo+ID4gPiA+ICAyNCBmaWxlcyBjaGFuZ2VkLCAzMjcgaW5zZXJ0aW9ucygrKSwgOTMg
ZGVsZXRpb25zKC0pCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210ZC9uYW5k
L2VjYy9LY29uZmlnCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210ZC9uYW5k
L2VjYy9NYWtlZmlsZQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tdGQvbmFu
ZC9lY2MvZW5naW5lLmMKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9LY29uZmlnIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiA+ID4gaW5kZXggZDJl
ZjhiODk1NjhlLi43NWQwYmQxOGI4MTggMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tdGQv
bmFuZC9LY29uZmlnCj4gPiA+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiA+
ID4gQEAgLTYsNSArNiw2IEBAIGNvbmZpZyBNVERfTkFORF9DT1JFCj4gPiA+ID4gIHNvdXJjZSAi
ZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL0tjb25maWciCj4gPiA+ID4gIHNvdXJjZSAiZHJpdmVy
cy9tdGQvbmFuZC9yYXcvS2NvbmZpZyIKPiA+ID4gPiAgc291cmNlICJkcml2ZXJzL210ZC9uYW5k
L3NwaS9LY29uZmlnIgo+ID4gPiA+ICtzb3VyY2UgImRyaXZlcnMvbXRkL25hbmQvZWNjL0tjb25m
aWciCj4gPiA+ID4gIAo+ID4gPiA+ICBlbmRtZW51Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbXRkL25hbmQvTWFrZWZpbGUgYi9kcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlCj4gPiA+ID4g
aW5kZXggN2VjZDgwYzBhNjZlLi45NzcyZTc4MTUzNGQgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJp
dmVycy9tdGQvbmFuZC9NYWtlZmlsZQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvTWFr
ZWZpbGUKPiA+ID4gPiBAQCAtNiwzICs2LDQgQEAgb2JqLSQoQ09ORklHX01URF9OQU5EX0NPUkUp
ICs9IG5hbmRjb3JlLm8KPiA+ID4gPiAgb2JqLXkJKz0gb25lbmFuZC8KPiA+ID4gPiAgb2JqLXkJ
Kz0gcmF3Lwo+ID4gPiA+ICBvYmoteQkrPSBzcGkvCj4gPiA+ID4gK29iai15CSs9IGVjYy8KPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9lY2MvS2NvbmZpZyBiL2RyaXZlcnMv
bXRkL25hbmQvZWNjL0tjb25maWcKPiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiA+
IGluZGV4IDAwMDAwMDAwMDAwMC4uMDE0MzlmNjZlY2JmCj4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvZWNjL0tjb25maWcKPiA+ID4gPiBAQCAtMCww
ICsxLDYgQEAKPiA+ID4gPiArbWVudSAiRUNDIGVuZ2luZSBzdXBwb3J0Igo+ID4gPiA+ICsKPiA+
ID4gPiArY29uZmlnIE1URF9OQU5EX0VDQwo+ID4gPiA+ICsJdHJpc3RhdGUKPiA+ID4gPiArICAg
ICAgCj4gPiA+IAo+ID4gPiBUaGVyZSdzIGFscmVhZHkgYW4gTVREX05BTkRfRUNDIHN5bWJvbCBk
ZWZpbmVkIGluCj4gPiA+IGRyaXZlcnMvbXRkL25hbmQvcmF3L0tjb25maWcsICAgIAo+ID4gCj4g
PiBEaWRuJ3QgZmluZCBhbnk/ICAKPiAKPiBUaGVyZSB3YXMgb25lIGluIGRyaXZlcnMvbXRkL25h
bmQvcmF3L0tjb25maWcgWzFdLCBidXQgbWF5YmUgaXQncyBnb25lCj4gbm93Lgo+IAo+ID4gICAK
PiA+ID4gcGx1cyBJIGRvbid0IHRoaW5rIHdlIHdhbnQgZWNjL2VuZ2luZS5jCj4gPiA+IHRvIGJl
IGNvbXBpbGVkIGFzIGEgbW9kdWxlLCBidXQgaW5zdGVhZCBiZSBlbWJlZGRlZCBpbiBuYW5kLWNv
cmUua28uICAgIAo+ID4gCj4gPiBIb3cgd291bGQgeW91IGRvIHRoYXQ/IEkgZG9uJ3QgZmluZCB0
aGUgcmlnaHQgd2F5IHRvIGVtYmVkCj4gPiBuYW5kX2VjY19lbmdpbmUubyBkaXJlY3RseSBpbiBu
YW5kY29yZS5vLiBUaGUgb25seSBzb2x1dGlvbiBJIGZvdW5kIHdhcwo+ID4gdG8gYWRkIG5hbmRj
b3JlLSQoPGNvbmQ+KSArPSBlY2MvdGhpbmcubyBkaXJlY3RseSBpbgo+ID4gZHJpdmVycy9tdGQv
bmFuZC9NYWtlZmlsZSBidXQgSSBkb24ndCB0aGluayBpdCBpcyBhY2NlcHRhYmxlPyAgCj4gCj4g
T3IganVzdCBtb3ZlIHRoZSBjb3JlIGxvZ2ljIGludG8gZHJpdmVycy9tdGQvbmFuZC9lY2MuYyBh
bmQgYWRkCj4gCj4gbmFuZGNvcmUtJCg8Y29uZD4pICs9IGVjYy5vCj4gCj4gdG8gdGhlIE1ha2Vm
aWxlLgo+IAo+IAo+ID4gICAKPiA+ID4gTm90IHRvIG1lbnRpb24gdGhhdCB0aGUgbmFtZSwgZW5n
aW5lLmtvLCBpcyBwcm9iYWJseSB0b28gZ2VuZXJpYy4gICAgCj4gPiAKPiA+IFJlbmFtZWQgaXQg
bmFuZF9lY2NfZW5naW5lLmtvIGZvciBub3cuICAKPiAKPiBTdGlsbCB0aGluayBpdCdzIGJldHRl
ciB0byBoYXZlIHRoZSBjb2RlIGVtYmVkZGVkIGluIG5hbmRjb3JlLmtvLgo+IAo+IFsxXWh0dHBz
Oi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEtcmM3L3NvdXJjZS9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9LY29uZmlnI0wxCgpXaGF0IGlzIHRoZXJlIGN1cnJlbnRseSB3YXMgbm90IHdoYXQg
SSB3YXMgbG9va2luZyBmb3IuCgpCdXQgbmV2ZXJtaW5kLCBJIG1vdmVkIGFsbCBjb2RlIHRvIHRo
ZSBuYW5kLyBkaXJlY3RvcnksIGRyb3BwaW5nIHRoZQplY2MvIHN1YmRpci4gTm93IEVDQyBjb2Rl
IGlzIGNhbGxlZCBlY2MtZW5naW5lLm8gYW5kIGlzIGVtYmVkZGVkIGluCm5hbmRjb3JlLmtvLgoK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
