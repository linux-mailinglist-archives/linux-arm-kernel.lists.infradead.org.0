Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58958EFED2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7SYnaDqPNlXFNgmahGhjwXbd6K7/rSOfIGVPhhkczE=; b=fyzgx7/XMpj50N
	DjJhAR4Wa88c6HlJm+34xGlRAX8cQQlhvacaEu8jFCnq40SshTpl1jEP/EWHmBWdQbZK90dPr89AE
	WkaqGkNmq05I3v6yC6uNiFt5KHADAn8xY/ykpSRoOCC+OD+/IiSZO+CaOKljLLJX+27EstGFm83B6
	Uzh2I82hyupGHigXNsV6TLk23qMNikGGgcqodb24IryDthS1McPeSQMEvpSu53Fg93+/Kt3v/3Gnn
	i4VcCrjkQMlR6J9390sdOtbap8wmIFKqFJFfZ2Egw9eLaZ1iUGtSwn8mtGxTAZ04UdBcupeSU9fU4
	Xug15MsGhtxxJ5uC7AhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz3p-0002tF-V5; Tue, 05 Nov 2019 13:39:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRz0b-0000Jp-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:36:35 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iRz0S-0008DC-Vu; Tue, 05 Nov 2019 14:36:24 +0100
Message-ID: <a8908f1157e862164fb1bea07f8d5e1812325858.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/7] pwm: sun4i: Add an optional probe for reset line
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>, Thierry
 Reding <thierry.reding@gmail.com>, 'Uwe =?ISO-8859-1?Q?Kleine-K=F6nig=27?=
 <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>,  Philipp Zabel <pza@pengutronix.de>
Date: Tue, 05 Nov 2019 14:36:23 +0100
In-Reply-To: <20191105131456.32400-3-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-3-peron.clem@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_053633_575547_F56CBE7F 
X-CRM114-Status: GOOD (  15.31  )
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTExLTA1IGF0IDE0OjE0ICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6
Cj4gRnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+IAo+IEg2
IFBXTSBjb3JlIG5lZWRzIGRlYXNzZXJ0ZWQgcmVzZXQgbGluZSBpbiBvcmRlciB0byB3b3JrLgo+
IAo+IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVy
bmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+IFNpZ25lZC1vZmYtYnk6IENs
w6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogUGhpbGlw
cCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KCj4gLS0tCj4gIGRyaXZlcnMvcHdtL3B3
bS1zdW40aS5jIHwgMzMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4g
aW5kZXggNmY1ODQwYTFhODJkLi45YmE4Mzc2OWE0NzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKPiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwpbLi4uXQo+IEBA
IC0zNjUsNiArMzY3LDIxIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkKPiAgCQlyZXR1cm4g
UFRSX0VSUihwd20tPmNsayk7Cj4gIAo+ICsJcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xf
Z2V0X29wdGlvbmFsX3NoYXJlZCgmcGRldi0+ZGV2LCBOVUxMKTsKPiArCWlmIChJU19FUlIocHdt
LT5yc3QpKSB7Cj4gKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCj4g
KwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImdldCByZXNldCBmYWlsZWQgJWxkXG4iLAo+ICsJCQkJ
UFRSX0VSUihwd20tPnJzdCkpOwo+ICsJCXJldHVybiBQVFJfRVJSKHB3bS0+cnN0KTsKPiArCX0K
PiArCj4gKwkvKiBEZWFzc2VydCByZXNldCAqLwoKTml0cGljazogaXNuJ3QgdGhlIEFQSSBmdW5j
dGlvbiBuYW1lIGV4cGxhbmF0b3J5IGVub3VnaD8KCnJlZ2FyZHMKUGhpbGlwcAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
