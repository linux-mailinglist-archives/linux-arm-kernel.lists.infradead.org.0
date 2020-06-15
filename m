Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C71F924D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO1r2ZjL0qD4X5oSWSS2ohpfQFXvkFdazyEXwvjdcrk=; b=DnYif6ltRXBYjT
	WKPiVX9WVLOfxaDbgkGbRxaYecrXb4xMr9uIUVp00SImlHpR3Oy96+yGDV+patGmuZAkyjO1yprcH
	0TAqBlUxBqKvX/Un1nivCcxB2RZ/F06FMd1OqU9+BeRIPQCH/TS7epfjBDdw4TID9Mx65FS/SCRZN
	AJozpr0kmLfYVQIhHWb/GswbuZuBQg5ltQ6VM8WUP/+cCHdo7E7DYF+0dZjhzScCOb0bgptVsbNIA
	BjC/30E0OclJOm0SCeuJ2SkvfBDNfwWzZq0d+cnq8QYWY0UHwoPY1aRnM9I5FYRQ0y+oR3eTgv178
	AVkk4mIhAG/UP6nRngmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkktL-00078E-Jm; Mon, 15 Jun 2020 08:54:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkt8-00075i-0f; Mon, 15 Jun 2020 08:54:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id DAB662000B;
 Mon, 15 Jun 2020 08:54:35 +0000 (UTC)
Date: Mon, 15 Jun 2020 10:54:33 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3] mtd: parsers: bcm63xx: simplify CFE detection
Message-ID: <20200615105433.56fb5310@xps13>
In-Reply-To: <20200612073549.1658336-1-noltari@gmail.com>
References: <20200608160649.3717152-1-noltari@gmail.com>
 <20200612073549.1658336-1-noltari@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_015442_202897_D18B1548 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
