Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855F31723DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YQbXrM7PIADiXyfOr/stSOcxPfEoYNSUvWd2KSnbW+8=; b=sisZi5s2yjUzJVUSJme76lrdm
	IvlfhVqQK+XUISV9ikW2lIQZp8n58taeVHgMTH00R/9tLlwJ3QicJZ/TYBGuNCPDknhKUOfkYHcjx
	rYA+QcnkYWFzGh0mngBCtKx2DdncIBGoSIRZRayH9nzJUhQKVJSE/b0HYaDSWHZ2K96QmosBNFvND
	Wb5hqJLefgynSg2A0GOoB3bP7VAg5HRqrbhUwJ3PO99PCADoGAzIXrsQ9hglghWSRRm6MfraHK7EL
	DwkSPuRS6QHqUTMx5nLY2ubDB8jvYRXGe0pE4xEhpOICT+oqMN2bGYlMrfZ2CuYnmLkrm1HcUPSkd
	ysOb7FY5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MJn-0007ib-Ry; Thu, 27 Feb 2020 16:47:23 +0000
Received: from smtp67.ord1c.emailsrvr.com ([108.166.43.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MJc-0007ht-E6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=softiron.com;
 s=20191119-3p77dzn5; t=1582822029;
 bh=xVOIH7bxDvG01Gakqopm6BNFZTqj7/zKtpBBo9O1Zmg=;
 h=Subject:To:From:Date:From;
 b=R3UQN/mM5+n/qfTjYmJ4+dKCJvzgezRYswE/UDFPpoaFbD9n6q/rkFkho/STNtd7I
 S4omcyGnzoHaljyzKkdST+ozIBwJiWDFHlHHyd9dCmN3YJ7gQ1+0LDsmTgkDZhRo+c
 Y+RkFf/sDOhH2k9luwNdmJgOH7oOSOa0m/Sx7f+E=
X-Auth-ID: alan@softiron.com
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 alan-AT-softiron.com) with ESMTPSA id 77DDC201F5; 
 Thu, 27 Feb 2020 11:47:08 -0500 (EST)
X-Sender-Id: alan@softiron.com
Received: from [10.1.1.115] (99-117-187-177.lightspeed.dybhfl.sbcglobal.net
 [99.117.187.177]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Thu, 27 Feb 2020 11:47:09 -0500
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
From: Alan Ott <alan@softiron.com>
Message-ID: <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
Date: Thu, 27 Feb 2020 11:47:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20191213002010.GO25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_084712_721406_8D50EE39 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [108.166.43.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kamel.bouhara@bootlin.com, Wolfram Sang <wsa@the-dreams.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic.Desroches@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTIvMTkgNzoyMCBQTSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIHdyb3Rl
Ogo+IE9uIE1vbiwgRGVjIDA5LCAyMDE5IGF0IDAxOjIwOjE1QU0gKzAxMDAsIExpbnVzIFdhbGxl
aWogd3JvdGU6Cj4+IEhpIFJ1c3NlbGwsCj4+Cj4+IHZlcnkgbmljZSBkZXNjcmlwdGlvbiBvZiB0
aGlzIGR1YWwtbW9kZSBwcm9ibGVtLgo+Pgo+PiBJIHdpc2ggSSBoYWQgYSBzaW1wbGUgYW5kIGVs
ZWdhbnQgd2F5IHdlIGNvdWxkIG1ha2UgaXQKPj4gdW5hbWJpZ3VvdXMgYW5kIHNpbXBsZSB0byB1
c2UgLi4uIGJ1dCBpdCBiZWF0cyBtZSByaWdodAo+PiBub3cuCj4+Cj4+IE9uIEZyaSwgRGVjIDYs
IDIwMTkgYXQgNjozMyBQTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4KPj4gPGxpbnV4
QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4+Cj4+PiBPbmUgbWF5IGV4cGVjdDoKPj4+Cj4+PiAg
ICAgICAgICBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmNfaW14LT5waW5jdHJsLCBpMmNfaW14LT5w
aW5jdHJsX3BpbnNfZGVmYXVsdCk7Cj4+Pgo+Pj4gdG8gY2hhbmdlIHRoZW0gYmFjayB0byB0aGUg
ZGVmYXVsdCBzdGF0ZSwgYnV0IHRoYXQgd291bGQgYmUgaW5jb3JyZWN0Lgo+Pj4gVGhlIGZpcnN0
IHRoaW5nIHRoYXQgcGluY3RybF9zZWxlY3Rfc3RhdGUoKSBkb2VzIGlzIGNoZWNrIHdoZXRoZXIK
Pj4+Cj4+PiAgICAgICAgICBwLT5zdGF0ZSA9PSBzdGF0ZQo+Pj4KPj4+IHdoaWNoIGl0IHdpbGwg
ZG8sIGFzIHRoZSBwaW5jdHJsIGxheWVyIGhhc24ndCBiZWVuIGluZm9ybWVkIG9mIHRoZQo+Pj4g
Y2hhbmdlIHRoYXQgaGFzIGhhcHBlbmVkIGJlaGluZCBpdHMgYmFjayBhdCB0aGUgcGlubXV4IGxl
dmVsLgo+PiBTb21lIHBpbiBjb250cm9sbGVycyBoYXZlIHRoZSAuc3RyaWN0IHByb3BlcnR5IHNl
dAo+PiBpbiB0aGVpciBzdHJ1Y3QgcGlubXV4X29wczoKPj4KPj4gKiBAc3RyaWN0OiBkbyBub3Qg
YWxsb3cgc2ltdWx0YW5lb3VzIHVzZSBvZiB0aGUgc2FtZSBwaW4gZm9yIEdQSU8gYW5kIGFub3Ro
ZXIKPj4gKiAgICAgIGZ1bmN0aW9uLiBDaGVjayBib3RoIGdwaW9fb3duZXIgYW5kIG11eF9vd25l
ciBzdHJpY3RseSBiZWZvcmUgYXBwcm92aW5nCj4+ICogICAgICB0aGUgcGluIHJlcXVlc3QuCj4+
Cj4+IFRoZSBub24tc3RyaWN0IHBpbiBjb250cm9sbGVycyBhcmUgdGhvc2UgdGhhdCBhY3R1YWxs
eSBhbGxvdyBHUElPCj4+IGFuZCBkZXZpY2UgZnVuY3Rpb25zIHRvIGJlIHVzZWQgb24gdGhlIHNh
bWUgcGh5c2ljYWwgbGluZSBhdCB0aGUKPj4gc2FtZSB0aW1lLiBJbiB0aGlzIGNhc2UgdGhlcmUg
aXMgbm90IHNwZWNpYWwgR1BJTyBtb2RlIGZvciB0aGUKPj4gbGluZSBpbiBzb21lIG11eGluZyBy
ZWdpc3RlcnMsIHRoZXkgYXJlIGp1c3QgcGh5c2ljYWxseSBjb25uZWN0ZWQKPj4gc29tZWhvdy4K
Pj4KPj4gT25lIHVzZWNhc2UgaXMgc29ydCBvZiBsaWtlIGhvdyB0Y3BkdW1wIHdvcmsgZm9yCj4+
IGV0aGVybmV0IGludGVyZmFjZXM6IGEgR1BJTyByZWdpc3RlciBjYW4gInNub29wIiBvbiBhIHBp
biB3aGlsZQo+PiBpbiB1c2VkIGJ5IGFub3RoZXIgZGV2aWNlLgo+Pgo+PiBCdXQgaXQgd291bGQg
bm90YWJseSBhbHNvIGFsbG93IHlvdSB0byBkcml2ZSB0aGUgbGluZSBhbmQgaW50ZXJmZXJlCj4+
IHdpdGggdGhlIGRldmljZS4gV2hpY2ggaXMgZXhhY3RseSB3aGF0IHRoaXMgSTJDIHJlY292ZXJ5
IG1lY2hhbmlzbQo+PiBkb2VzLCBqdXN0IHRoYXQgaXRzIHBpbiBjb250cm9sbGVyIGlzIGFjdHVh
bGx5IHN0cmljdCwgd2lsbCBub3QgYWxsb3cKPj4gdGhlIHNhbWUgbGluZSB0byBiZSB1c2VkIGZv
ciBHUElPIGFuZCBzb21lIG90aGVyIGZ1bmN0aW9uIGF0IHRoZQo+PiBzYW1lIHRpbWUsIHNvIEkg
c3VwcG9zZSBpLk1YIHNob3VsZCBwcm9iYWJseSBleHBsb3JlIHRoZQo+PiBzdHJpY3QgbW9kZS4K
Pj4KPj4gRW5hYmxpbmcgdGhhdCB3aWxsIHNhZGx5IG1ha2UgdGhlIHByb2JsZW0gTU9SRSBjb21w
bGV4Cj4+IGZvciB0aGlzIEkyQyByZWNvdmVyeSwgcmVxdWlyaW5nIGEgY3ljbGUgb2YKPj4gZ3Bp
b2RfcHV0KCkvZ3Bpb2RfZ2V0KCkgdG8gZ2V0IGl0IHJlbGVhc2VkIGZyb20gR1BJTyBtb2RlLCBp
LmUuCj4+IHdlIHdvdWxkIG5lZWQgdG8ganVzdCBnZXQgdGhlIEdQSU8gd2hlbiB0aGlzIGlzIHN0
cmljdGx5IG5lZWRlZC4KPj4gVXNpbmcgZGV2bV9ncGlvZF9nZXQoKSBhbmQga2VlcGluZyBhIHJl
ZmVyZW5jZSBkZXNjcmlwdG9yCj4+IGFyb3VuZCB3b3VsZCBub3Qgd29yayBhbGwgb2YgYSBzdWRk
ZW4uCj4+Cj4+IEkgYW0gdGhpbmtpbmcgd2hldGhlciB3ZSBjYW4gaGFuZGxlIHRoZSBub24tc3Ry
aWN0IGNvbnRyb2xsZXJzCj4+IGluIGEgbW9yZSBlbGVnYW50IHdheSwgb3IgYWRkIHNvbWUgQVBJ
IHRvIGV4cGxpY2l0bHkgaGFuZCBvdmVyCj4+IGJldHdlZW4gZGV2aWNlIGZ1bmN0aW9uIGFuZCBH
UElPIGZ1bmN0aW9uLiBCdXQgSSBjYW4ndCByZWFsbHkKPj4gc2VlIHNvbWUgb2J2aW91cyBzb2x1
dGlvbi4KPiBXaGF0IEknbSBjdXJyZW50bHkgdHJ5aW5nIGlzIChlcnJvciBoYW5kbGluZyByZW1v
dmVkIGZvciBicmV2aXR5KToKPgo+IAlzdHJ1Y3QgaTJjX2J1c19yZWNvdmVyeV9pbmZvICpicmkg
PSAmaTJjLT5yZWNvdmVyeTsKPgo+ICAgICAgICAgIGkyYy0+cGluY3RybCA9IGRldm1fcGluY3Ry
bF9nZXQoZGV2KTsKPiAgICAgICAgICBpMmMtPnBpbmN0cmxfZGVmYXVsdCA9IHBpbmN0cmxfbG9v
a3VwX3N0YXRlKGkyYy0+cGluY3RybCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFBJTkNUUkxfU1RBVEVfREVGQVVMVCk7Cj4gICAgICAgICAg
aTJjLT5waW5jdHJsX3JlY292ZXJ5ID0gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJs
LAo+IAkJCQkJCSAgICAgInJlY292ZXJ5Iik7Cj4gICAgICAgICAgYnJpLT5zZGFfZ3Bpb2QgPSBk
ZXZtX2dwaW9kX2dldChkZXYsICJzZGEiLCBHUElPRF9PVVRfSElHSF9PUEVOX0RSQUlOKTsKPiAg
ICAgICAgICBicmktPnNjbF9ncGlvZCA9IGRldm1fZ3Bpb2RfZ2V0KGRldiwgInNjbCIsIEdQSU9E
X09VVF9ISUdIX09QRU5fRFJBSU4pOwo+Cj4gCXBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyYy0+cGlu
Y3RybCwgaTJjLT5waW5jdHJsX3JlY292ZXJ5KTsKPiAJcmV0dXJuIHBpbmN0cmxfc2VsZWN0X3N0
YXRlKGkyYy0+cGluY3RybCwgaTJjLT5waW5jdHJsX2RlZmF1bHQpOwo+Cj4gd2hpY2ggc2VlbXMg
Z29vZCBlbm91Z2ggdG8gZ2V0IHRoZSBwaW5zIGJhY2sgaW50byBpMmMgbW9kZSBhZnRlciB0aGUK
PiBncGlvcyBhcmUgb2J0YWluZWQuICBUaGVuIHdlIHN3aXRjaCB0aGUgcGluY3RybCBzdGF0ZSBi
ZXR3ZWVuCj4gcGluY3RybF9yZWNvdmVyeSBhbmQgcGluY3RybF9kZWZhdWx0IGFzIHdlIGhhdmUg
bmVlZCB0by4KPgo+IFRoZSBwcm9ibGVtIGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5
IGNvZGUgd2FudHMgdGhlIGdwaW9kCj4gZGVzY3JpcHRvcnMgdG8gYmUgc2V0dXAgYW5kIGlucGxh
Y2UgYnkgdGhlIHRpbWUgaTJjX2luaXRfcmVjb3ZlcnkoKQo+IGlzIGNhbGxlZCAod2hpY2ggaXMg
Y2FsbGVkIHdoZW4gdGhlIGFkYXB0ZXIgaXMgcmVnaXN0ZXJlZCkgc28KPiBob2xkaW5nIG9mZiB1
bnRpbCB3ZSBuZWVkIHRvIGRvIHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4KPgo+IFRoaXMgc2VlbXMg
dG8gd29yayBmb3IgdGhpcyBTb0MgSSdtIGN1cnJlbnRseSB3b3JraW5nIHdpdGgsIGJ1dCBJCj4g
dGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdtIGhhdmluZyB0aGUgc2FtZSBw
cm9ibGVtcwo+IG9uIGFub3RoZXIgU29DIHdoaWNoIGFsc28gbmVlZHMgYnVzIHJlY292ZXJ5IGlt
cGxlbWVudGVkLCBhbmQgYXMKPiB0aGUgcHJvYmxlbSBkZXZpY2UgaXMgYmVoaW5kIGFuIEkyQyBi
dXMgbXV4LCB3aGVuIGl0IGxvY2tzIHRoZSBJMkMKPiBidXMsIGl0IGtpbGxzIGFsbCBJMkMgYnVz
ZXMgcm9vdGVkIGF0IHRoYXQgcGFydGljdWxhciBTb0MgSTJDCj4gY29udHJvbGxlci4gIEhvd2V2
ZXIsIHRoZXJlJ3MgYSBwcm9ibGVtIC0gdGhlIHBpbmN0cmxzIGZvciB0aGF0IFNvQwo+IGFyZSBz
ZXQgYnkgUk9NIGZpcm13YXJlIGF0IGJvb3QgdGltZSBieSByZWFkaW5nIGEgdGFibGUgZnJvbSB0
aGUKPiBib290IG1lZGlhLiAgKlVucHJpbnRhYmxlcyBhYm91dCBmaXJtd2FyZSBiZWluZyB0b28g
d2F5IGxpbWl0aW5nKi4gOnAKPgpIaSBhbGwsIHdoYXQncyB0aGUgY3VycmVudCBzdGF0ZSBvZiB0
aGlzPyBJIGNhbiBjb25maXJtIHRoYXQgdGhpcyBpcyAKYnJva2VuIHdpdGggdGhlIGF0OTEgaTJj
IGNvbnRyb2xsZXIncyByZWNvdmVyeSBtb2RlWzFdLCB3aGljaCBpcyAKaW1wbGVtZW50ZWQgZXhh
Y3RseSB0aGUgc2FtZSBhcyBvdGhlciBpMmMgbWFzdGVyIHJlY292ZXJ5IG1vZGVzLCBzbyBJIApz
dXNwZWN0IHRoZW0gdG8gYmUgYnJva2VuIGFzIHdlbGwuCgpJJ20gdXNpbmcgNS41LjYgd2l0aCB0
aGlzIHBhdGNoIGFwcGxpZWQgKHdoaWNoIGFkZHMgdGhlIHJlY292ZXJ5KToKIMKgwqDCoCBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMzMzODgzLwoKSXQgd29ya2VkIGZpbmUg
d2l0aCA1LjIsIGJ1dCBoYXMgbm93IGJyb2tlbiwgdGhlIHdheSBSdXNzZWxsIGRlc2NyaWJlcywg
CmluIDUuNS42IGFuZCBhbHNvIG9uIHRoZSBsYXRlc3QgNS42LXJjMy4gUnVzc2VsbCdzIHN1Z2dl
c3RlZCB3b3JrYXJvdW5kIApvZiBzZXR0aW5nIHRoZSBwaW5jdHJsIHRvIHJlY292ZXJ5IChncGlv
KSBhbmQgdGhlbiBiYWNrIHRvIGRlZmF1bHQgZG9lcyAKbWFrZSBpdCB3b3JrLgoKQWxhbi4KClsx
XSBjdXJyZW50bHkgdGhlIHBhdGNoIGZvciBpMmMgcmVjb3ZlcnkgZm9yIGF0OTEgaXMgYWNjZXB0
ZWQgdG8gV29sZnJhbSAKU2FuZydzIGZvci1uZXh0IHRyZWUuCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
