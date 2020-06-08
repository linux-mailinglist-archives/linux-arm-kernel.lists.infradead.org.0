Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491B41F1750
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oqCIgBAmf9jbu4MQALxwLNu/ttDojCs4x+EDMHsohZs=; b=DhlzGzHkFxoRGxGbtTK+hkTVf
	alk+DWNEwlY06ovhUex5rGgdtG765PWonicPWZG/nn9oGboY02QPI97EvtFfoVlLIC+heK8B8rR41
	uxZiHOqA7TjzGadp7pOxtI/IH2k8cej/E5VVg2qIFOuRVQJQkJVDO0d+jvXmSIflXXJZloHB0BOlt
	UajPpLaI3HAhIdM4f5HaKpKilFuGLrSxPzXdRGLMUkeifmElpSTPMFUqq7U+CSFHrQzDSYEkgxcJ1
	FPRKmj+MNnt14IsNLXAEzqqU3DvRd+ylEFCilHpdnihZ/BqBt9+hx2IekV3MZhBgW80Bm6t7OOQWV
	tGZh4p4fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFgg-0000mZ-KW; Mon, 08 Jun 2020 11:11:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFgX-0000la-15; Mon, 08 Jun 2020 11:11:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EA8B1FB;
 Mon,  8 Jun 2020 04:11:18 -0700 (PDT)
