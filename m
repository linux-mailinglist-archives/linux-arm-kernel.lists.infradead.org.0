Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8397B199B50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+6uY8dX/7ZOcqkfCAQmqbfWKSpmJkFNOmKU+pvVxuoY=; b=Rdx7JOvFYUjdPWEnZ+f2nzGq8
	vID4aHmeBNJaPj+yJ/HIPMx+HxAYDbatd8nBBx5QVp4WiEooqQ24oJIe91UIbz5RQ1DOXnVK6zS0k
	6cbbQ7rVxmFfFLvJWZfQX1y14VdF8mGdvZ/huErI8mE2u7yX1pNLevw/8dlexfHASXU8kNDd2Ew2w
	u4CPpdbf3F89llj9Q6oft+wEIeOppMQqN4GiXP3/GS7UVcFOWVtyOs5wOR1SgM+XjMa5cRdQZj2Ee
	clbvCkgRZY5Ii4FGf18IyAr8XR1DahEtkklDOH4xMVmTebqjUoc7EkBigImVrxcqoQQdW0dUVzOtI
	0xA7Nxkow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJeP-0001J4-CL; Tue, 31 Mar 2020 16:22:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJe6-0001IT-E5
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:21:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=MnwtTc/EcdatrYJ8xwpC2XqSDdEDN2As8dDKoKSgRsY=; b=MAj3fhqHylbTzy1gSWzRK8+4DL
 lclTWNnc3Z5+NZBjb0Qhjgb8BnhmBk/q3XksWRYuSFpdFN7RHyGkt4G+ZdJrQPPn7MLfcsc3KWJ3i
 MhhTgt1CtVJurXFu4Dx5StvZWM2wcvz2TMhAusQ3wpGvpVIeu5u+zcdzkx7n3nYKVz5CkLM4MRNSS
 hT5jGlp6tRu8NpRqRQyX/rfduL4sCA2Gmo5Ui+TDzsrmWwQ6z0rLxNolcd3pymmV0VaXBTUlp5NDa
 3v5CqAzazO3hpgy1Lf29ze4JolQcP/no1yySiiN8jdGzEL/y2t8XbXiFzpt9Jclg4M2VcM4pESRxj
 hkxHm5xA==;
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJGeO-0001H0-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1585660186; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MnwtTc/EcdatrYJ8xwpC2XqSDdEDN2As8dDKoKSgRsY=;
 b=viJtbtjDgLg/oVj83f6PuXcpO19M2ildvSP0Bd4WrZNicQgd24xrsOLQouZkLa+AoD1aSW
 kT1G4jj3UXQ0vO+XMtD5HJLk7qGBT4mLhaP7QYufe4teGm/pxJTg9v5PHKclz+kZNqIbcd
 DSq8s2JHVAWDNEhScJaAfpMsFpH+z+4=
Date: Tue, 31 Mar 2020 15:09:33 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-Id: <X7728Q.UX8A28S31JO92@crapouillou.net>
In-Reply-To: <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_140952_378395_AFA257A5 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 =?iso-8859-2?b?UGF3ZbM=?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2M6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KCkhpIE1h
cmVrLAoKTGUgbWFyLiAzMSBtYXJzIDIwMjAgw6AgNzozNiwgTWFyZWsgU3p5cHJvd3NraSAKPG0u
c3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gYSDDqWNyaXQgOgo+IEhpIFBhdWwsCj4gCj4gT24gMjAy
MC0wMy0xOCAxNToyNSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPj4+PiAgICsgICAgfTsKPj4+PiAg
ICsKPj4+PiAgICsgICAgdHNwX3JlZzogcmVndWxhdG9yLTEgewo+Pj4+ICAgKyAgICAgICAgY29t
cGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+ICAgKyAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAiVFNQX0ZJWEVEX1ZPTFRBR0VTIjsKPj4+PiAgICsgICAgICAgIHJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDMzMDAwMDA+Owo+Pj4+ICAgKyAgICAgICAgcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MzMwMDAwMD47Cj4+Pj4gICArICAgICAgICBncGlvID0gPCZncGwwIDMgR1BJT19B
Q1RJVkVfSElHSD47Cj4+Pj4gICArICAgICAgICBzdGFydHVwLWRlbGF5LXVzID0gPDcwMDAwPjsK
Pj4+PiAgICsgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPj4+PiAgICsgICAgICAgIHJlZ3Vs
YXRvci1ib290LW9uOwo+Pj4+ICAgKyAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+IAo+
Pj4gIGFsd2F5cy1vbiBhbmQgYm9vdC1vbiBzaG91bGQgbm90IGJlIG5lZWRlZC4gWW91IGhhdmUg
YSBjb25zdW1lciAKPj4+IGZvciB0aGlzCj4+PiAgcmVndWxhdG9yLgo+PiAKPj4gIEFib3V0IHRo
aXM6IHRoZSB0b3VjaHNjcmVlbiBkcml2ZXIgZG9lcyBub3QgdXNlIGEgcmVndWxhdG9yLCBzbyBJ
Cj4+ICBiZWxpZXZlIHRoYXQncyB3aHkgdGhlc2UgcHJvcGVydGllcyB3ZXJlIGhlcmUuCj4+IAo+
PiAgSSBzZW50IHBhdGNoZXMgdXBzdHJlYW0gdG8gYWRkcmVzcyB0aGUgaXNzdWU6Cj4+ICBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzE1Lzk0Cj4+IAo+PiAgSSBiZWxpZXZlIHRoaXMgbWVh
bnMgSSBjYW5ub3QgbWVyZ2UgdGhlIGk5MTAwIGRldmljZXRyZWUgdW50aWwgaXQgaXMKPj4gIGFj
a2VkLgo+IAo+IE9uZSBtb3JlIGluZm9ybWF0aW9uIC0gc2ltaWxhciBjaGFuZ2UgaGFzIGJlZW4g
YWxyZWFkeSBwb3N0ZWQsIGJ1dCBpdAo+IGxvb2tzIGl0IGdvdCBsb3N0IHRoZW46IGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA1NTA5MDMvCgpJIHdhcyBhd2FyZSBvZiB0aGlz
IHBhdGNoLCBidXQgZGlkbid0IGtub3cgaXQgd2FzIHNlbnQgdXBzdHJlYW0uCgpUaGlzIG90aGVy
IHBhdGNoIHVzZXMgdHdvIHJlZ3VsYXRvcnMsIHZkZC9hdmRkIGJ1dCBkb2Vzbid0IGdpdmUgYW55
IApyZWFzb24gd2h5LgoKUGF3ZcWCLCBpcyB0aGF0IHJlYWxseSBuZWVkZWQ/CgotUGF1bAoKCj4g
QmVzdCByZWdhcmRzCj4gLS0KPiBNYXJlayBTenlwcm93c2tpLCBQaEQKPiBTYW1zdW5nIFImRCBJ
bnN0aXR1dGUgUG9sYW5kCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