IHdyb3RlIG9uIEZyaSwgMTIgSnVuIDIwMjAKMDk6MzU6NDkgKzAyMDA6Cgo+IEluc3RlYWQgb2Yg
dHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJzaW9uIHN0cmluZywgd2hpY2ggaXMgY3VzdG9taXplZCBi
eSBzb21lCj4gdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3YXMgcGFzc2Vk
IG9uIGFyZ3VtZW50IDMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJv
amFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBHb3Jza2kgPGpv
bmFzLmdvcnNraUBnbWFpbC5jb20+Cj4gLS0tCj4gIHYzOiBrZWVwIENPTVBJTEVfVEVTVCBjb21w
YXRpYmlsaXR5IGJ5IGFkZGluZyBhIG5ldyBmdW5jdGlvbiB0aGF0IG9ubHkgY2hlY2tzCj4gICAg
ICBmd19hcmczIHdoZW4gQ09ORklHX01JUFMgaXMgZGVmaW5lZC4KPiAgdjI6IHVzZSBDRkVfRVBU
U0VBTCBkZWZpbml0aW9uIGFuZCBhdm9pZCB1c2luZyBhbiBhZGRpdGlvbmFsIGZ1bmN0aW9uLgo+
IAo+ICBkcml2ZXJzL210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMgfCAzNCArKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAy
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202
M3h4cGFydC5jIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4gaW5kZXggNzhm
OTBjNmMxOGZkLi5jNTE0YzA0Nzg5YWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvcGFyc2Vy
cy9iY202M3h4cGFydC5jCj4gKysrIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5j
Cj4gQEAgLTIyLDYgKzIyLDExIEBACj4gICNpbmNsdWRlIDxsaW51eC9tdGQvcGFydGl0aW9ucy5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgCj4gKyNpZmRlZiBDT05GSUdfTUlQUwo+ICsj
aW5jbHVkZSA8YXNtL2Jvb3RpbmZvLmg+Cj4gKyNpbmNsdWRlIDxhc20vZncvY2ZlL2NmZV9hcGku
aD4KPiArI2VuZGlmIC8qIENPTkZJR19NSVBTICovCj4gKwo+ICAjZGVmaW5lIEJDTTk2M1hYX0NG
RV9CTE9DS19TSVpFCQlTWl82NEsJLyogYWx3YXlzIGF0IGxlYXN0IDY0S2lCICovCj4gIAo+ICAj
ZGVmaW5lIEJDTTk2M1hYX0NGRV9NQUdJQ19PRkZTRVQJMHg0ZTAKPiBAQCAtMzIsMjggKzM3LDEz
IEBACj4gICNkZWZpbmUgU1RSX05VTExfVEVSTUlOQVRFKHgpIFwKPiAgCWRvIHsgY2hhciAqX3N0
ciA9ICh4KTsgX3N0cltzaXplb2YoeCkgLSAxXSA9IDA7IH0gd2hpbGUgKDApCj4gIAo+IC1zdGF0
aWMgaW50IGJjbTYzeHhfZGV0ZWN0X2NmZShzdHJ1Y3QgbXRkX2luZm8gKm1hc3RlcikKPiArc3Rh
dGljIGlubGluZSBpbnQgYmNtNjN4eF9kZXRlY3RfY2ZlKHZvaWQpCj4gIHsKPiAtCWNoYXIgYnVm
WzldOwo+IC0JaW50IHJldDsKPiAtCXNpemVfdCByZXRsZW47Cj4gLQo+IC0JcmV0ID0gbXRkX3Jl
YWQobWFzdGVyLCBCQ005NjNYWF9DRkVfVkVSU0lPTl9PRkZTRVQsIDUsICZyZXRsZW4sCj4gLQkJ
ICAgICAgICh2b2lkICopYnVmKTsKPiAtCWJ1ZltyZXRsZW5dID0gMDsKPiAtCj4gLQlpZiAocmV0
KQo+IC0JCXJldHVybiByZXQ7Cj4gLQo+IC0JaWYgKHN0cm5jbXAoImNmZS12IiwgYnVmLCA1KSA9
PSAwKQo+IC0JCXJldHVybiAwOwo+IC0KPiAtCS8qIHZlcnkgb2xkIENGRSdzIGRvIG5vdCBoYXZl
IHRoZSBjZmUtdiBzdHJpbmcsIHNvIGNoZWNrIGZvciBtYWdpYyAqLwo+IC0JcmV0ID0gbXRkX3Jl
YWQobWFzdGVyLCBCQ005NjNYWF9DRkVfTUFHSUNfT0ZGU0VULCA4LCAmcmV0bGVuLAo+IC0JCSAg
ICAgICAodm9pZCAqKWJ1Zik7Cj4gLQlidWZbcmV0bGVuXSA9IDA7Cj4gLQo+IC0JcmV0dXJuIHN0
cm5jbXAoIkNGRTFDRkUxIiwgYnVmLCA4KTsKPiArI2lmZGVmIENPTkZJR19NSVBTCj4gKwlyZXR1
cm4gKGZ3X2FyZzMgPT0gQ0ZFX0VQVFNFQUwpOwo+ICsjZWxzZQo+ICsJcmV0dXJuIDA7Cj4gKyNl
bmRpZiAvKiBDT05GSUdfTUlQUyAqLwoKV2hhdCBhYm91dDoKCglyZXQgPSAwOwoKI2lmZGVmIENP
TkZJR19NSVBTCglyZXQgPSAoZndfYXJnMyA9PSBDRkVfRVBUU0VBTCkKI2VuZGlmCgoJcmV0dXJu
IHJldDsKClRoaXMgaXMgZm9yIHNob3J0ZW5pbmcgdGhlIGNvbmRpdGlvbmFsIHBhcnQuCgo+ICB9
Cj4gIAo+ICBzdGF0aWMgaW50IGJjbTYzeHhfcmVhZF9udnJhbShzdHJ1Y3QgbXRkX2luZm8gKm1h
c3RlciwKPiBAQCAtMTM4LDcgKzEyOCw3IEBAIHN0YXRpYyBpbnQgYmNtNjN4eF9wYXJzZV9jZmVf
cGFydGl0aW9ucyhzdHJ1Y3QgbXRkX2luZm8gKm1hc3RlciwKPiAgCXN0cnVjdCBiY205NjN4eF9u
dnJhbSAqbnZyYW0gPSBOVUxMOwo+ICAJaW50IHJldDsKPiAgCj4gLQlpZiAoYmNtNjN4eF9kZXRl
Y3RfY2ZlKG1hc3RlcikpCj4gKwlpZiAoIWJjbTYzeHhfZGV0ZWN0X2NmZSgpKQo+ICAJCXJldHVy
biAtRUlOVkFMOwo+ICAKPiAgCW52cmFtID0gdnphbGxvYyhzaXplb2YoKm52cmFtKSk7CgpUaGFu
a3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