Received: from [10.57.9.113] (unknown [10.57.9.113])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 239553F73D;
 Mon,  8 Jun 2020 04:11:14 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Florian Fainelli <f.fainelli@gmail.com>, Mark Brown <broonie@kernel.org>, 
 lukas@wunner.de
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
Date: Mon, 8 Jun 2020 12:11:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_041121_156257_AD012779 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wNSAyMzowNCwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiBPbiA2LzUvMjAy
MCA3OjQxIEFNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIwMjAtMDYtMDUgMTQ6NDYsIFJv
YmluIE11cnBoeSB3cm90ZToKPj4+IE9uIDIwMjAtMDYtMDUgMTQ6MjAsIE1hcmsgQnJvd24gd3Jv
dGU6Cj4+Pj4gT24gRnJpLCBKdW4gMDUsIDIwMjAgYXQgMTI6MzQ6MzZQTSArMDEwMCwgUm9iaW4g
TXVycGh5IHdyb3RlOgo+Pj4+PiBPbiAyMDIwLTA2LTA0IDIyOjI4LCBGbG9yaWFuIEZhaW5lbGxp
IHdyb3RlOgo+Pj4+Cj4+Pj4+PiBGb3IgdGhlIEJDTTI4MzUgY2FzZSB3aGljaCBpcyBkZWVtZWQg
cGVyZm9ybWFuY2UgY3JpdGljYWwsIHdlIHdvdWxkCj4+Pj4+PiBsaWtlCj4+Pj4+PiB0byBjb250
aW51ZSB1c2luZyBhbiBpbnRlcnJ1cHQgaGFuZGxlciB3aGljaCBkb2VzIG5vdCBoYXZlIHRoZSBl
eHRyYQo+Pj4+Pj4gY29tcGFyaXNvbiBvbiBCQ00yODM1X1NQSV9DU19JTlRSLgo+Pj4+Cj4+Pj4+
IEZXSVcsIGlmIEknbSByZWFkaW5nIHRoZSBwYXRjaCBjb3JyZWN0bHksIHRoZW4gd2l0aCBzZW5z
aWJsZSBjb2RlZ2VuCj4+Pj4+IHRoYXQKPj4+Pj4gIm92ZXJoZWFkIiBzaG91bGQgYW1vdW50IHRv
IGEgYml0IHRlc3Qgb24gYSBsaXZlIHJlZ2lzdGVyIHBsdXMgYQo+Pj4+PiBub3QtdGFrZW4KPj4+
Pj4gY29uZGl0aW9uYWwgYnJhbmNoIC0gYWNjb3JkaW5nIHRvIHRoZSAxMTc2IFRSTSB0aGF0IHNo
b3VsZCBhZGQgdXAgdG8gYQo+Pj4+PiB3aG9wcGluZyAyIGN5Y2xlcy4gSWYgdGhhdCdzIHJlYWxs
eSBzaWduaWZpY2FudCB0aGVuIEknZCBoYXZlIHRvIHdvbmRlcgo+Pj4+PiB3aGV0aGVyIHlvdSB3
YW50IHRvIGJlIGF0IHRoZSBtZXJjeSBvZiB0aGUgd2hvbGUgZ2VuZXJpYyBJUlEgc3RhY2sKPj4+
Pj4gYXQgYWxsLAo+Pj4+PiBhbmQgc2hvdWxkIHBlcmhhcHMgY29uc2lkZXIgdXNpbmcgRklRIGlu
c3RlYWQuCj4+Pj4KPj4+PiBZZXMsIGFuZCBpbmRlZWQgdGhlIGNvbXBpbGVyIGRvZXMgc2VlbSB0
byBtYW5hZ2UgdGhhdC7CoCBJdCAqaXMqIG5vbi16ZXJvCj4+Pj4gb3ZlcmhlYWQgdGhvdWdoLgo+
Pj4KPj4+IFRydWUsIGJ1dCBzbydzIHRoZSBleGlzdGluZyBsZXZlbCBvZiBwb2ludGVyLWNoYXNp
bmcgaW5kaXJlY3Rpb24gdGhhdAo+Pj4gd2l0aCBzb21lIHN0cmFpZ2h0Zm9yd2FyZCByZWZhY3Rv
cmluZyBjb3VsZCBiZSB0YWtlbiByaWdodCBvdXQgb2YgdGhlCj4+PiBjcml0aWNhbCBwYXRoIGFu
ZCBjb25maW5lZCB0byBqdXN0IHRoZSBjb25kaXRpb25hbCBjb21wbGV0ZSgpIGNhbGwuCj4+PiBU
aGF0J3MgdGhlIGtpbmQgb2YgdGhpbmcgbGVhdmluZyBtZSB1bmNvbnZpbmNlZCB0aGF0IHRoaXMg
aXMgY29kZQo+Pj4gd2hlcmUgZXZlcnkgc2luZ2xlIGN5Y2xlIGNvdW50cyA7KQo+Pgo+PiBIYSwg
YW5kIGluIGZhY3QgaGF2aW5nIGNoZWNrZWQgYSBidWlsZCBvdXQgb2YgY3VyaW9zaXR5LCB0aGlz
IHBhdGNoCj4+IGFzLWlzIGFjdHVhbGx5IHN0YW5kcyB0byBtYWtlIHRoaW5ncyBjb25zaWRlcmFi
bHkgd29yc2UuIEF0IGxlYXN0IHdpdGgKPj4gR0NDIDguMyBhbmQgYmNtMjgzNV9kZWZjb25maWcs
IGJjbTI4MzVfc3BpX2ludGVycnVwdF9jb21tb24oKSBkb2Vzbid0Cj4+IGdldCBpbmxpbmVkLCB3
aGljaCBtZWFucyBiY20yODM1X3NwaV9pbnRlcnJ1cHQoKSBwdXNoZXMvcG9wcyBhIHN0YWNrCj4+
IGZyYW1lIGFuZCBtYWtlcyBhbiBvdXQtb2YtbGluZSBjYWxsIHRvIGJjbTI4MzVfc3BpX2ludGVy
cnVwdF9jb21tb24oKSwKPj4gcmVzdWx0aW5nIGluIG1hc3NpdmVseSAqbW9yZSogd29yayB0aGFu
IHRoZSBleHRyYSB0d28gaW5zdHJ1Y3Rpb25zIG9mCj4+IHNpbXBseSBpbmxpbmluZyB0aGUgdGVz
dC4KPj4KPj4gU28geWVzLCB0aGUgb3ZlcmhlYWQgb2YgaW5saW5pbmcgdGhlIHRlc3QgdnMuIHRo
ZSBhbHRlcm5hdGl2ZSBpcyBpbmRlZWQKPj4gbm9uLXplcm8uIEl0J3MganVzdCBhbHNvIG5lZ2F0
aXZlIDpECj4gCj4gSXMgaXQgcmVsaWFibGUgYWNyb3NzIGNvbXBpbGVyIHZlcnNpb25zIGlmIHdl
IHVzZSBfX2Fsd2F5c19pbmxpbmU/Cj4gCj4gVGhlIG9ubHkgb3RoZXIgYWx0ZXJuYXRpdmUgdGhh
dCBJIGNhbiB0aGluayBvZiBpcyB1c2luZyBhIHN0YXRpYyBrZXkgdG8KPiBlbGltaW5hdGUgdGhl
IHRlc3QgZm9yIHRoZSBzaW5nbGUgY29udHJvbGxlciBjYXNlLiBUaGlzIGZlZWxzIGhpZ2hseQo+
IG92ZXIgZW5naW5lZXJlZCwgYnV0IGlmIHRoYXQgcHJvdmVzIG1vcmUgcmVsaWFibGUgYW5kIGdl
dHMgZXZlcnlib2R5Cj4gdGhlaXIgY29va2llLCB3aHkgbm90LgoKQWdhaW4sIDIgY3ljbGVzLiBU
aGUgb3ZlcmhlYWQgb2YgYSBzdGF0aWMga2V5IGFsb25lIGlzIGF0IGxlYXN0IDUwJSBvZiAKdGhh
dC4gQW5kIHRoYXQncyBub3QgZXZlbiBjb25zaWRlcmluZyB3aGV0aGVyIHRoZSBjaGFuZ2UgaW4g
Y29kZSBsYXlvdXQgCmNhdXNlZCBieSBkb3VibGluZyB1cCB0aGUgSVJRIGhhbmRsZXIgbWlnaHQg
YWZmZWN0IEktY2FjaGUgb3IgYnJhbmNoIApwcmVkaWN0b3IgYmVoYXZpb3VyLCB3aGVyZSBhIHNp
bmdsZSBtaXNzIHN0YW5kcyB0byBtb3JlIHRoYW4gd2lwZSBvdXQgCmFueSBwZXJjZWl2ZWQgc2F2
aW5nLiBBbmQgYWxsIGluIGNvZGUgdGhhdCBoYXMgYXQgbGVhc3Qgb25lIG9idmlvdXMgCmluZWZm
aWNpZW5jeSBsZWZ0IG9uIHRoZSB0YWJsZSBlaXRoZXIgd2F5LgoKVGhpcyB0aHJlYWQgdHJ1bHkg
ZXBpdG9taXNlcyBLbnV0aCdzICJwcmVtYXR1cmUgb3B0aW1pc2F0aW9uIiBxdW90ZS4uLiA7KQoK
Um9iaW4uCgo+IAo+IEx1a2FzLCBkbyB5b3UgaGF2ZSBhbnkgd2F5IHRvIHRlc3Qgd2l0aCB0aGUg
Y29uZGl0aW9uYWwgYmVpbmcgcHJlc2VudAo+IHRoYXQgdGhlIHBlcmZvcm1hbmNlIG9yIGxhdGVu
Y3kgZG9lcyBub3Qgc3VmZmVyIHNvIG11Y2ggdGhhdCBpdCBiZWNvbWVzCj4gdW5hY2NlcHRhYmxl
IGZvciB5b3VyIHVzZSBjYXNlcz8KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
