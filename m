Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C52968778
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bobqP0VGoh4bLd7tyo6btbrsN6i2kFj3rEMZeTquUxw=; b=oAtFJqQdWqyEdo
	g+2aKNDzPgxFUGlSSgyW/mO5Sbf8odRVEMXlWnri/Tk83ONOFyaoxmEGguVQ8TIDC4T8tLp1583Zf
	7JmcDc1aZ7HFErIpINeSevDz/exXlmYrPdN7r3Fxvu1llMLsaprOd4Z490jtnhTPlzeysT7L71O73
	CEIS/hCYaOn1aKfuNKCUlPS3oGOIvFH81ygXaPl+9DyCnPmRntYIqY08aElK3MM7dqRzJs4VNvrBe
	gD2z+KRqDikCfK7iSLW9GE/iuw9q119bfy153cNC1uNIiNtoGJoc6Qhuzz4PoYXhIhY8IIROvHdla
	1AX6AVCbFI8VBOeEYdsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyeG-0005Ip-7B; Mon, 15 Jul 2019 10:56:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmydy-0005FX-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:55:43 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hmydq-0006Ux-KD; Mon, 15 Jul 2019 12:55:34 +0200
Message-ID: <1563188134.2307.8.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8mq-librem5: Enable MIPI D-PHY
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
Date: Mon, 15 Jul 2019 12:55:34 +0200
In-Reply-To: <f80df8fcae320eb6eb4937fb5a07799fc610adae.1563187253.git.agx@sigxcpu.org>
References: <cover.1563187253.git.agx@sigxcpu.org>
 <f80df8fcae320eb6eb4937fb5a07799fc610adae.1563187253.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_035542_568117_E83B8E30 
X-CRM114-Status: GOOD (  12.53  )
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
dGhlcjoKPiBUaGlzIGVuYWJsZXMgdGhlIE1peGVsIE1JUEkgRC1QSFkgb24gdGhlIExpYnJlbSA1
IGRldmtpdAo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5v
cmc+Cj4gQWNrZWQtYnk6IEFuZ3VzIEFpbnNsaWUgKFB1cmlzbSkgPGFuZ3VzQGFra2VhLmNhPgoK
UmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKPiAtLS0K
PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5k
dHMgfCA0ICsrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2
a2l0LmR0cwo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUt
ZGV2a2l0LmR0cwo+IGluZGV4IDUxNzllMjJmNTEyNi4uNjgzYTExMDM1NjQzIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5k
dHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1k
ZXZraXQuZHRzCj4gQEAgLTE3NCw2ICsxNzQsMTAgQEAKPiDCoAlhc3NpZ25lZC1jbG9jay1yYXRl
cyA9IDw3ODY0MzIwMDA+LCA8NzIyNTM0NDAwPjsKPiDCoH07Cj4gwqAKPiArJmRwaHkgewo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiDCoCZmZWMxIHsKPiDCoAlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+IMKgCXBpbmN0cmwtMCA9IDwmcGluY3RybF9mZWMxPjsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
