Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364A868777
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQoZSvN6KYXihjuYeGHnOqZXa8G1/iMOJecj2CQ86CI=; b=r6Wo3dLZRmmELJ
	H/3QyHY6g0XbSHHe/ap6XknngFEFS4lDnZYDqvgU0uXwd5hkwAGxFa1+i2XoOaCnd1+QOukqQhBSU
	xe/2DEP5ucvj2epR2RPu2PdoL8BUzyPTbi+N/DUXnd+ZDJ0anV3qugjCVIGBN6swb91ROSnDuG11+
	EjdDRHfLWtWqjvdi561LPeCt2d4c/yvVIYDkuqI8T1/FTcZjEP8j7VmR836mwYryd5UUI/0tvbGoH
	Src75isu477IBzM4XBc4c0K9KncC8n3cxDbUbzOhUO5sOZEKaPcuwFrSHtxS0Iz8uYuroeJsH6dyJ
	0QWz+N6BLoiEUPkCnwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmydz-00056h-2D; Mon, 15 Jul 2019 10:55:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmydl-00056A-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:55:30 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hmydZ-0006OY-FK; Mon, 15 Jul 2019 12:55:17 +0200
Message-ID: <1563188114.2307.7.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,  Pavel Machek <pavel@ucw.cz>, "Angus
 Ainslie (Purism)" <angus@akkea.ca>, Abel Vesa <abel.vesa@nxp.com>, Anson
 Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>, Andrey
 Smirnov <andrew.smirnov@gmail.com>,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Mon, 15 Jul 2019 12:55:14 +0200
In-Reply-To: <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
References: <cover.1563187253.git.agx@sigxcpu.org>
 <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_035529_324090_0A9E0BC7 
X-CRM114-Status: GOOD (  13.16  )
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

QW0gTW9udGFnLCBkZW4gMTUuMDcuMjAxOSwgMTI6NDMgKzAyMDAgc2NocmllYiBHdWlkbyBHw7xu
dGhlcjoKPiBBZGQgYSBub2RlIGZvciB0aGUgTWl4ZWwgTUlQSSBELVBIWSwgImRpc2FibGVkIiBi
eSBkZWZhdWx0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNw
dS5vcmc+Cj4gQWNrZWQtYnk6IEFuZ3VzIEFpbnNsaWUgKFB1cmlzbSkgPGFuZ3VzQGFra2VhLmNh
PgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKPiAt
LS0KPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgMTMgKysr
KysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQo+IGluZGV4IGQwOWI4MDhlZmY4
Ny4uODkxZWU3NTc4YzJkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1xLmR0c2kKPiBAQCAtNzI4LDYgKzcyOCwxOSBAQAo+IMKgCQkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gwqAJCQl9Owo+IMKgCj4gKwkJCWRwaHk6IGRwaHlAMzBhMDAzMDAgewo+ICsJCQkJY29t
cGF0aWJsZSA9ICJmc2wsaW14OG1xLW1pcGktZHBoeSI7Cj4gKwkJCQlyZWcgPSA8MHgzMGEwMDMw
MCAweDEwMD47Cj4gKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPjsK
PiArCQkJCWNsb2NrLW5hbWVzID0gInBoeV9yZWYiOwo+ICsJCQkJYXNzaWduZWQtY2xvY2tzID0g
PCZjbGsgSU1YOE1RX0NMS19EU0lfUEhZX1JFRj47Cj4gKwkJCQlhc3NpZ25lZC1jbG9jay1wYXJl
bnRzID0gPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDFfT1VUPjsKPiArCQkJCWFzc2lnbmVkLWNsb2Nr
LXJhdGVzID0gPDI0MDAwMDAwPjsKPiArCQkJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwkJCQlwb3dl
ci1kb21haW5zID0gPCZwZ2NfbWlwaT47Cj4gKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJ
CQl9Owo+ICsKPiDCoAkJCWkyYzE6IGkyY0AzMGEyMDAwMCB7Cj4gwqAJCQkJY29tcGF0aWJsZSA9
ICJmc2wsaW14OG1xLWkyYyIsICJmc2wsaW14MjEtaTJjIjsKPiDCoAkJCQlyZWcgPSA8MHgzMGEy
MDAwMCAweDEwMDAwPjsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
