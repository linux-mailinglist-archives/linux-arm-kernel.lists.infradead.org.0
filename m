Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553462609B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GS/BBclVIqtE+D0ZeAL7ZKXMnKsrMEvKj4n0mP5Yh5U=; b=BLTG5apbxJ/tNd
	gyZro+H/Ox9pTvJRc+ju3aVg7q7u/3TqLGHaAZGYv1lKZtDs5y4LNzY7LgxnjhQ386DL+gySM1o+Y
	yGt9h/3yW4XXkM0rbr8NinwdHsVUu5HFBE1q8IkLYKmZgmpXeSzdP6+V0C4sbf2ulUd3rCBjqB2MN
	/D2EXj6K2Gn0+1sB54E+gF95VUxZWLmKFG5l8GvZok1pD0JHxpwhwMLeuzbKJTuVIUPNhv51EU5Wl
	BotR1lvE28W8yqhOoS2a5prKVO12poYmzuB3beF0HHF9+PihS4t6wWN6jJAqs7CCNBCbZnhNeO3wq
	z9Z7FsTG/VXBAoO7s9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNgn-0000aX-1a; Wed, 22 May 2019 09:37:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNgg-0000a4-46
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:37:31 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hTNge-000703-Lo; Wed, 22 May 2019 11:37:28 +0200
Message-ID: <1558517848.2624.34.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB
 charger chip
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 22 May 2019 11:37:28 +0200
In-Reply-To: <20190522071227.31488-1-andrew.smirnov@gmail.com>
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023730_315094_2DAAEA6D 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

