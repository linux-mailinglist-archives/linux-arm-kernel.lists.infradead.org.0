Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D091C9904F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baZoghEpfTvXYgYSsI+XaswtdlEd3I4rbeHYoqXMXFM=; b=gqZUMFPC8mP429
	/eVfg0bm7qWG9ozrNo9BMGvu+eJ6TkJZwdIoAbF09ITCe1OjjkSlJdnKvudyrhItWV9J4yg5taoOi
	BfUdYzMsR8ir85pKniwMz1vwiqbeOwU7P6xkka1c1akDLm2UdlVaBpMoNbmJdPed+36VCmxA0iqEk
	7u91UMWi1oJ7bMaEKMGz5C51R63hgEfcZp9RtPoiXDZ+gfgCRRHQGL7DT53sUqLVa6K+YS/nr/Kze
	I31SHTg3Al19yeoRCOzeQzXRkj65M1n0q6bnLIYyglUp//YZ2z/xa0ksdOtEy10AQUtyViAUzr7ny
	49kv5h7C7hBDydQO4W9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jxI-00071O-Da; Thu, 22 Aug 2019 10:04:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jwy-00070H-3c
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:04:13 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i0jwj-00045d-JA; Thu, 22 Aug 2019 12:03:57 +0200
Message-ID: <1566468231.3653.8.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Arnd Bergmann
 <arnd@arndb.de>
Date: Thu, 22 Aug 2019 12:03:51 +0200
In-Reply-To: <20190821174208.GA9486@bogon.m.sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
 <CAK8P3a3Vrd+sttJrQwD-jA9p_egG4x-hc41eGK8H-_aVm-uoYw@mail.gmail.com>
 <20190813101057.GB10751@bogon.m.sigxcpu.org>
 <CAK8P3a1q9G8VKgNKh+6khzoW3bFTVR_Zorygy=Qqsq-PYzM4=g@mail.gmail.com>
 <20190821174208.GA9486@bogon.m.sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_030412_146795_DF9E3FD5 
