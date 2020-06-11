Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792271F630D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIc8fNzjx9XRjiYwhg+T38059BZTkkT1sE5fzIHahs0=; b=nxloJZISKBmZh6
	tu1vzmxp//sdvDjY2z3ZC+kBh1/HQtI1IOeBkTb8OdDAzqzroaYq6pNuP06CA2mrGbYzeYjToRDtQ
	Y/8fht4oRSzf2fI5uEDFKTUq690Gk68gf3mB+nECkWpNCRAiqSZssGMl4ZPLaKHbGvbfMe102TzHb
	594fXSe+IaiZdfIgwXK5mgii6gDHrnWQ4QVBzD5BtovggihBmkyxHmtw69548bn0jUo0bzOmLMoZf
	1pUGyjQSg+VMZqbsOMhWVClMWJ3iKNs6KoqhEvgS06L2Cs9rNCa7//kTlKbWxEXGJA4hvC9tPNIAX
	ZO51Po0v5lgQr+zAAX9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjI43-0006l1-VA; Thu, 11 Jun 2020 07:55:55 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjI3u-0006jy-Cw; Thu, 11 Jun 2020 07:55:47 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2A8FEFF808;
 Thu, 11 Jun 2020 07:55:41 +0000 (UTC)
Date: Thu, 11 Jun 2020 09:55:40 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v2] mtd: parsers: bcm63xx: simplify CFE detection
Message-ID: <20200611095540.250184d2@xps13>
In-Reply-To: <20200608160649.3717152-1-noltari@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
 <20200608160649.3717152-1-noltari@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_005546_575698_491A1497 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: f.fainelli@gmail.com, vigneshr@ti.com, richard@nod.at,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, tsbogend@alpha.franken.de,
 bcm-kernel-feedback-list@broadcom.com, jonas.gorski@gmail.com,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlIG9uIE1vbiwgIDggSnVuIDIwMjAKMTg6MDY6NDkgKzAyMDA6Cgo+IEluc3RlYWQgb2Yg
dHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJzaW9uIHN0cmluZywgd2hpY2ggaXMgY3VzdG9taXplZCBi
eSBzb21lCj4gdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3YXMgcGFzc2Vk
IG9uIGFyZ3VtZW50IDMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJv
amFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBHb3Jza2kgPGpv
bmFzLmdvcnNraUBnbWFpbC5jb20+Cj4gLS0tCj4gIHYyOiB1c2UgQ0ZFX0VQVFNFQUwgZGVmaW5p
dGlvbiBhbmQgYXZvaWQgdXNpbmcgYW4gYWRkaXRpb25hbCBmdW50aW9uLgo+IAo+ICBkcml2ZXJz
L210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMgfCAyOSArKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jIGIvZHJp
dmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4gaW5kZXggNzhmOTBjNmMxOGZkLi40OTNh
NzViMmYyNjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5j
Cj4gKysrIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4gQEAgLTIyLDYgKzIy
LDkgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L210ZC9wYXJ0aXRpb25zLmg+Cj4gICNpbmNsdWRlIDxs
aW51eC9vZi5oPgo+ICAKPiArI2luY2x1ZGUgPGFzbS9ib290aW5mby5oPgo+ICsjaW5jbHVkZSA8
YXNtL2Z3L2NmZS9jZmVfYXBpLmg+CgpBcmUgeW91IHN1cmUgYm90aCBpbmNsdWRlcyBhcmUgbmVl
ZGVkPwoKSSBkb24ndCB0aGluayBpdCBpcyBhIGdvb2QgaGFiaXQgdG8gaW5jbHVkZSBhc20vIGhl
YWRlcnMsIGFyZSB5b3Ugc3VyZQp0aGVyZSBpcyBub3QgYW5vdGhlciBoZWFkZXIgZG9pbmcgaXQg
anVzdCBmaW5lPwoKPiArCj4gICNkZWZpbmUgQkNNOTYzWFhfQ0ZFX0JMT0NLX1NJWkUJCVNaXzY0
SwkvKiBhbHdheXMgYXQgbGVhc3QgNjRLaUIgKi8KPiAgCj4gICNkZWZpbmUgQkNNOTYzWFhfQ0ZF
X01BR0lDX09GRlNFVAkweDRlMAo+IEBAIC0zMiwzMCArMzUsNiBAQAo+ICAjZGVmaW5lIFNUUl9O
VUxMX1RFUk1JTkFURSh4KSBcCj4gIAlkbyB7IGNoYXIgKl9zdHIgPSAoeCk7IF9zdHJbc2l6ZW9m
KHgpIC0gMV0gPSAwOyB9IHdoaWxlICgwKQo+ICAKPiAtc3RhdGljIGludCBiY202M3h4X2RldGVj
dF9jZmUoc3RydWN0IG10ZF9pbmZvICptYXN0ZXIpCj4gLXsKPiAtCWNoYXIgYnVmWzldOwo+IC0J
aW50IHJldDsKPiAtCXNpemVfdCByZXRsZW47Cj4gLQo+IC0JcmV0ID0gbXRkX3JlYWQobWFzdGVy
LCBCQ005NjNYWF9DRkVfVkVSU0lPTl9PRkZTRVQsIDUsICZyZXRsZW4sCj4gLQkJICAgICAgICh2
b2lkICopYnVmKTsKPiAtCWJ1ZltyZXRsZW5dID0gMDsKPiAtCj4gLQlpZiAocmV0KQo+IC0JCXJl
dHVybiByZXQ7Cj4gLQo+IC0JaWYgKHN0cm5jbXAoImNmZS12IiwgYnVmLCA1KSA9PSAwKQo+IC0J
CXJldHVybiAwOwo+IC0KPiAtCS8qIHZlcnkgb2xkIENGRSdzIGRvIG5vdCBoYXZlIHRoZSBjZmUt
diBzdHJpbmcsIHNvIGNoZWNrIGZvciBtYWdpYyAqLwo+IC0JcmV0ID0gbXRkX3JlYWQobWFzdGVy
LCBCQ005NjNYWF9DRkVfTUFHSUNfT0ZGU0VULCA4LCAmcmV0bGVuLAo+IC0JCSAgICAgICAodm9p
ZCAqKWJ1Zik7Cj4gLQlidWZbcmV0bGVuXSA9IDA7Cj4gLQo+IC0JcmV0dXJuIHN0cm5jbXAoIkNG
RTFDRkUxIiwgYnVmLCA4KTsKPiAtfQo+IC0KPiAgc3RhdGljIGludCBiY202M3h4X3JlYWRfbnZy
YW0oc3RydWN0IG10ZF9pbmZvICptYXN0ZXIsCj4gIAlzdHJ1Y3QgYmNtOTYzeHhfbnZyYW0gKm52
cmFtKQo+ICB7Cj4gQEAgLTEzOCw3ICsxMTcsNyBAQCBzdGF0aWMgaW50IGJjbTYzeHhfcGFyc2Vf
Y2ZlX3BhcnRpdGlvbnMoc3RydWN0IG10ZF9pbmZvICptYXN0ZXIsCj4gIAlzdHJ1Y3QgYmNtOTYz
eHhfbnZyYW0gKm52cmFtID0gTlVMTDsKPiAgCWludCByZXQ7Cj4gIAo+IC0JaWYgKGJjbTYzeHhf
ZGV0ZWN0X2NmZShtYXN0ZXIpKQo+ICsJaWYgKGZ3X2FyZzMgIT0gQ0ZFX0VQVFNFQUwpCj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJbnZyYW0gPSB2emFsbG9jKHNpemVvZigqbnZyYW0pKTsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
