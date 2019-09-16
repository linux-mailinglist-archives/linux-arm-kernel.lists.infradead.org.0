Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18012B3CA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOZnwiWn6dJ1UQY/suwJptYMiuFQCOi6syJDofq8wF4=; b=vEBM3WkPxbSHdq
	XaA6xaVRjtmEzmd7l0Ex0Az02vSfIODUhkm+tCgbymbzTsBmL/nisSdcOVouPmn2+xAp2lAGEbtTA
	t8iIMTEzJi1by2kB/rWKWNY1Omuv+8c8DUyPoeU4wZkFzKPiu0ND7TETadE+pM71xd10xaM/SG7pV
	KUfcR9pbpnLAL8QOeOeB7F0+Y3jNj32xTZYrT1wtOUOUd+EJL2CJTrATcRsBrEPFyNINzAtmDKjzq
	nxKaGiDHK/NsEsvNWGWKld/n19cpZWlA5u7ty19PPDrt9jKLzDBdhAxhbdpceiUv0YtnqNxLGVWPb
	4liwj8HsHPOgK4yc09gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9s4q-0003k1-K1; Mon, 16 Sep 2019 14:34:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9s4c-0003jD-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:33:51 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i9s4P-00044Z-Rf; Mon, 16 Sep 2019 16:33:37 +0200
Message-ID: <60da82b157be87d7a1050da47ace80adf2b638f3.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] dts: arm64: imx8mq: Enable gpu passive throttling
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Russell King
 <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner
 <christian.gmeiner@gmail.com>,  David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>, Carlo
 Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,  etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org
Date: Mon, 16 Sep 2019 16:33:37 +0200
In-Reply-To: <0ab2ee7de9c2e24f6de860ffcbcdfc25b72c2c61.1568255903.git.agx@sigxcpu.org>
References: <cover.1568255903.git.agx@sigxcpu.org>
 <0ab2ee7de9c2e24f6de860ffcbcdfc25b72c2c61.1568255903.git.agx@sigxcpu.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_073350_561051_AAE4DC15 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTWksIDIwMTktMDktMTEgYXQgMTk6NDAgLTA3MDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+
IFRlbXBlcmF0dXJlIGFuZCBoeXN0ZXJlc2lzIHdlcmUgcGlja2VkIGFmdGVyIHRoZSBDUFUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KClJldmll
d2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KCj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgMTUgKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBpbmRleCA0ZmRkNjBmMmM1MWUuLjUwMjNh
MGU1MDY4ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNp
Cj4gQEAgLTIzNSwxMiArMjM1LDI2IEBACj4gIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdG11IDE+
Owo+ICAKPiAgCQkJdHJpcHMgewo+ICsJCQkJZ3B1X2FsZXJ0OiBncHUtYWxlcnQgewo+ICsJCQkJ
CXRlbXBlcmF0dXJlID0gPDgwMDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJ
CQkJCXR5cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9Owo+ICsKPiAgCQkJCWdwdS1jcml0IHsKPiAg
CQkJCQl0ZW1wZXJhdHVyZSA9IDw5MDAwMD47Cj4gIAkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsK
PiAgCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKPiAgCQkJCX07Cj4gIAkJCX07Cj4gKwo+ICsJCQlj
b29saW5nLW1hcHMgewo+ICsJCQkJbWFwMCB7Cj4gKwkJCQkJdHJpcCA9IDwmZ3B1X2FsZXJ0PjsK
PiArCQkJCQljb29saW5nLWRldmljZSA9Cj4gKwkJCQkJCTwmZ3B1IFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD47Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICAJCX07Cj4gIAo+ICAJCXZw
dS10aGVybWFsIHsKPiBAQCAtOTEyLDYgKzkyNiw3IEBACj4gIAkJCSAgICAgICAgIDwmY2xrIElN
WDhNUV9DTEtfR1BVX0FYST4sCj4gIAkJCSAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfR1BVX0FI
Qj47Cj4gIAkJCWNsb2NrLW5hbWVzID0gImNvcmUiLCAic2hhZGVyIiwgImJ1cyIsICJyZWciOwo+
ICsJCQkjY29vbGluZy1jZWxscyA9IDwyPjsKPiAgCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsg
SU1YOE1RX0NMS19HUFVfQ09SRV9TUkM+LAo+ICAJCQkgICAgICAgICAgICAgICAgICA8JmNsayBJ
TVg4TVFfQ0xLX0dQVV9TSEFERVJfU1JDPiwKPiAgCQkJICAgICAgICAgICAgICAgICAgPCZjbGsg
SU1YOE1RX0NMS19HUFVfQVhJPiwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