X-CRM114-Status: GOOD (  23.16  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDE5OjQyICswMjAwLCBHdWlkbyBHw7xudGhlciB3cm90ZToK
PiBIaSwKPiBPbiBUdWUsIEF1ZyAxMywgMjAxOSBhdCAwMTowNzo1MlBNICswMjAwLCBBcm5kIEJl
cmdtYW5uIHdyb3RlOgo+ID4gT24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMTI6MTAgUE0gR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgQXVnIDEzLCAy
MDE5IGF0IDEwOjA4OjQ0QU0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiA+ID4gT24g
RnJpLCBBdWcgOSwgMjAxOSBhdCA2OjI0IFBNIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5v
cmc+IHdyb3RlOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIGFkZHMgYWxsIHRoZSBncHIgcmVn
aXN0ZXJzIGFuZCB0aGUgZGVmaW5lIG5lZWRlZCBmb3Igc2VsZWN0aW5nCj4gPiA+ID4gPiB0aGUg
aW5wdXQgc291cmNlIGluIHRoZSBpbXgtbndsIGRybSBicmlkZ2UuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gPiA+
ID4gPiArCj4gPiA+ID4gPiArI2RlZmluZSBJT01VWENfR1BSMCAgICAweDAwCj4gPiA+ID4gPiAr
I2RlZmluZSBJT01VWENfR1BSMSAgICAweDA0Cj4gPiA+ID4gPiArI2RlZmluZSBJT01VWENfR1BS
MiAgICAweDA4Cj4gPiA+ID4gPiArI2RlZmluZSBJT01VWENfR1BSMyAgICAweDBjCj4gPiA+ID4g
PiArI2RlZmluZSBJT01VWENfR1BSNCAgICAweDEwCj4gPiA+ID4gPiArI2RlZmluZSBJT01VWENf
R1BSNSAgICAweDE0Cj4gPiA+ID4gPiArI2RlZmluZSBJT01VWENfR1BSNiAgICAweDE4Cj4gPiA+
ID4gPiArI2RlZmluZSBJT01VWENfR1BSNyAgICAweDFjCj4gPiA+ID4gCj4gPiA+ID4gKG1vcmUg
b2YgdGhlIHNhbWUpCj4gPiA+ID4gCj4gPiA+ID4gaHVoPwo+ID4gPiAKPiA+ID4gVGhlc2UgYXJl
IHRoZSBuYW1lcyBmcm9tIHRoZSBpbXg4TVEgcmVmZXJlbmNlIG1hbnVhbCAoZ2VuZXJhbCBwdXJw
b3NlCj4gPiA+IHJlZ2lzdGVycywgdGhleSBsdW1wIHRvZ2V0aGVyIGFsbCBzb3J0cyBvZiB0aGlu
Z3MpLCBpdCdzIHRoZSBzYW1lIG9uCj4gPiA+IGlteDYvaW14Nyk6Cj4gPiA+IAo+ID4gPiAgICAg
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMv
bGludXguZ2l0L3RyZWUvaW5jbHVkZS9saW51eC9tZmQvc3lzY29uL2lteDZxLWlvbXV4Yy1ncHIu
aAo+ID4gPiAgICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvaW5jbHVkZS9saW51eC9tZmQvc3lzY29uL2lteDct
aW9tdXhjLWdwci5oCj4gPiA+IAo+ID4gPiA+ID4gKy8qIGkuTVg4TXEgaW9tdXggZ3ByIHJlZ2lz
dGVyIGZpZWxkIGRlZmluZXMgKi8KPiA+ID4gPiA+ICsjZGVmaW5lIElNWDhNUV9HUFIxM19NSVBJ
X01VWF9TRUwgICAgICAgICAgICAgIEJJVCgyKQo+ID4gPiA+IAo+ID4gPiA+IEkgdGhpbmsgdGhp
cyBkZWZpbmUgc2hvdWxkIHByb2JhYmx5IGJlIGxvY2FsIHRvIHRoZSBwaW5jdHJsIGRyaXZlciwg
dG8KPiA+ID4gPiBlbnN1cmUgdGhhdCBubyBvdGhlciBkcml2ZXJzIGZpZGRsZSB3aXRoIHRoZSBy
ZWdpc3RlcnMgbWFudWFsbHkuCj4gPiA+IAo+ID4gPiBUaGUgcHVycG9zZSBvZiB0aGVzZSBiaXRz
IGlzIGZvciBhIGRyaXZlciB0byBmaWRkbGUgd2l0aCB0aGVtIHRvIHNlbGVjdAo+ID4gPiB0aGUg
aW5wdXQgc291cmNlLiBTaW1pbGFyIG9uIGlteDcgaXQncyBhbHJlYWR5IHVzZWQgZm9yIGUuZy4g
dGhlIHBoeQo+ID4gPiByZWZjbGsgaW4gdGhlIHBjaSBjb250cm9sbGVyOgo+ID4gPiAKPiA+ID4g
ICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1pbXg2LmMj
bjYzOAo+ID4gCj4gPiBUaGF0IG9uZSBzaG91bGQgbGlrZWx5IHVzZSBlaXRoZXIgdGhlIGNsayBp
bnRlcmZhY2Ugb3IgdGhlIHBoeQo+ID4gaW50ZXJmYWNlIGluc3RlYWQuCj4gPiAKPiA+ID4gVGhl
IEdQUnMgYXJlIG5vdCBhYm91dCBwYWQgY29uZmlndXJhdGlvbiBidXQgZ2F0aGVyIGFsbCBzb3J0
cyBvZiB0aGluZ3MKPiA+ID4gKHNlY3Rpb24gOC4yLjQgb2YgdGhlIGlteDhtcSByZWZlcmVuY2Ug
bWFudWFsKTogcGNpZSBzZXR1cCwgZHNpIHJlbGF0ZWQKPiA+ID4gYml0cyBzbyBJIGRvbid0IHRo
aW5rIHRoaXMgc2hvdWxkIGJlIGRvbmUgdmlhIGEgcGluY3RybAo+ID4gPiBkcml2ZXIuIFNob3Vs
ZCB3ZSBoYW5kbGUgdGhhdCBkaWZmZXJlbnRseSB0aGFuIG9uIGlteDYvNz8KPiA+IAo+ID4gSXQg
d291bGQgYmUgbmljZSB0byBmaXggdGhlIGV4aXN0aW5nIGNvZGUgYXMgd2VsbCwgYnV0IGZvciB0
aGUgbW9tZW50LAo+ID4gSSBvbmx5IHRoaW5rIHdlIHNob3VsZCBub3QgYWRkIG1vcmUgb2YgdGhh
dC4KPiA+IAo+ID4gR2VuZXJhbGx5IHNwZWFraW5nLCB3ZSBjYW4gdXNlIHN5c2NvbiB0byBkbyBy
YW5kb20gdGhpbmdzIHRoYXQgZG9uJ3QKPiA+IGhhdmUgYSBzdWJzeXN0ZW0gb2YgdGhlaXIgb3du
LCBidXQgd2Ugc2hvdWxkIG5vdCB1c2UgaXQgdG8gZG8gdGhpbmdzCj4gPiB0aGF0IGhhdmUgYW4g
ZXhpc3RpbmcgZHJpdmVyIGZyYW1ld29yayBsaWtlIHBpbmN0cmwsIGNsb2NrLCByZXNldCwgcGh5
Cj4gPiBldGMuCj4gCj4gU2luY2UgaXQncyBub3QgYW4gZXh0ZXJuYWwgcGluIGkgb3B0ZWQgdG8g
dXNlIE1VWF9NTUlPIGluc3RlYWQgd2hpY2gKPiBzZWVtcyBsaWtlIGEgZ29vZCBmaXQgaGVyZS4g
RG9lcyB0aGF0IG1ha2Ugc2Vuc2U/CgpZZXMsIEkgYWdyZWUuIFRoZSBpLk1YNiBkaXNwbGF5IHN1
YnN5c3RlbSBwcmVkYXRlcyB0aGUgbXV4IGZyYW1ld29yaywKb3RoZXJ3aXNlIEkgd291bGQgaGF2
ZSB1c2VkIGl0IGZvciB0aGUgTFZEUyBhbmQgSERNSSBtdXhlcyBpbiB0aGUgZmlyc3QKcGxhY2Uu
IFdlIHNob3VsZCBwcm9iYWJseSBzd2l0Y2ggaW14LWRybSBvdmVyIGFzIHdlbGwsIGluIGEgYmFj
a3dhcmRzCmNvbXBhdGlibGUgZmFzaGlvbi4gVGhlICZtdXggZGVmaW5pdGlvbnMgYXJlIGFscmVh
ZHkgdGhlcmUgaW4KYXJjaC9hcm0vYm9vdC9kdHMvaW14NnEuZHRzaS4KCnJlZ2FyZHMKUGhpbGlw
cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
