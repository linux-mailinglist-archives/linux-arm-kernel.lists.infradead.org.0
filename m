Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEFC18BE0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:31:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1S0OuE+KPkMzV+tgDgREZTPkPXq7EOT0gAidYHOL90Y=; b=XzzeXb3X1R3dUx
	FiIF6jrGKQxN6TMKAKFBIAhx664TqUY07aGlgNokAQb8zB/edA5ZTUwjzICmdSVApATbMhvTeGW00
	lqB+CSJHgpp8I6nylg5ROCjOuFAmBC5hr3hZCatlfPeQe+BBruItbj4nl1UTXrpGiHYoHj+a31QxN
	rNFvYPYaofZHiUyJvLb9yfnwq8Myx4VkhEg7pSQgOsSHussJth8Wyv+n/QJBv4uSzsEfa5ZBsL8Cm
	OLlY1pmCjlQTJzc/VtPvqLrT97qtViECA/+GI/ZqKG/iBLrhW3Lryq0mA4b5TCoS24QorySX5YLl2
	j0RNm/RZKkzpBNd0FHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEz10-0003ZO-An; Thu, 19 Mar 2020 17:31:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEz0o-0003X8-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:31:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEz0K-0003KX-8i; Thu, 19 Mar 2020 18:30:48 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEz0H-0003li-AB; Thu, 19 Mar 2020 18:30:45 +0100
Date: Thu, 19 Mar 2020 18:30:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200319173045.ystpijvwtyvil2vq@pengutronix.de>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
 <20200319065039.szhh5dm6v3ejwijd@pengutronix.de>
 <20200319163700.GA3354541@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319163700.GA3354541@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_103119_175481_2F40BF8D 
