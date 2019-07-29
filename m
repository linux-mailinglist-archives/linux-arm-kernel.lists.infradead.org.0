Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378DB790DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SW3h+4lsQoaP3+eaC27KjtEqglFSSVFEFEO4fFH/x0=; b=t0XYj3DXKcvJBt
	a8xgNQf030YenNQX5twcTM9+XRAlfoJrQLjKehEqsCH4d6QGM/zb6IHjA1vRjLitG4SCrr8/t6Cll
	kilPAzBbc752eJYdU7qWajPrWHTcIgVWXSJDbl8G5LkNhFDJjkQst9FuBm+Gbl833BPxKWBmyaTnO
	0fhkcUvjEDViPEYlALYFuD+HXnUvpk4wQBE5P0oBRqfstLZHMhMfQWPToLQPJjVEJ34jyvkYdpRLT
	wQvMqZHU0OOe8ZYksP0ASF0ku/JZC2enVLYeiSrasECEuUBuFqI6XHUTcMAI1tLkuFB79X5iw0O5d
	9z6vt+PtSCIEvhVlatqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8XR-0002eG-T0; Mon, 29 Jul 2019 16:30:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Wc-0002c4-99
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:29:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8WW-0000VG-G7; Mon, 29 Jul 2019 18:29:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8WW-00069u-3Y; Mon, 29 Jul 2019 18:29:20 +0200
Date: Mon, 29 Jul 2019 18:29:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20190729162920.orx3rhkrfmp7stzh@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-6-jernej.skrabec@siol.net>
 <20190729070605.vlu7kgzn362ph2q3@pengutronix.de>
 <2499807.IN78SsLMYo@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2499807.IN78SsLMYo@jernej-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092926_524944_836DDAAD 
