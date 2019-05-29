Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423162D7C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGFX4amd67sQ4Fn9QM2TrgiRV63/9PjLXrWxG7ofyBA=; b=ibsJR7pCYutH9w
	tY+OU1uj+POyiYATQnIVepTyKPlwXA11i1/59q3zL5spyKp8SKHyvBkFGcQx8xivDgCmzKaJbCsaC
	lyKuCDdDBhL8wP+HivVE5R2ETzWbqH51BcwuyCf3TvtVqdDr/pTyjgFs380lTNvnXn+2tmSwuPcLr
	jiFpFQdgUvM80EL3E/iSyfncu18GOJjByPMo6/RhemL6An0Y0mtz8xZoMY8507mliujYnnak5gCO3
	BMdV9KKtAaOeyj46EYbZYoBL5K1CnYy7/qJqnuqA6hb0KntFiE30Qwl4rJOx2xdgnqcezMJx/Qu5N
	NHz0RQr+H7OhdV2atT1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtvp-0003MW-Tq; Wed, 29 May 2019 08:27:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtvi-0003MD-DD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:27:28 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hVtvf-0006WG-1t; Wed, 29 May 2019 10:27:23 +0200
Message-ID: <1559118442.4039.17.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB
 charger chip
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 29 May 2019 10:27:22 +0200
In-Reply-To: <20190529071843.24767-1-andrew.smirnov@gmail.com>
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012726_602973_D34BD121 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAyOS4wNS4yMDE5LCAwMDoxOCAtMDcwMCBzY2hyaWViIEFuZHJleSBT
bWlybm92Ogo+IEFkZCBub2RlIGZvciBVQ1MxMDAyIFVTQiBjaGFyZ2VyIGNoaXAgY29ubmVjdGVk
IHRvIGZyb250IHBhbmVsIFVTQiBhbmQKPiByZXBsYWNlICJyZWd1bGF0b3ItZml4ZWQiIHByZXZp
b3VzbHkgdXNlZCB0byBjb250cm9sIFZCVVMuCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBT
dGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHJleSBT
bWlybm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5jb20+Cj4gPiBDYzogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPgo+ID4gQ2M6IENocmlzIEhlYWx5IDxjcGhlYWx5QGdtYWlsLmNvbT4K
PiA+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gPiBDYzogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCgpGV0lX
OgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKPiAt
LS0KPiAKPiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4gCj4gwqDCoMKgwqAtIEFkZGVkIEdQSU8gaG9n
IGNvbmZpZ3VyYXRpb24gdG8gcHV0IFVDUzEwMDIgaW50byBjb3JyZWN0IG1vZGUKPiDCoMKgwqDC
oMKgwqBldmVuIGJlZm9yZSBpdHMgZHJpdmVyIHRha2VzIG92ZXIuIFRoZSBjb2RlIGZvciB0aGF0
IGlzIHRha2VuCj4gwqDCoMKgwqDCoMKgZnJvbSBzaW1pbGFyIHBhdGNoIGZyb20gTHVjYXMsIHNv
IEkgYWRkZWQgaGlzIFNpZ25lZC1vZmYtYnkgYXMKPiDCoMKgwqDCoMKgwqB3ZWxsLgo+IAo+IFt2
MV0gbG9yZS5rZXJuZWwub3JnL3IvMjAxOTA1MjIwNzEyMjcuMzE0ODgtMS1hbmRyZXcuc21pcm5v
dkBnbWFpbC5jb20KPiAKPiDCoGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRz
aSB8IDc3ICsrKysrKysrKysrKysrKysrKystLS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1OSBp
bnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC16aWktcmR1Mi5kdHNpCj4gaW5kZXggOTNiZTAwYTYwYzg4Li4wN2UyMWQxZTViNGMgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpCj4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpCj4gQEAgLTYwLDE4ICs2MCw2
IEBACj4gPiDCoAkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+IMKgCX07Cj4gwqAKPiA+IC0JcmVn
XzVwMHZfdXNlcl91c2I6IHJlZ3VsYXRvci01cDB2LXVzZXItdXNiIHsKPiA+IC0JCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+IC0JCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gPiAtCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfcmVnX3VzZXJfdXNiPjsKPiA+IC0JCXZpbi1z
dXBwbHkgPSA8JnJlZ181cDB2X21haW4+Owo+ID4gLQkJcmVndWxhdG9yLW5hbWUgPSAiNVZfVVNF
Ul9VU0IiOwo+ID4gLQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiAt
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+IC0JCWdwaW8gPSA8Jmdw
aW8zIDIyIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiAtCQlzdGFydHVwLWRlbGF5LXVzID0gPDEwMDA+
Owo+ID4gLQl9Owo+IC0KPiA+IMKgCXJlZ18zcDN2X3BtaWM6IHJlZ3VsYXRvci0zcDN2LXBtaWMg
ewo+ID4gwqAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+IMKgCQl2aW4tc3Vw
cGx5ID0gPCZyZWdfMTJwMHY+Owo+IEBAIC0zMzEsNiArMzE5LDM5IEBACj4gPiDCoAl9Owo+IMKg
fTsKPiDCoAo+ICsmZ3BpbzMgewo+ID4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4g
KwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZ3BpbzNfaG9nPjsKPiArCj4gPiArCXVzYi1lbXVsYXRp
b24gewo+ID4gKwkJZ3Bpby1ob2c7Cj4gPiArCQlncGlvcyA9IDwxOSBHUElPX0FDVElWRV9ISUdI
PjsKPiA+ICsJCW91dHB1dC1sb3c7Cj4gPiArCQlsaW5lLW5hbWUgPSAidXNiLWVtdWxhdGlvbiI7
Cj4gPiArCX07Cj4gKwo+ID4gKwl1c2ItbW9kZTEgewo+ID4gKwkJZ3Bpby1ob2c7Cj4gPiArCQln
cGlvcyA9IDwyMCBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICsJCW91dHB1dC1oaWdoOwo+ID4gKwkJ
bGluZS1uYW1lID0gInVzYi1tb2RlMSI7Cj4gPiArCX07Cj4gKwo+ID4gKwl1c2ItcHdyIHsKPiA+
ICsJCWdwaW8taG9nOwo+ID4gKwkJZ3Bpb3MgPSA8MjIgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICsJ
CW91dHB1dC1oaWdoOwo+ID4gKwkJbGluZS1uYW1lID0gInVzYi1wd3ItY3RybC1lbi1uIjsKPiA+
ICsJfTsKPiArCj4gPiArCXVzYi1tb2RlMiB7Cj4gPiArCQlncGlvLWhvZzsKPiA+ICsJCWdwaW9z
ID0gPDIzIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gKwkJb3V0cHV0LWhpZ2g7Cj4gPiArCQlsaW5l
LW5hbWUgPSAidXNiLW1vZGUyIjsKPiA+ICsJfTsKPiArfTsKPiArCj4gwqAmaTJjMSB7Cj4gPiDC
oAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gwqAJcGluY3RybC0wID0gPCZwaW5jdHJs
X2kyYzE+Owo+IEBAIC01OTAsNiArNjExLDE2IEBACj4gPiDCoAkJc3RhdHVzID0gImRpc2FibGVk
IjsKPiA+IMKgCX07Cj4gwqAKPiA+ID4gKwlyZWdfNXAwdl91c2VyX3VzYjogY2hhcmdlckAzMiB7
Cj4gPiArCQljb21wYXRpYmxlID0gIm1pY3JvY2hpcCx1Y3MxMDAyIjsKPiA+ICsJCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdWNzMTAwMl9w
aW5zPjsKPiA+ICsJCXJlZyA9IDwweDMyPjsKPiA+ICsJCWludGVycnVwdHMtZXh0ZW5kZWQgPSA8
JmdwaW81IDIgSVJRX1RZUEVfRURHRV9CT1RIPiwKPiA+ICsJCQkJwqDCoMKgwqDCoMKgPCZncGlv
MyAyMSBJUlFfVFlQRV9FREdFX0JPVEg+Owo+ID4gKwkJaW50ZXJydXB0LW5hbWVzID0gImFfZGV0
IiwgImFsZXJ0IjsKPiA+ICsJfTsKPiArCj4gPiA+IMKgCWhwYTE6IGFtcEA2MCB7Cj4gPiDCoAkJ
Y29tcGF0aWJsZSA9ICJ0aSx0cGE2MTMwYTIiOwo+ID4gwqAJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gQEAgLTkzNSw2ICs5NjYsMTUgQEAKPiA+IMKgCQk+Owo+ID4gwqAJfTsKPiDCoAo+
ID4gKwlwaW5jdHJsX2dwaW8zX2hvZzogZ3BpbzNob2dncnAgewo+ID4gKwkJZnNsLHBpbnMgPSA8
Cj4gPiA+ICsJCQlNWDZRRExfUEFEX0VJTV9EMTlfX0dQSU8zX0lPMTkJCTB4MWIwYjAKPiA+ID4g
KwkJCU1YNlFETF9QQURfRUlNX0QyMF9fR1BJTzNfSU8yMAkJMHgxYjBiMAo+ID4gPiArCQkJTVg2
UURMX1BBRF9FSU1fRDIyX19HUElPM19JTzIyCQkweDFiMGIwCj4gPiA+ICsJCQlNWDZRRExfUEFE
X0VJTV9EMjNfX0dQSU8zX0lPMjMJCTB4MWIwYjAKPiA+ICsJCT47Cj4gPiArCX07Cj4gKwo+ID4g
wqAJcGluY3RybF9pMmMxOiBpMmMxZ3JwIHsKPiA+IMKgCQlmc2wscGlucyA9IDwKPiA+ID4gwqAJ
CQlNWDZRRExfUEFEX0NTSTBfREFUOF9fSTJDMV9TREEJCTB4NDAwMWI4YjEKPiBAQCAtOTgyLDEy
ICsxMDIyLDYgQEAKPiA+IMKgCQk+Owo+ID4gwqAJfTsKPiDCoAo+ID4gLQlwaW5jdHJsX3JlZ191
c2VyX3VzYjogdXNib3RnZ3JwIHsKPiA+IC0JCWZzbCxwaW5zID0gPAo+ID4gPiAtCQkJTVg2UURM
X1BBRF9FSU1fRDIyX19HUElPM19JTzIyCQkweDQwMDAwMDM4Cj4gPiAtCQk+Owo+ID4gLQl9Owo+
IC0KPiA+IMKgCXBpbmN0cmxfcm1paV9waHlfaXJxOiBwaHlncnAgewo+ID4gwqAJCWZzbCxwaW5z
ID0gPAo+ID4gPiDCoAkJCU1YNlFETF9QQURfRUlNX0QzMF9fR1BJTzNfSU8zMAkJMHg0MDAxMDAw
MAo+IEBAIC0xMDQ3LDYgKzEwODEsMTMgQEAKPiA+IMKgCQk+Owo+ID4gwqAJfTsKPiDCoAo+ID4g
KwlwaW5jdHJsX3VjczEwMDJfcGluczogdWNzMTAwMmdycCB7Cj4gPiArCQlmc2wscGlucyA9IDwK
PiA+ID4gKwkJCU1YNlFETF9QQURfRUlNX0EyNV9fR1BJTzVfSU8wMsKgwqAJMHgxYjBiMAo+ID4g
PiArCQkJTVg2UURMX1BBRF9FSU1fRDIxX19HUElPM19JTzIxwqDCoAkweDFiMGIwCj4gPiArCQk+
Owo+ID4gKwl9Owo+ICsKPiA+IMKgCXBpbmN0cmxfdXNkaGMyOiB1c2RoYzJncnAgewo+ID4gwqAJ
CWZzbCxwaW5zID0gPAo+ID4gPiDCoAkJCU1YNlFETF9QQURfU0QyX0NNRF9fU0QyX0NNRAkJMHgx
MDA1OQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