SGkgQW5kcmV5LAoKQW0gTWl0dHdvY2gsIGRlbiAyMi4wNS4yMDE5LCAwMDoxMiAtMDcwMCBzY2hy
aWViIEFuZHJleSBTbWlybm92Ogo+IEFkZCBub2RlIGZvciBVQ1MxMDAyIFVTQiBjaGFyZ2VyIGNo
aXAgY29ubmVjdGVkIHRvIGZyb250IHBhbmVsIFVTQiBhbmQKPiByZXBsYWNlICJyZWd1bGF0b3It
Zml4ZWQiIHByZXZpb3VzbHkgdXNlZCB0byBjb250cm9sIFZCVVMuCgpJJ3ZlIGhhZCBhIHNpbWls
YXIgdmVyc2lvbiBvZiB0aGlzIHBhdGNoLCBidXQgYWxzbyBhZGRlZCBHUElPIGhvZ3MgZm9yCnRo
ZSBVQ1MxMDAyIGNvbmZpZ3VyYXRpb24gcGlucywgc28gdGhlIGRldmljZSBpcyBwdXQgaW50byB0
aGUgZXhwZWN0ZWQKc3RhdGUgZXZlbiBiZWZvcmUgZHJpdmVyIGxvYWQuIE1heWJlIHNvbWV0aGlu
ZyB3b3J0aCB0byBjb25zaWRlcj8KClJlZ2FyZHMsCkx1Y2FzCgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJleSBTbWlybm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5jb20+Cj4gPiBDYzogU2hhd24gR3Vv
IDxzaGF3bmd1b0BrZXJuZWwub3JnPgo+ID4gQ2M6IENocmlzIEhlYWx5IDxjcGhlYWx5QGdtYWls
LmNvbT4KPiA+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gPiBDYzog
THVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Cj4gLS0tCj4gwqBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXppaS1yZHUyLmR0c2kgfCAzNSAr
KysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxZGwtemlpLXJkdTIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtemlpLXJk
dTIuZHRzaQo+IGluZGV4IDkzYmUwMGE2MGM4OC4uOTc3ZDkyM2UzNWRmIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRzaQo+ICsrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRzaQo+IEBAIC02MCwxOCArNjAsNiBAQAo+ID4g
wqAJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiDCoAl9Owo+IMKgCj4gPiAtCXJlZ181cDB2X3Vz
ZXJfdXNiOiByZWd1bGF0b3ItNXAwdi11c2VyLXVzYiB7Cj4gPiAtCQljb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7Cj4gPiAtCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gLQkJ
cGluY3RybC0wID0gPCZwaW5jdHJsX3JlZ191c2VyX3VzYj47Cj4gPiAtCQl2aW4tc3VwcGx5ID0g
PCZyZWdfNXAwdl9tYWluPjsKPiA+IC0JCXJlZ3VsYXRvci1uYW1lID0gIjVWX1VTRVJfVVNCIjsK
PiA+IC0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gLQkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiAtCQlncGlvID0gPCZncGlvMyAyMiBH
UElPX0FDVElWRV9MT1c+Owo+ID4gLQkJc3RhcnR1cC1kZWxheS11cyA9IDwxMDAwPjsKPiA+IC0J
fTsKPiAtCj4gPiDCoAlyZWdfM3Azdl9wbWljOiByZWd1bGF0b3ItM3Azdi1wbWljIHsKPiA+IMKg
CQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiDCoAkJdmluLXN1cHBseSA9IDwm
cmVnXzEycDB2PjsKPiBAQCAtNTkwLDYgKzU3OCwxNiBAQAo+ID4gwqAJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gPiDCoAl9Owo+IMKgCj4gPiA+ICsJcmVnXzVwMHZfdXNlcl91c2I6IGNoYXJnZXJA
MzIgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAsdWNzMTAwMiI7Cj4gPiArCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gKwkJcGluY3RybC0wID0gPCZwaW5jdHJsX3VjczEw
MDJfcGlucz47Cj4gPiArCQlyZWcgPSA8MHgzMj47Cj4gPiArCQlpbnRlcnJ1cHRzLWV4dGVuZGVk
ID0gPCZncGlvNSAyIElSUV9UWVBFX0VER0VfQk9USD4sCj4gPiArCQkJCcKgwqDCoMKgwqDCoDwm
Z3BpbzMgMjEgSVJRX1RZUEVfRURHRV9CT1RIPjsKPiA+ICsJCWludGVycnVwdC1uYW1lcyA9ICJh
X2RldCIsICJhbGVydCI7Cj4gPiArCX07Cj4gKwo+ID4gPiDCoAlocGExOiBhbXBANjAgewo+ID4g
wqAJCWNvbXBhdGlibGUgPSAidGksdHBhNjEzMGEyIjsKPiA+IMKgCQlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+IEBAIC05ODIsMTIgKzk4MCw2IEBACj4gPiDCoAkJPjsKPiA+IMKgCX07Cj4g
wqAKPiA+IC0JcGluY3RybF9yZWdfdXNlcl91c2I6IHVzYm90Z2dycCB7Cj4gPiAtCQlmc2wscGlu
cyA9IDwKPiA+ID4gLQkJCU1YNlFETF9QQURfRUlNX0QyMl9fR1BJTzNfSU8yMgkJMHg0MDAwMDAz
OAo+ID4gLQkJPjsKPiA+IC0JfTsKPiAtCj4gPiDCoAlwaW5jdHJsX3JtaWlfcGh5X2lycTogcGh5
Z3JwIHsKPiA+IMKgCQlmc2wscGlucyA9IDwKPiA+ID4gwqAJCQlNWDZRRExfUEFEX0VJTV9EMzBf
X0dQSU8zX0lPMzAJCTB4NDAwMTAwMDAKPiBAQCAtMTA0Nyw2ICsxMDM5LDEzIEBACj4gPiDCoAkJ
PjsKPiA+IMKgCX07Cj4gwqAKPiA+ICsJcGluY3RybF91Y3MxMDAyX3BpbnM6IHVjczEwMDJncnAg
ewo+ID4gKwkJZnNsLHBpbnMgPSA8Cj4gPiA+ICsJCQlNWDZRRExfUEFEX0VJTV9BMjVfX0dQSU81
X0lPMDLCoMKgCTB4MWIwYjAKPiA+ID4gKwkJCU1YNlFETF9QQURfRUlNX0QyMV9fR1BJTzNfSU8y
McKgwqAJMHgxYjBiMAo+ID4gKwkJPjsKPiA+ICsJfTsKPiArCj4gPiDCoAlwaW5jdHJsX3VzZGhj
MjogdXNkaGMyZ3JwIHsKPiA+IMKgCQlmc2wscGlucyA9IDwKPiA+ID4gwqAJCQlNWDZRRExfUEFE
X1NEMl9DTURfX1NEMl9DTUQJCTB4MTAwNTkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
