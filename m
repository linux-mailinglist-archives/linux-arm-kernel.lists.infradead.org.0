Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CF517400
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDPi/rRrR2t5lwJhIpiXnpY1eZpeDLDevVV8+D4yXpw=; b=YQOekWHpbNVGPi
	5OFRcjrvWG5vSBCK19BAN40hsr6UH8duM0lEImPZThWz6dd5S1+zZOaTJmOweUIIOofazNSPhOR/l
	wnnbhLp6vHCmNuXLWFez7LWeuRpz+bKt6u0hWxEyypHEsQCz2qrWa0LdL2hPfIZXq7RRGyBGTWH/F
	5a51M7H0eA5LyEWGEF0EmIC7/AeWCUP2w0CBfjKn4qTcZAEbzuWmxPQNGQCMg83CeSPg/BTjUUD+i
	IqmckPN2zXa2+4h+lwfphKl2XjKK1njcBHjI0V9sLNbAYuk+fQrFZQo4VCWAsue4NelW+7IzNmyZh
	y6lRx/ghzEDzjQymm+eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOI4F-0003Pu-GC; Wed, 08 May 2019 08:36:47 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOI46-0003DR-57
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:36:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D5F24FB03;
 Wed,  8 May 2019 10:36:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uXuJkEUUAiLW; Wed,  8 May 2019 10:36:22 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 403EA47B7D; Wed,  8 May 2019 10:36:22 +0200 (CEST)
Date: Wed, 8 May 2019 10:36:22 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v10 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
Message-ID: <20190508083622.GA3948@bogon.m.sigxcpu.org>
References: <cover.1557215047.git.agx@sigxcpu.org>
 <299e28042e0a24c0cde593873bdfb15e18187a92.1557215047.git.agx@sigxcpu.org>
 <20190507181223.GC15122@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507181223.GC15122@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_013638_370837_A34E4F67 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCk9uIFR1ZSwgTWF5IDA3LCAyMDE5IGF0IDA4OjEyOjIzUE0gKzAyMDAsIFNhbSBSYXZuYm9y
ZyB3cm90ZToKPiBIaSBHdWlkby4KPiAKPiBMb29rcyBnb29kIG5vdywgc3R1bWJsZWQgdXBvbiBh
IGZldyBkZXRhaWxzIEkgbWlzc2VkIGluIGxhc3Qgcm91bmQuCj4gV2l0aCB0aGVzZSBjb25zaWRl
cmVkIC8gZml4ZWQgeW91IGNhbiBhZGQgbXkKPiBSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3JnIDxz
YW1AcmF2bmJvcmcub3JnPgo+IAo+IAlTYW0KPiAKPiA+ICsjZGVmaW5lIENNKHgpCSgJCQkJXAo+
ID4gKwkJKCh4KSA8CTMyKT8weGUwfCgoeCktMTYpIDoJXAo+ID4gKwkJKCh4KSA8CTY0KT8weGMw
fCgoeCktMzIpIDoJXAo+ID4gKwkJKCh4KSA8IDEyOCk/MHg4MHwoKHgpLTY0KSA6CVwKPiA+ICsJ
CSgoeCkgLSAxMjgpKQo+ID4gKyNkZWZpbmUgQ04oeCkJKCgoeCkgPT0gMSk/MHgxZiA6ICgoKENO
X0JVRik+PigoeCktMSkpJjB4MWYpKQo+ID4gKyNkZWZpbmUgQ08oeCkJKChDT19CVUYpPj4oOC0o
eCkpJjB4MykKPiAKPiBBIGZldyBzcGFjZXMgYXJvdW5kIHRoZSBvcGVyYXRvcnMgbWF5IGhlbHAg
cmVhZGFiaWxpdHkgYSBsaXR0bGUuCj4gCj4gPiArc3RhdGljIGludCBwaHlfd3JpdGUoc3RydWN0
IHBoeSAqcGh5LCB1MzIgdmFsdWUsIHVuc2lnbmVkIGludCByZWcpCj4gPiArewo+ID4gKwlzdHJ1
Y3QgbWl4ZWxfZHBoeV9wcml2ICpwcml2ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiArCWlu
dCByZXQ7Cj4gPiArCj4gPiArCXJldCA9IHJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIHJlZywg
dmFsdWUpOwo+ID4gKwlpZiAocmV0IDwgMCkKPiA+ICsJCWRldl9lcnIoJnBoeS0+ZGV2LCAiRmFp
bGVkIHRvIHdyaXRlIERQSFkgcmVnICVkOiAlZCIsIHJlZywgcmV0KTsKPiAKPiBJIGhhdmUgcmVj
ZW50bHkgbGVhcm5lZCB0aGF0IG9uZSBoYXMgdG8gcmVtZW1iZXIgdHJhaWxpZ24gIlxuIi0gcGxl
YXNlCj4gYWRkLgo+IENoZWNrIGFsbCBvdGhlciBkZXZfeHh4IGFzIEkgbm90aWNlZCB0aGUgbmV3
bGluZSBpcyBtaXNzaW5nIGluIGEgZmV3Cj4gbW9yZSBwbGFjZXMuCgpBcmdoLi4uSSB0aG91Z2h0
IEkndmUgZml4ZWQgdGhlc2UgdXAgYWxyZWFkeSBidXQgdGhhdCB3YXMgaW4gdGhlCmNvcnJlc3Bv
bmRpbmcgTldMIGRyaXZlciBvbmx5LiBGaXhlZCBub3csIHRoYW5rcy4KCj4gCj4gPiArCj4gPiAr
CWRldl9kYmcoJnBoeS0+ZGV2LCAiaHNfY2xrL3JlZl9jbGs9JWxkLyVsZCDiqbAgJWQvJWRcbiIs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+
IAo+IFRoZXJlIHdhcyBhbm90aGVyIG9mIHRoZSBzeW1ib2xzIG15IHRlcm1pbmFsIGNhbm5vdCBz
aG93Lgo+IAoKVGhhbmtzISBJJ3ZlIGluY29ycG9yYXRlZCB5b3VyIHN1Z2dlc3Rpb25zIGFuZCB3
aWxsIHNlbmQgb3V0IGEgdjExIGJ5CnRoZSBlbmQgb2YgdGhlIHdlZWsgaW4gY2FzZSB0aGVyZSdz
IG1vcmUgY29tbWVudHMgY29taW5nIGluLgpDaGVlcnMsCiAtLSBHdWlkbwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
