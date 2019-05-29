Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C072DA18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufJ+/0nIRO2+ozdfRDleJaLJHfwpVMFRtBOvBvYFwyo=; b=LKX/EmVTHHfT5P
	pXzyp6kzrHBBJWIFldd9LE9rvtX3DIKij8SeXFieVssze1oom8X1Job2ZOjlfD9DCO1Mv9HseP0LY
	c0nse/ZM3krxGYC+6Bc6smSky+F1pNfMJbc5KpN/K7loH+WGFxmczbGQWAU7Ga/r4IdgsGp+wwJQX
	tvoRdAdI9nZMpeja3BfGKiqLDKF9/ld7A2uix5idyzLuJy9COzE4t3pcj4COpILHzDp+ZykI67Vhc
	KZbnwktf5r6M00HbVcjkDm2ggc9CW8Rpw7kp4GKW1SH6hNIfwn1XfTtusjy8NP8E/zVkOjrm32Gou
	ABEcb5vxO5CvaosNv2YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvYt-0000R9-St; Wed, 29 May 2019 10:11:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvYf-0000K1-7Z
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 10:11:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PKMQlwJOwI8GQxBvQwIRWCwyrtxFmfYF7/zG1q/qU2E=; b=WkqN34gCophuILNn8/lbp2/O+D
 KgrcsicQJVcTJ5PKwSM5vBWrvt4tyfqOIjKXnnhFCZRtN54B7qHcuJm/4vB32KmrPBo8tLZvjUbVT
 DQWJ9pdJ0on+mvdWpNc2qGafctwl73fcSSlhhJN96C8sukOP9bn2wWrFukK5FbkSNZovtYHI85SFf
 c5HhwDkgN87PYdf+k+be9VyNkjsYl8S20P5sP+o9rEQQ7Hr/0L/Q7MQjNEPCib+D4R0+6Ep44Amyl
 xroNDCDU2fPEEMLO/mjv8hs2Vsjom0KB89T/kBzX3l3p8gkHpmE09aWZmI0ZWxRZFEhfCpaK0omeM
 QW/byrkw==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvYD-0003Im-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:11:43 +0000
X-Originating-IP: 90.88.147.134
Received: from xps13 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 59808E0011;
 Wed, 29 May 2019 10:10:34 +0000 (UTC)
Date: Wed, 29 May 2019 12:10:33 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v4 08/10] ata: ahci: mvebu: Add support for A8k legacy
 DT bindings
Message-ID: <20190529121033.04748037@xps13>
In-Reply-To: <04cd3174-6857-4552-293d-5f25caa189a7@arm.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-9-miquel.raynal@bootlin.com>
 <04cd3174-6857-4552-293d-5f25caa189a7@arm.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_061142_237258_5E68AB59 