X-CRM114-Status: GOOD (  29.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAwNjoxNjo1NVBNICswMjAwLCBKZXJuZWog
xaBrcmFiZWMgd3JvdGU6Cj4gRG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA5OjA2
OjA1IENFU1QgamUgVXdlIEtsZWluZS1Lw7ZuaWcgCj4gbmFwaXNhbChhKToKPiA+IE9uIEZyaSwg
SnVsIDI2LCAyMDE5IGF0IDA4OjQwOjQ0UE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
ID4gPiBQV00gY29yZSBoYXMgYW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9sZSBsb2dpYyBhbmQgb3V0
cHV0IHVuY2hhbmdlZCBzb3VyY2UKPiA+ID4gY2xvY2sgYXMgUFdNIG91dHB1dC4gVGhpcyBpcyBh
Y2hpZXZlZCBieSBlbmFibGluZyBieXBhc3MgYml0Lgo+ID4gPiAKPiA+ID4gTm90ZSB0aGF0IHdo
ZW4gYnlwYXNzIGlzIGVuYWJsZWQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLCBu
b3QKPiA+ID4gZXZlbiBlbmFibGUgYml0Lgo+ID4gPiAKPiA+ID4gVGhpcyBtb2RlIG9mIG9wZXJh
dGlvbiBpcyBuZWVkZWQgdG8gYWNoaWV2ZSBoaWdoIGVub3VnaCBmcmVxdWVuY3kgdG8KPiA+ID4g
c2VydmUgYXMgY2xvY2sgc291cmNlIGZvciBBQzIwMCBjaGlwLCB3aGljaCBpcyBpbnRlZ3JhdGVk
IGludG8gc2FtZQo+ID4gPiBwYWNrYWdlIGFzIEg2IFNvQy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gLS0t
Cj4gPiA+IAo+ID4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCAzMSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3
bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gaW5kZXggOWUwZWNhNzlm
Zjg4Li44NDhjZmYyNmYzODUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+IEBAIC0xMjAsNiAr
MTIwLDE5IEBAIHN0YXRpYyB2b2lkIHN1bjRpX3B3bV9nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlw
Cj4gPiA+ICpjaGlwLAo+ID4gPiAKPiA+ID4gIAl2YWwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlf
cHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4gPiAKPiA+ID4gKwkvKgo+ID4gPiArCSAqIFBXTSBjaGFw
dGVyIGluIEg2IG1hbnVhbCBoYXMgYSBkaWFncmFtIHdoaWNoIGV4cGxhaW5zIHRoYXQgaWYgYnlw
YXNzCj4gPiA+ICsJICogYml0IGlzIHNldCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5p
bmcuIEV2ZW4gbW9yZSwgZXhwZXJpbWVudAo+ID4gPiArCSAqIHByb3ZlZCB0aGF0IGFsc28gZW5h
YmxlIGJpdCBpcyBpZ25vcmVkIGluIHRoaXMgY2FzZS4KPiA+ID4gKwkgKi8KPiA+ID4gKwlpZiAo
dmFsICYgQklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdwd20pKSB7Cj4gPiA+ICsJCXN0YXRlLT5w
ZXJpb2QgPSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoTlNFQ19QRVJfU0VDLCBjbGtfcmF0ZSk7Cj4g
PiA+ICsJCXN0YXRlLT5kdXR5X2N5Y2xlID0gc3RhdGUtPnBlcmlvZCAvIDI7Cj4gPiA+ICsJCXN0
YXRlLT5wb2xhcml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7Cj4gPiA+ICsJCXN0YXRlLT5lbmFi
bGVkID0gdHJ1ZTsKPiA+ID4gKwkJcmV0dXJuOwo+ID4gPiArCX0KPiA+ID4gKwo+ID4gPiAKPiA+
ID4gIAlpZiAoKFBXTV9SRUdfUFJFU0NBTCh2YWwsIHB3bS0+aHdwd20pID09IFBXTV9QUkVTQ0FM
X01BU0spICYmCj4gPiA+ICAJCj4gPiA+ICAJICAgIHN1bjRpX3B3bS0+ZGF0YS0+aGFzX3ByZXNj
YWxlcl9ieXBhc3MpCj4gPiA+ICAJCQo+ID4gPiAgCQlwcmVzY2FsZXIgPSAxOwo+ID4gPiAKPiA+
ID4gQEAgLTIxMSw3ICsyMjQsOCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3Qg
cHdtX2NoaXAgKmNoaXAsCj4gPiA+IHN0cnVjdCBwd21fZGV2aWNlICpwd20sPiAKPiA+ID4gIHsK
PiA+ID4gIAo+ID4gPiAgCXN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtID0gdG9fc3Vu
NGlfcHdtX2NoaXAoY2hpcCk7Cj4gPiA+ICAJc3RydWN0IHB3bV9zdGF0ZSBjc3RhdGU7Cj4gPiA+
IAo+ID4gPiAtCXUzMiBjdHJsOwo+ID4gPiArCXUzMiBjdHJsLCBjbGtfcmF0ZTsKPiA+ID4gKwli
b29sIGJ5cGFzczsKPiA+ID4gCj4gPiA+ICAJaW50IHJldDsKPiA+ID4gIAl1bnNpZ25lZCBpbnQg
ZGVsYXlfdXM7Cj4gPiA+ICAJdW5zaWduZWQgbG9uZyBub3c7Cj4gPiA+IAo+ID4gPiBAQCAtMjI2
LDYgKzI0MCwxNiBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAg
KmNoaXAsCj4gPiA+IHN0cnVjdCBwd21fZGV2aWNlICpwd20sPiAKPiA+ID4gIAkJfQo+ID4gPiAg
CQo+ID4gPiAgCX0KPiA+ID4gCj4gPiA+ICsJLyoKPiA+ID4gKwkgKiBBbHRob3VnaCBpdCB3b3Vs
ZCBtYWtlIG11Y2ggbW9yZSBzZW5zZSB0byBjaGVjayBmb3IgYnlwYXNzIGluCj4gPiA+ICsJICog
c3VuNGlfcHdtX2NhbGN1bGF0ZSgpLCB2YWx1ZSBvZiBieXBhc3MgYml0IGFsc28gZGVwZW5kcyBv
biAiZW5hYmxlZCIuCj4gPiA+ICsJICogUGVyaW9kIGlzIGFsbG93ZWQgdG8gYmUgcm91bmRlZCB1
cCBvciBkb3duLgo+ID4gPiArCSAqLwo+ID4gCj4gPiBFdmVyeSBkcml2ZXIgc2VlbXMgdG8gaW1w
bGVtZW50IHJvdW5kaW5nIHRoZSB3YXkgaXRzIGRyaXZlciBjb25zaWRlcnMgaXQKPiA+IHNlbnNp
YmxlLiBAVGhpZXJyeTogVGhpcyBpcyBhbm90aGVyIHBhdGNoIHdoZXJlIGl0IHdvdWxkIGJlIGdv
b2QgdG8gaGF2ZQo+ID4gYSBnbG9iYWwgZGlyZWN0aXZlIGFib3V0IGhvdyByb3VuZGluZyBpcyBz
dXBwb3NlZCB0byB3b3JrIHRvIHByb3ZpZGUgdGhlCj4gPiB1c2VycyBhbiByZWxpYWJsZSBhbmQg
dW5pZm9ybSB3YXkgdG8gd29yayB3aXRoIFBXTXMuCj4gPiAKPiA+ID4gKwljbGtfcmF0ZSA9IGNs
a19nZXRfcmF0ZShzdW40aV9wd20tPmNsayk7Cj4gPiA+ICsJYnlwYXNzID0gKHN0YXRlLT5wZXJp
b2QgPT0gTlNFQ19QRVJfU0VDIC8gY2xrX3JhdGUgfHwKPiA+ID4gKwkJIHN0YXRlLT5wZXJpb2Qg
PT0gRElWX1JPVU5EX1VQKE5TRUNfUEVSX1NFQywgY2xrX3JhdGUpKSAmJgo+ID4gPiArCQkgc3Rh
dGUtPmVuYWJsZWQ7Cj4gPiAKPiA+IE5vdCBzdXJlIGlmIHRoZSBjb21waWxlciBpcyBjbGV2ZXIg
ZW5vdWdoIHRvIG5vdGljZSB0aGUgb2J2aW91cwo+ID4gb3B0aW1pc2F0aW9uIHdpdGggdGhpcyBj
b2RlIGNvbnN0cnVjdCwgYnV0IHlvdSBjYW4gd3JpdGUgdGhpcyB0ZXN0IGluIGEKPiA+IG1vcmUg
Y2xldmVyIHdheSB3aGljaCBoYXMgemVybyBpbnN0ZWFkIG9mIHVwIHRvIHR3byBkaXZpc2lvbnMu
IFNvbWV0aGluZwo+ID4gbGlrZToKPiA+IAo+ID4gYnlwYXNzID0gKChzdGF0ZS0+cGVyaW9kICog
Y2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDICYmCj4gPiAJICAgc3RhdGUtPnBlcmlvZCAqIGNsa19y
YXRlIDwgTlNFQ19QRVJfU0VDICsgY2xrX3JhdGUpICYmCj4gPiAJICBzdGF0ZS0+ZW5hYmxlZCk7
Cj4gPiAKPiA+IEluIHRoZSBjb21taXQgbG9nIHlvdSB3cml0ZSB0aGUgbW90aXZhdGlvbiBmb3Ig
dXNpbmcgYnlwYXNzIGlzIHRoYXQgaXQKPiA+IGFsbG93cyB0byBpbXBsZW1lbnQgaGlnaGVyIGZy
ZXF1ZW5jeSB0aGVuIHdpdGggdGhlICJub3JtYWwiIG9wZXJhdGlvbi4KPiA+IEFzIHlvdSBkb24n
dCBza2lwIGNhbGN1bGF0aW5nIHRoZSBub3JtYWwgcGFyYW1ldGVycyByZXF1ZXN0aW5nIHN1Y2gg
YQo+ID4gaGlnaC1mcmVxdWVuY3kgc2V0dGluZyBlaXRoZXIgZXJyb3JzIG91dCBvciBkb2Vzbid0
IGNhdGNoIHRoZSBpbXBvc3NpYmxlCj4gPiByZXF1ZXN0LiBJbiBib3RoIGNhc2VzIHRoZXJlIGlz
IHNvbWV0aGluZyB0byBmaXguCj4gCj4gSXQncyB0aGUgbGF0dGVyLCBvdGhlcndpc2UgaXQgd291
bGRuJ3Qgd29yayBmb3IgbXkgY2FzZS4gSSdsbCBmaXggdGhlIGNoZWNrIGFuZCAKPiBza2lwIGFk
ZGl0aW9uYWwgbG9naWMuCgpHcmVhdC4KCj4gPiA+ICsKPiA+ID4gCj4gPiA+ICAJc3Bpbl9sb2Nr
KCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiA+ICAJY3RybCA9IHN1bjRpX3B3bV9yZWFkbChz
dW40aV9wd20sIFBXTV9DVFJMX1JFRyk7Cj4gPiA+IAo+ID4gPiBAQCAtMjczLDYgKzI5NywxMSBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCj4gPiA+
IHN0cnVjdCBwd21fZGV2aWNlICpwd20sPiAKPiA+ID4gIAkJY3RybCAmPSB+QklUX0NIKFBXTV9D
TEtfR0FUSU5HLCBwd20tPmh3cHdtKTsKPiA+ID4gIAkKPiA+ID4gIAl9Cj4gPiA+IAo+ID4gPiAr
CWlmIChieXBhc3MpCj4gPiA+ICsJCWN0cmwgfD0gQklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdw
d20pOwo+ID4gPiArCWVsc2UKPiA+ID4gKwkJY3RybCAmPSB+QklUX0NIKFBXTV9CWVBBU1MsIHB3
bS0+aHdwd20pOwo+ID4gPiArCj4gPiAKPiA+IERvZXMgc3dpdGNoaW5nIG9uIChvciBvZmYpIHRo
ZSBieXBhc3MgYml0IGNvbXBsZXRlIHRoZSBjdXJyZW50bHkgcnVubmluZwo+ID4gcGVyaW9kPwo+
IAo+IEkgZG9uJ3QgcmVhbGx5IGtub3cuIElmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIGl0IGp1
c3QgYnlwYXNzZXMgUFdNIGxvZ2ljIAo+IGNvbXBsZXRlbHksIHNvIEkgd291bGQgc2F5IGl0IGRv
ZXNuJ3QgY29tcGxldGUgdGhlIGN1cnJlbnRseSBydW5uaW5nIHBlcmlvZC4KClRoaXMgaXMgYSBi
dWcuIEl0J3MgcGFydCBvZiB0aGUgcHJvbWlzZSBvZiB0aGUgUFdNIEFQSSB0aGF0IHN0YXJ0ZWQK
cGVyaW9kcyBhcmUgY29tcGxldGVkLiBQbGVhc2UgYXQgbGVhc3QgZG9jdW1lbnQgdGhpcyBsaW1p
dGF0aW9uIGF0IHRoZQp0b3Agb2YgdGhlIGRyaXZlci4gZHJpdmVycy9wd20vcHdtLXNpZml2ZS5j
IGhhcyBhbiBleGFtcGxlIHlvdSBtaWdodAp3YW50IHRvIHVzZSBhcyBhIHRlbXBsYXRlLgoKQmVz
dCByZWdhcmRzClV3ZQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNv
bHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