X-CRM114-Status: GOOD (  42.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Paul Cercueil <paul@crapouillou.net>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Scott Branden <sbranden@broadcom.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBUaHUsIE1hciAxOSwgMjAyMCBhdCAwNTozNzowMFBNICswMTAwLCBUaGllcnJ5
IFJlZGluZyB3cm90ZToKPiBPbiBUaHUsIE1hciAxOSwgMjAyMCBhdCAwNzo1MDozOUFNICswMTAw
LCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0IDEx
OjU5OjUzUE0gKzAxMDAsIFRoaWVycnkgUmVkaW5nIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE1hciAx
NywgMjAyMCBhdCAxMDowMDo0MlBNICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+
ID4gPiBIYXZpbmcgc2FpZCB0aGlzIEkgdGhpbmsgKGluZGVwZW5kZW50IG9mIHRoZSBxdWVzdGlv
biBpZiAiaW52ZXJzZWQiCj4gPiA+ID4gZXhpc3RzKSB1c2luZyB0d28gc2ltaWxhciB0ZXJtcyBm
b3IgdGhlIHNhbWUgdGhpbmcganVzdCByZXN1bHRzIGluCj4gPiA+ID4gY29uZnVzaW9uLiBJIGhp
dCB0aGF0IGluIHRoZSBwYXN0IGFscmVhZHkgYW5kIEkgbGlrZSBpdCBiZWluZyBhZGRyZXNzZWQu
Cj4gPiA+IAo+ID4gPiBJIGRvbid0IGtub3cuIEl0J3MgcHJldHR5IGNvbW1vbiB0byB1c2UgZGlm
ZmVyZW50IHdvcmRzIGZvciB0aGUgc2FtZQo+ID4gPiB0aGluZy4gVGhleSdyZSBjYWxsZWQgc3lu
b255bXMuCj4gPiAKPiA+IEluIGxpdGVyYXR1cmUgeWVzLCBJIGFncmVlLiBJbiBhIG5vdmVsIGl0
IGlzIGFubm95aW5nIHRvIHJlcGVhdCB0aGUgc2FtZQo+ID4gd29yZHMgb3ZlciBhbmQgb3ZlciBh
Z2FpbiBhbmQgc29tZSB2YXJpYXRpb24gaXMgZ29vZC4gSW4gcHJvZ3JhbW1pbmcKPiA+IGhvd2V2
ZXIgdGhlIGdvYWwgaXMgYSBkaWZmZXJlbnQgb25lLiBUaGVyZSB0aGUgZ29hbCBzaG91bGQgYmUg
dG8gYmUKPiA+IHByZWNpc2UgYW5kIGNvbnNpc3RlbnQuCj4gCj4gV2UgYWxzbyBuZWVkIHRvIG1h
a2Ugc3VyZSB0aGF0IHRoaW5ncyBkb24ndCBicmVhay4KCkFuZCBJJ20gZW50aXJlbHkgb24geW91
ciBzaWRlIGhlcmUuCgo+IEl0J3MgYSB2ZXJ5IGJhZCBpZGVhIHRvIGhhdmUgYSBtYWNybyB3aXRo
IHRoZSBzYW1lIG5hbWUgYXMgYW4gZW51bQo+IHZhbHVlIGZvciByZWFzb25zIEkgc3RhdGVkIGJl
Zm9yZS4gSSB0aGluayB0aGF0J3MgdGhlIG1vc3QgaW1wb3J0YW50Cj4gdGhpbmcgaGVyZS4KCllv
dSBtaWdodCBoYXZlIG1pc3NlZCBpdCwgYnV0IHRoYXQncyBPSyBmb3IgbWUsIHRvby4gQW5kIG5v
dGUgdGhhdCBhZnRlcgphcHBseWluZyB0aGUgd2hvbGUgc2VyaWVzIHRoZSBlbnVtIGlzIGdvbmUg
YW5kIHNvIHRoZSBwcm9ibGVtLiAoRmlyc3QKaHVuayBvZiBpbmNsdWRlL2xpbnV4L3B3bS5oIGlu
IHBhdGNoIDUuKQoKPiBBbHNvLCBpZiBpbnZlcnNlZCBpcyBhIHN5bm9ueW0gb2YgaW52ZXJ0ZWQs
IHdlIGRvbid0IGxvb3NlIGFueSBwcmVjaXNpb24KPiBhdCBhbGwuCgpncmVwIGRvZXNuJ3Qga25v
dyBhYm91dCBzeW5vbnltcywgc28gaWYgSSBncmVwIGZvciBzdHVmZiBhYm91dCBpbnZlcnRlZApQ
V01zIGluIHRoZSBrZXJuZWwgSSBjb21wbGV0ZWx5IG1pc3Mgb25lIGhhbGYgYXMgaXQncyBjYWxs
ZWQgaW52ZXJzZWQKdGhlcmUuIChZZWFoIHN1cmUsIEkgY2FuIGFsc28gZ3JlcCBmb3IgImludmVy
c2VkfGludmVydGVkIiwgYnV0IHRoZXJlZm9yCkkgaGF2ZSB0byBrbm93IGZpcnN0IHRoYXQgYm90
aCBhcmUgdXNlZCBpbnRlcmNoYW5nYWJsZSBoZXJlLikKClRoYXQncyBhIGJpdCBsaWtlIGEgc2No
ZW1hdGljIHRoYXQgaGFzICJSRVNFVCMiIGluIG9uZSBwbGFjZSBhbmQKIm5SRVNFVCIgaW4gYW4g
b3RoZXIuIElmIHlvdSBzdHVtYmxlIGFib3V0IHRoYXQgeW91IHdvbmRlciBpZiB0aGV5IGFyZQp0
d28gZGlmZmVyZW50IG5hbWVzIGZvciB0aGUgc2FtZSBzaWduYWwgb3IgaWYgdGhleSBhcmUgYWN0
dWFsbHkgdHdvCmRpZmZlcmVudCBvbmVzLgoKSGF2ZSB5b3UgZXZlciByZWFkIGEgc3BlY2lmaWNh
dGlvbiB0aGF0IGRlc2NyaWJlZCBzb21lIHByb3BlcnR5LCBnYXZlIGl0CmEgbmFtZSBhbmQgdGhl
biBsYXRlciB1c2VkIGEgc3lub255bSB0byBkZXNjcmliZSBpdD8gSW4gbXkgZXllcyB0aGF0J3Mg
YQpiYWQgaWRlYS4KCj4gQWxsIHlvdSBoYXZlIHRvIHJlbWVtYmVyIGlzIHRoYXQgeW91J3JlIGRl
YWxpbmcgd2l0aCBhIGRldmljZQo+IHRyZWUgY29uc3RhbnQgaW4gb25lIGNhc2UgYW5kIGFuIEFQ
SSBlbnVtZXJhdGlvbiBpbiB0aGUgb3RoZXIuCgpFdmVyeXRoaW5nIHlvdSBuZWVkIHRvIHJlbWVt
YmVyIChvciBsZWFybikgYWJvdXQgYSBzdWJzeXN0ZW0gbWFrZXMgaXQKaGFyZGVyIHdvcmsgd2l0
aCBpdC4KIAo+IFNvIEkgdGhpbmsgdGhlIGN1cnJlbnQgZm9ybSBpcyBhY3R1YWxseSBtb3JlIHBy
ZWNpc2UsIHRob3VnaCBJIGd1ZXNzIGl0Cj4gY291bGQgYmUgY29uZnVzaW5nIGlmIHlvdSBkb24n
dCBjYXJlIGFib3V0IHRoZSBkaWZmZXJlbmNlLgoKSWYgdGhlcmUgaXMgYSB0ZWNobmljYWwgbmVl
ZCB0byBoYXZlIGRpZmZlcmVudCBuYW1lcyB0aGF0J3Mgb25lIHRoaW5nLgpCdXQgdXNpbmcgc3lu
b255bXMgdG8gZGlmZmVyZW50aWF0ZSB0aGVtIGlzIG5vdCBvcHRpbWFsLiBUaGVuIHBsZWFzZQps
ZXQncyBoYXZlIG5hbWVzIHdoZXJlIGxvb2tpbmcgYXQgdGhlIGlkZW50aWZpZXIgbWFrZXMgaXQg
b2J2aW91cyB3aGljaAppcyBmb3IgdGhlIGRldmljZSB0cmVlcyBhbmQgd2hpY2ggZm9yIHRoZSBB
UEkgZW51bS4KCj4gPiA+ID4gPiBBbmQgYXMgeW91IG5vdGVkIGluIHRoZSBjb3ZlciBsZXR0ZXIs
IHRoZXJlJ3MgYSBjb25mbGljdCBiZXR3ZWVuIHRoZQo+ID4gPiA+ID4gbWFjcm8gZGVmaW5lZCBp
biBkdC1iaW5kaW5ncy9wd20vcHdtLnR4dC4gSWYgdGhleSBlbmQgdXAgYmVpbmcgaW5jbHVkZWQK
PiA+ID4gPiA+IGluIHRoZSB3cm9uZyBvcmRlciB5b3UnbGwgZ2V0IGEgY29tcGlsZSBlcnJvci4K
PiA+ID4gPiAKPiA+ID4gPiBUaGVyZSBhcmUgYWxzbyBvdGhlciBzeW1ib2xzIHRoYXQgZXhpc3Qg
dHdpY2UgKEdQSU9fQUNUSVZFX0hJR0ggd2FzIHRoZQo+ID4gPiA+IGZpcnN0IHRvIGNvbWUgdG8g
bXkgbWluZCkuIEknbSBub3QgYXdhcmUgb2YgYW55IHByb2JsZW1zIHJlbGF0ZWQgdG8KPiA+ID4g
PiB0aGVzZS4gV2hhdCBhbSBJIG1pc3Npbmc/Cj4gPiA+IAo+ID4gPiBUaGVyZSdzIGN1cnJlbnRs
eSBubyBwcm9ibGVtLCBvYnZpb3VzbHkuIEJ1dCBpZiBmb3Igc29tZSByZWFzb24gdGhlCj4gPiA+
IGluY2x1ZGUgZmlsZXMgZW5kIHVwIGJlaW5nIGluY2x1ZGVkIGluIGEgZGlmZmVyZW50IG9yZGVy
IChpLmUuIHRoZQo+ID4gPiBkdC1iaW5kaW5ncyBoZWFkZXIgaXMgaW5jbHVkZWQgYmVmb3JlIGxp
bnV4L3B3bS5oKSB0aGVuIHRoZSBtYWNybyB3aWxsCj4gPiA+IGJlIGV2YWx1YXRlZCBhbmQgcmVz
dWx0IGluIHNvbWV0aGluZyBsaWtlOgo+ID4gPiAKPiA+ID4gCWVudW0gcHdtX3BvbGFyaXR5IHsK
PiA+ID4gCQlQV01fUE9MQVJJVFlfTk9STUFMLAo+ID4gPiAJCTEsCj4gPiA+IAl9Owo+ID4gPiAK
PiA+ID4gYW5kIHRoYXQncyBub3QgdmFsaWQgQywgc28gd2lsbCBjYXVzZSBhIGJ1aWxkIGVycm9y
Lgo+ID4gCj4gPiBJIGFkbWl0IEkgZGlkbid0IGxvb2sgY2xvc2VseSBoZXJlIGFuZCBJIGFzc3Vt
ZSB5b3UgYXJlIHJpZ2h0LiBJZiBJCj4gPiB1bmRlcnN0YW5kIE9sZWtzYW5kciByaWdodCB0aGlz
IGlzIG9ubHkgYW4gaW50ZXJtZWRpYXRlIHN0ZXAgYW5kIHdoZW4KPiA+IHRoZSBzZXJpZXMgaXMg
YXBwbGllZCBjb21wbGV0ZWx5IHRoaXMgaXNzdWUgaXMgZ29uZS4gU3RpbGwgaXQgbWlnaHQgYmUK
PiA+IHdvcnRoIHRvIGltcHJvdmUgdGhlIHNlcmllcyBoZXJlLgo+IAo+IAkkIGdjYyAtbyAvZGV2
L251bGwgLXggYyAtIDw8LSBFT0YKPiAJPiAgICAgI2RlZmluZSBQV01fUE9MQVJJVFlfSU5WRVJU
RUQgKDEgPDwgMCkKPiAJPgo+IAk+ICAgICBlbnVtIHB3bV9wb2xhcml0eSB7Cj4gCT4gICAgICAg
ICBQV01fUE9MQVJJVFlfTk9STUFMLAo+IAk+ICAgICAgICAgUFdNX1BPTEFSSVRZX0lOVkVSVEVE
LAo+IAk+ICAgICB9Owo+IAk+IEVPRgo+IAk8c3RkaW4+OjE6MzU6IGVycm9yOiBleHBlY3RlZCBp
ZGVudGlmaWVyIGJlZm9yZSDigJgo4oCZIHRva2VuCj4gCTxzdGRpbj46NTo5OiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYUFdNX1BPTEFSSVRZX0lOVkVSVEVE4oCZCj4gCj4gUS5FLkQu
CgpJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHlvdSBwcm92ZWQgc29tZXRoaW5nIGhlcmUuIEkgZGlk
bid0IGRvdWJ0IHRoaXMuCgo+ID4gTXkgb3JpZ2luYWwgcXVlc3Rpb24gd2FzIGFib3V0IHNpbWls
YXIgcHJvYmxlbXMgd2l0aCBHUElPX0FDVElWRV9ISUdILgo+ID4gQXJlIHlvdSBhd2FyZSBvZiBw
cm9ibGVtcyB0aGVyZT8KPiAKPiBUaGUgcHJvYmxlbSBleGlzdHMgdGhlcmUgZXF1YWxseS4gV2Un
cmUgcHJvYmFibHkgbm90IHJ1bm5pbmcgaW50byBpdAo+IGJlY2F1c2UgZHJpdmVycyBkb24ndCBl
bmQgdXAgaW5jbHVkaW5nIGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oIGFuZAo+IGluY2x1ZGUvbGlu
dXgvZ3Bpby9tYWNoaW5lLmggYXQgdGhlIHNhbWUgdGltZS4gT3IgdGhleSBlbmQgdXAgYWx3YXlz
Cj4gaW5jbHVkaW5nIHRoZW0gaW4gdGhlIHJpZ2h0IG9yZGVyLgoKT2gsIHRoYXQncyB3b3JzZSB0
aGFuIEkgZXhwZWN0ZWQuIFRoZXJlIGFyZSB0d28gLmMgZmlsZXMgdGhhdCBpbmNsdWRlCmR0LWJp
bmRpbmdzL2dwaW8vZ3Bpby5oOgoKCWRyaXZlcnMvcnRjL3J0Yy1vbWFwLmMKCWRyaXZlcnMvdHR5
L3NlcmlhbC9vbWFwLXNlcmlhbC5jCgpTbyB0aGUgZGVmaW5pdGlvbiBpc24ndCBldmVuIHVzZWQg
aW4gdGhlIGdwaW8gY29yZSB0byBwYXJzZSBkdC1zdHVmZi4KKEFuZCBib3RoIGZpbGVzIGRvbid0
IHVzZSBhbnkgZGVmaW5pdGlvbiBvZiB0aGF0IGZpbGUgOi18KQoKPiBGb3IgUFdNIHRoZSBzaXR1
YXRpb24gaXMgc2xpZ2h0bHkgbW9yZSBjb21wbGljYXRlZCBiZWNhdXNlIHdlIG9ubHkgaGF2ZQo+
IG9uZSBoZWFkZXIgZm9yIHRoZSBrZXJuZWwgQVBJLCBzbyB0aGUgbGlrZWxpaG9vZCBvZiBpbmNs
dWRpbmcgaXQgYWxvbmcKPiB3aXRoIHRoZSBkdC1iaW5kaW5ncyBoZWFkZXIgaXMgaW5jcmVhc2Vk
IGNvbXBhcmVkIHRvIEdQSU8uCgpJZiBhIGNvbnN1bWVyIG9yIHByb3ZpZGVyIGluY2x1ZGVzIHRo
ZSBkdC1iaW5kaW5ncyBmaWxlIHRoZXJlIGlzCnNvbWV0aGluZyBmaXNoeS4gKFN0aWxsIGNhdGNo
aW5nIHRoaXMgd2l0aCBhIGNvbXBpbGVyIG1lc3NhZ2UgYmV0dGVyCnRoYW4gImV4cGVjdGVkIGlk
ZW50aWZpZXIgYmVmb3JlIOKAmCjigJkgdG9rZW4iIHdvdWxkIGJlIGdvb2QuKQogCj4gPiA+ID4g
PiBOb3RlIHRoYXQgRFQgYmluZGluZ3MgYXJlIGFuIEFCSSBhbmQgY2FuCj4gPiA+ID4gPiBuZXZl
ciBjaGFuZ2UsIHdoZXJlYXMgdGhlIGVudW0gcHdtX3BvbGFyaXR5IGlzIHBhcnQgb2YgYSBMaW51
eCBpbnRlcm5hbAo+ID4gPiA+ID4gQVBJIGFuZCBkb2Vzbid0IGhhdmUgdGhlIHNhbWUgcmVzdHJp
Y3Rpb25zIGFzIGFuIEFCSS4KPiA+ID4gPiAKPiA+ID4gPiBJIHRob3VnaHQgb25seSBiaW5hcnkg
ZGV2aWNlIHRyZWVzIChkdGIpIGFyZSBzdXBwb3NlZCB0byBiZSBBQkkuCj4gPiA+IAo+ID4gPiBZ
ZXMsIHRoZSBEVEIgaXMgdGhlIEFCSS4gZHQtYmluZGluZ3MvcHdtL3B3bS5oIGlzIHVzZWQgdG8g
Z2VuZXJhdGUgRFRCcywKPiA+ID4gd2hpY2ggYmFzaWNhbGx5IG1ha2VzIGl0IEFCSSBhcyB3ZWxs
Lgo+ID4gCj4gPiBXZSBkaXNhZ3JlZSBoZXJlLiBXaXRoIHRoaXMgYXJndW1lbnQgeW91IGNvdWxk
IGZpeCBxdWl0ZSBzb21lIHRoaW5ncyBhcwo+ID4gQUJJLgo+IAo+IEkgZG9uJ3QgdW5kZXJzdGFu
ZCB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gc2F5LgoKSSBkb24ndCB3YW50IHRvIGZvbGxvdyB5b3Vy
IGFyZ3VtZW50IHRoYXQgZHQtYmluZGluZ3MvcHdtL3B3bS5oIGlzIEFCSQphcyB3ZWxsLiBkZXZp
Y2UgdHJlZSBiaW5hcmllcyBmb2xsb3cgYW4gQUJJIChzaW1pbGFyIHRvIG1hY2hpbmUgY29kZSks
CmJ1dCB0aGUgY29tcGlsZXIgYW5kIHRoZSBzb3VyY2UgY29kZSAoaW5jbHVkaW5nIGhlYWRlcnMp
IGFyZSBub3QuCgo+ID4gPiBZZXMsIHRoZSBzeW1ib2wgbmFtZSBtYXkgbm90IGJlIHBhcnQgb2Yg
dGhlIEFCSSwgYnV0IGNoYW5naW5nIHRoZQo+ID4gPiBzeW1ib2wgYmVjb21lcyB2ZXJ5IGluY29u
dmVuaWVudCBiZWNhdXNlIGV2ZXJ5b25lIHRoYXQgZGVwZW5kcyBvbiBpdAo+ID4gPiB3b3VsZCBo
YXZlIHRvIGNoYW5nZS4KPiA+IAo+ID4gT2xla3NhbmRyIGFkYXB0ZWQgYWxsIGluLXRyZWUgdXNl
cnMsIHNvIGl0IG9ubHkgYWZmZWN0cyBvdXQtb2YtdHJlZQo+ID4gdXNlcnMuIEluIG15IGJvb2sg
dGhpcyBpcyBmaW5lLgo+IAo+IFRoZXJlIHVzZWQgdG8gYmUgYSB0aW1lIHdoZW4gaXQgd2FzIGFz
c3VtZWQgdGhhdCBldmVudHVhbGx5IGRldmljZSB0cmVlCj4gc291cmNlcyB3b3VsZCBsaXZlIG91
dHNpZGUgb2YgdGhlIGtlcm5lbCB0cmVlLiBHaXZlbiB0aGF0IHRoZXkgYXJlIGEgSFcKPiBkZXNj
cmlwdGlvbiwgdGhleSByZWFsbHkgb3VnaHQgbm90IHRvIGJlIHJlbHlpbmcgb24gdGhlIExpbnV4
IGtlcm5lbAo+IHRyZWUgYXMgYSB3YXkgb2Yga2VlcGluZyB0aGVtIGNvbnNpc3RlbnQuIFRoYXQn
cyByZWFsbHkgb25seSBvdXQgb2YKPiBjb252ZW5pZW5jZS4KClRoZSBvdGhlciB3YXkgcm91bmQg
aG93ZXZlciBpcyBmaW5lLCBpc24ndCBpdD8gU28gdXNlIHRoZSBkdCBkZWZpbml0aW9uCmluIHRo
ZSBrZXJuZWwgc2hvdWxkIGJlIG9rLgoKQmVzdCByZWdhcmRzClV3ZQoKLS0gClBlbmd1dHJvbml4
IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAg
ICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRw
czovL3d3dy5wZW5ndXRyb25peC5kZS8gfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