X-CRM114-Status: GOOD (  30.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Nadav Haklai <nadavh@marvell.com>, devicetree@vger.kernel.org,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-ide@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+IHdyb3RlIG9uIFR1
ZSwgMjEgTWF5IDIwMTkgMTY6NDY6MDEKKzAxMDA6Cgo+IE9uIDIxLzA1LzIwMTkgMTU6MzAsIE1p
cXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBUaGUgQ1AxMTAgU0FUQSB1bml0IGhhcyAyIHBvcnRzLCBh
bmQgYSBkZWRpY2F0ZWQgSUNVIGVudHJ5IHBlcgo+ID4gcG9ydC4gSW4gdGhlIHBhc3QsIHRoZSBB
SENJIFNBVEEgZHJpdmVyIG9ubHkgc3VwcG9ydGVkIG9uZSBpbnRlcnJ1cHQKPiA+IHBlciBTQVRB
IHVuaXQuIFRvIHNvbHZlIHRoaXMgY29uZmxpY3QsIHRoZSAyIFNBVEEgd2lyZWQgaW50ZXJydXB0
cyBpbgo+ID4gdGhlIFNvdXRoLUJyaWRnZSBnb3QgY29uZmlndXJlZCBhcyAxIEdJQyBpbnRlcnJ1
cHQgaW4gdGhlCj4gPiBOb3J0aC1CcmlkZ2UsIHJlZ2FyZGxlc3Mgb2YgdGhlIG51bWJlciBvZiBT
QVRBIHBvcnRzIGFjdHVhbGx5Cj4gPiBlbmFibGVkL2luIHVzZSwgYW5kIHRoZSBEVCBiaW5kaW5n
cyBvbmx5IHJlZmVyZW5jZWQgdGhlIGludGVycnVwdCBvZgo+ID4gb25lIHBvcnQuCj4gPiAKPiA+
IFNpbmNlIHRoZW4sIHRoaXMgbGltaXRhdGlvbiBoYXMgYmVlbiBhZGRyZXNzZWQgYW5kIHRoaXMg
cGF0Y2ggZW5zdXJlcwo+ID4gYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIG9sZCBEVHMgbm90
IGRlc2NyaWJpbmcgU0FUQSBwb3J0cwo+ID4gY29ycmVjdGx5IGRpcmVjdGx5IGZyb20gdGhlIEFI
Q0kgTVZFQlUgZHJpdmVyLiBUaGlzIHdheSwgd2Ugd2lsbCBiZQo+ID4gYWJsZSB0byBkcm9wIHRo
ZSBoYWNrIGZyb20gdGhlIElDVSBkcml2ZXIuIElPVywgd2hlbiB0aGUgQThrCj4gPiBjb21wYXRp
YmxlIHN0cmluZyBpcyB1c2VkIGFuZCB0aGVyZSBpcyBubyBzdWItbm9kZXMgaW4gdGhlIERULCB3
ZQo+ID4gZmFrZSB0aGUgY3JlYXRpb24gYW5kIG1hcHBpbmcgb2YgdGhlIHNlY29uZCAobWlzc2lu
ZykgaW50ZXJydXB0Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9hdGEvYWhjaV9tdmVi
dS5jICAgICAgIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+ICBkcml2ZXJz
L2F0YS9saWJhaGNpX3BsYXRmb3JtLmMgfCAgMyArKysKPiA+ICBpbmNsdWRlL2xpbnV4L2FoY2lf
cGxhdGZvcm0uaCAgfCAgMSArCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9haGNpX212
ZWJ1LmMgYi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKPiA+IGluZGV4IDg2NzFhYTgxNzlmYS4u
OGM5ODFiOGQ2ZTRkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9hdGEvYWhjaV9tdmVidS5jCj4g
PiArKysgYi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKPiA+IEBAIC0xNiw2ICsxNiw3IEBACj4g
PiAgI2luY2x1ZGUgPGxpbnV4L21idXMuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9v
Zl9pcnEuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiAgI2lu
Y2x1ZGUgImFoY2kuaCIKPiA+ICAKPiA+IEBAIC0yOCw5ICsyOSwxMyBAQAo+ID4gICNkZWZpbmUg
QUhDSV9XSU5ET1dfQkFTRSh3aW4pCSgweDY0ICsgKCh3aW4pIDw8IDQpKQo+ID4gICNkZWZpbmUg
QUhDSV9XSU5ET1dfU0laRSh3aW4pCSgweDY4ICsgKCh3aW4pIDw8IDQpKQo+ID4gIAo+ID4gKyNk
ZWZpbmUgSUNVX1NBVEEwX0lDVV9JRCAxMDkKPiA+ICsjZGVmaW5lIElDVV9TQVRBMV9JQ1VfSUQg
MTA3Cj4gPiArCj4gPiAgc3RydWN0IGFoY2lfbXZlYnVfcGxhdF9kYXRhIHsKPiA+ICAJaW50ICgq
cGxhdF9jb25maWcpKHN0cnVjdCBhaGNpX2hvc3RfcHJpdiAqaHByaXYsIHN0cnVjdCBkZXZpY2Ug
KmRldik7Cj4gPiAgCXVuc2lnbmVkIGludCBob3N0X2ZsYWdzOwo+ID4gKwl1bnNpZ25lZCBpbnQg
cmVzb3VyY2VfZmxhZ3M7Cj4gPiAgfTsKPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCBhaGNpX212ZWJ1
X21idXNfY29uZmlnKHN0cnVjdCBhaGNpX2hvc3RfcHJpdiAqaHByaXYsCj4gPiBAQCAtMTAxLDYg
KzEwNiwyNyBAQCBzdGF0aWMgaW50IGFoY2lfbXZlYnVfYXJtYWRhXzM3MDBfY29uZmlnKHN0cnVj
dCBhaGNpX2hvc3RfcHJpdiAqaHByaXYsCj4gPiAgc3RhdGljIGludCBhaGNpX212ZWJ1X2FybWFk
YV84a19jb25maWcoc3RydWN0IGFoY2lfaG9zdF9wcml2ICpocHJpdiwKPiA+ICAJCQkJICAgICAg
IHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICB7Cj4gPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAg
PSBvZl9pcnFfZmluZF9wYXJlbnQoZGV2LT5vZl9ub2RlKTsKPiA+ICsJc3RydWN0IGlycV9kYXRh
ICppcnFkID0gaXJxX2dldF9pcnFfZGF0YShocHJpdi0+aXJxc1swXSk7Cj4gPiArCWludCBob3N0
X2lycSA9IGlycWQgPyBpcnFkX3RvX2h3aXJxKGlycWQpIDogMDsKPiA+ICsJaW50IG1pc3Npbmdf
aXJxID0gKGhvc3RfaXJxID09IElDVV9TQVRBMV9JQ1VfSUQpID8KPiA+ICsJCUlDVV9TQVRBMF9J
Q1VfSUQgOiBJQ1VfU0FUQTFfSUNVX0lEOwo+ID4gKwlzdHJ1Y3QgaXJxX2Z3c3BlYyBmd3NwZWMg
PSB7Cj4gPiArCQkuZndub2RlID0gb2Zfbm9kZV90b19md25vZGUobnApLAo+ID4gKwkJLnBhcmFt
X2NvdW50ID0gMiwKPiA+ICsJCS5wYXJhbSA9IHttaXNzaW5nX2lycSwgSVJRX1RZUEVfTEVWRUxf
SElHSH0sCj4gPiArCX07Cj4gPiArCj4gPiArCWlmIChvZl9nZXRfY2hpbGRfY291bnQoZGV2LT5v
Zl9ub2RlKSkKPiA+ICsJCXJldHVybiAwOwo+ID4gKwo+ID4gKwlocHJpdi0+aXJxc1sxXSA9IGly
cV9jcmVhdGVfZndzcGVjX21hcHBpbmcoJmZ3c3BlYyk7Cj4gPiArCWlmIChocHJpdi0+aXJxc1sx
XSkgewo+ID4gKwkJaHByaXYtPmZsYWdzIHw9IEFIQ0lfSEZMQUdfTVVMVElfTVNJOwo+ID4gKwkJ
aHByaXYtPmdldF9pcnFfdmVjdG9yID0gYWhjaV9nZXRfcGVyX3BvcnRfaXJxX3ZlY3RvcjsKPiA+
ICsJCWhwcml2LT5tYXNrX3BvcnRfbWFwID0gR0VOTUFTSygxLCAwKTsKPiA+ICsJfQo+ID4gKwo+
ID4gIAlyZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMjAwLDcgKzIyNiw3IEBAIHN0YXRp
YyBpbnQgYWhjaV9tdmVidV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4g
IAlpZiAoIXBkYXRhKQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAgCj4gPiAtCWhwcml2ID0g
YWhjaV9wbGF0Zm9ybV9nZXRfcmVzb3VyY2VzKHBkZXYsIDApOwo+ID4gKwlocHJpdiA9IGFoY2lf
cGxhdGZvcm1fZ2V0X3Jlc291cmNlcyhwZGV2LCBwZGF0YS0+cmVzb3VyY2VfZmxhZ3MpOyAgCj4g
Cj4gVGhpcyBzZWVtcyB0byBiZSB0aGUgb25seSB1c2Ugb2YgcmVzb3VyY2VfZmxhZ3MgaW4gdGhl
IHdob2xlIHNlcmllcy4gV2h5Cj4gY2FuJ3QgeW91IGp1c3QgcGFzcyBBSENJX1BMQVRGT1JNX0E4
S19RVUlSSyBhcyBhIHBhcmFtZXRlciBhbmQgbm90Cj4gYWxsb2NhdGUgYW4gZXh0cmEgZmllbGQg
aW4gdGhlIHBsYXRmb3JtIGRhdGEgc3RydWN0dXJlPwoKQmVjYXVzZSB0aGlzIGRyaXZlciBzdXBw
b3J0cyAzIGRpZmZlcmVudCBjb21wYXRpYmxlcyBhbmQgdGhlIGE4awpjb21wYXRpYmxlIGlzIHRo
ZSBvbmx5IG9uZSBuZWVkaW5nIHRoaXMgZmxhZy4gQW5vdGhlciBzb2x1dGlvbiB3b3VsZApiZSB0
byBkZWNsYXJlIG9uIHRoZSBzdGFjayBhICdyZXNvdXJjZV9mbGFncycgdmFyaWFibGUgYW5kIHNl
dCBpdCB0bwpBSENJX1BMQVRGT1JNX0E4S19RVUlSSyBvbmx5IHdoZW4gdXNpbmcgdGhlIHJpZ2h0
IGNvbXBhdGlibGUuIEkKc3VwcG9zZSBpbiB0aGlzIGNhc2UsIHVzaW5nIGFuIGVudHJ5IG9mIGEg
cGxhdGZvcm0gZGF0YSBzdHJ1Y3R1cmUgaXMKdGhlIHdheSB0byBnbyAoY2xlYW5lciwgbW9yZSBy
ZWFkYWJsZSwgYXQgdGhlIGNvc3Qgb2YgYW4gZXh0cmEgNApieXRlcykuIFVubGVzcyB5b3UgaW5z
aXN0IG9uIHRoaXMgcG9pbnQgSSB3aWxsIGtlZXAgdGhpcyBvcmdhbml6YXRpb24uCgo+IAo+ID4g
IAlpZiAoSVNfRVJSKGhwcml2KSkKPiA+ICAJCXJldHVybiBQVFJfRVJSKGhwcml2KTsKPiA+ICAK
PiA+IEBAIC0yNDAsNiArMjY2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhaGNpX212ZWJ1X3Bs
YXRfZGF0YSBhaGNpX212ZWJ1X2FybWFkYV8zNzAwX3BsYXRfZGF0YSA9IHsKPiA+ICAKPiA+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IGFoY2lfbXZlYnVfcGxhdF9kYXRhIGFoY2lfbXZlYnVfYXJtYWRh
XzhrX3BsYXRfZGF0YSA9IHsKPiA+ICAJLnBsYXRfY29uZmlnID0gYWhjaV9tdmVidV9hcm1hZGFf
OGtfY29uZmlnLAo+ID4gKwkucmVzb3VyY2VfZmxhZ3MgPSBBSENJX1BMQVRGT1JNX0E4S19RVUlS
SywKPiA+ICB9Owo+ID4gIAo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFo
Y2lfbXZlYnVfb2ZfbWF0Y2hbXSA9IHsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9saWJh
aGNpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMKPiA+IGluZGV4
IDM0N2ZmMTRhZWRkMi4uNjIwZTVmMjdmZGQ3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9hdGEv
bGliYWhjaV9wbGF0Zm9ybS5jCj4gPiArKysgYi9kcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3Jt
LmMKPiA+IEBAIC00ODQsNiArNDg0LDkgQEAgc3RydWN0IGFoY2lfaG9zdF9wcml2ICphaGNpX3Bs
YXRmb3JtX2dldF9yZXNvdXJjZXMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+ICAJ
aWYgKCFjaGlsZF9ub2RlcykKPiA+ICAJCWhwcml2LT5ucG9ydHMgPSAxOwo+ID4gIAo+ID4gKwlp
ZiAoIWNoaWxkX25vZGVzICYmIGZsYWdzICYgQUhDSV9QTEFURk9STV9BOEtfUVVJUkspICAKPiAK
PiBDb25zaWRlciB1c2luZyBicmFjZXMgYXJvdW5kIHRoZSBiaXR3aXNlIG9wZXJhdG9ycy4KClN1
cmUhCgo+IAo+ID4gKwkJaHByaXYtPm5wb3J0cyA9IDI7Cj4gPiArCj4gPiAgCWhwcml2LT5waHlz
ID0gZGV2bV9rY2FsbG9jKGRldiwgaHByaXYtPm5wb3J0cywgc2l6ZW9mKCpocHJpdi0+cGh5cyks
IEdGUF9LRVJORUwpOwo+ID4gIAlpZiAoIWhwcml2LT5waHlzKSB7Cj4gPiAgCQlyYyA9IC1FTk9N
RU07Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9haGNpX3BsYXRmb3JtLmggYi9pbmNs
dWRlL2xpbnV4L2FoY2lfcGxhdGZvcm0uaAo+ID4gaW5kZXggZWFlZGNhNWZlNmZjLi41NzQ2NWJh
NmJiMTUgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2FoY2lfcGxhdGZvcm0uaAo+ID4g
KysrIGIvaW5jbHVkZS9saW51eC9haGNpX3BsYXRmb3JtLmgKPiA+IEBAIC00NCw1ICs0NCw2IEBA
IGludCBhaGNpX3BsYXRmb3JtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KTsKPiA+ICBpbnQg
YWhjaV9wbGF0Zm9ybV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KTsKPiA+ICAKPiA+ICAjZGVm
aW5lIEFIQ0lfUExBVEZPUk1fR0VUX1JFU0VUUwkweDAxCj4gPiArI2RlZmluZSBBSENJX1BMQVRG
T1JNX0E4S19RVUlSSwkJMHgwMgo+ID4gIAo+ID4gICNlbmRpZiAvKiBfQUhDSV9QTEFURk9STV9I
ICovCj4gPiAgIAo+IAo+IFRoYW5rcywKPiAKPiAJTS4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
