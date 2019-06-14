Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE6146398
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E+T5bNS1jb83Hw0cyFL6V+BVHSTngqRp6BP+5P9ad4=; b=CDun/0U+K2xdNH
	lk3YCRP6caXjc5X98o+oP+3LhiPuX3WIvYG1iNm3BiIwgd/Ucb1chhSb8U5lgMCuDAZEIbm3S8GDQ
	qbOb/U2f+Aznvq1r8U4iUTWlGvS0U60DMfgeau+KEaKcFa/4diTiuFpbcbc+FYqCjL30dWnPpB+zQ
	qa6U7mQ++vIhn65U6Xpl+/a8+xgSh7BVGNO8rM6V/aKv4fQnQy05HGv0FHnH0lKKX8bk5Vy4vbEVS
	fRiW/POgbWxrEBzf7ftRGxQjKgPVfpKN90SgYYlPnfpqi3vuVUMKADBgSs0bNlpXhs/TGS9n1Psgj
	rWbPtEVg8saXV3Jjljiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboft-0005gn-VX; Fri, 14 Jun 2019 16:03:33 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbofl-0005fu-Em
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:03:27 +0000
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 8AB6D20000C;
 Fri, 14 Jun 2019 16:03:12 +0000 (UTC)
Message-ID: <8e9ed72e3bfae4118f8577ad9fbe137770a12326.camel@bootlin.com>
Subject: Re: [PATCH] ARM: dts: exynos: add flash support to galaxy-s3 boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>, Kukjin Kim
 <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 14 Jun 2019 18:03:12 +0200
In-Reply-To: <20190614155419.14260-1-GNUtoo@cyberdimension.org>
References: <20190614155419.14260-1-GNUtoo@cyberdimension.org>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_090325_650924_1A088A92 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Simon Shields <simon@lineageos.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSB2ZW5kcmVkaSAxNCBqdWluIDIwMTkgw6AgMTc6NTQgKzAyMDAsIERlbmlzICdHTlV0
b28nIENhcmlrbGkgYQrDqWNyaXQgOgo+IEZyb206IFNpbW9uIFNoaWVsZHMgPHNpbW9uQGxpbmVh
Z2Vvcy5vcmc+Cj4gCj4gVGhlIGdhbGF4eSBzMyBib2FyZHMgdXNlIGFuIGFhdDEyOTAgdG8gY29u
dHJvbCB0aGUgZmxhc2ggTEVELgo+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgcmVsZXZhbnQgZGV2aWNl
IHRyZWUgY29uZmlndXJhdGlvbiB0byB1c2UgaXQuCgpMb29rcyBnb29kIHRvIG1lOgpSZXZpZXdl
ZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tpQGJvb3RsaW4uY29tPgoK
Q2hlZXJzLAoKUGF1bAoKPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTaGllbGRzIDxzaW1vbkBsaW5l
YWdlb3Mub3JnPgo+IFNpZ25lZC1vZmYtYnk6IERlbmlzICdHTlV0b28nIENhcmlrbGkgPEdOVXRv
b0BjeWJlcmRpbWVuc2lvbi5vcmc+IFtyZWJhc2VdCj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTItZ2FsYXh5LXMzLmR0c2kgfCAzMiArKysrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1nYWxheHktczMuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTItZ2FsYXh5LXMzLmR0c2kKPiBpbmRleCAzMGVlZTU5NDJlZmYuLjM3NWFlY2Ew
OTg4MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLWdhbGF4eS1z
My5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1nYWxheHktczMuZHRz
aQo+IEBAIC0xNSw2ICsxNSwyNCBAQAo+ICAJCWkyYzEwID0gJmkyY19jbTM2NjUxOwo+ICAJfTsK
PiAgCj4gKwlhYXQxMjkwIHsKPiArCQljb21wYXRpYmxlID0gInNreXdvcmtzLGFhdDEyOTAiOwo+
ICsJCWZsZW4tZ3Bpb3MgPSA8JmdwajEgMSBHUElPX0FDVElWRV9ISUdIPjsKPiArCQllbnNldC1n
cGlvcyA9IDwmZ3BqMSAyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsKPiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiLCAiaG9zdCIsICJpc3AiOwo+ICsJCXBpbmN0cmwtMCA9IDwmY2FtZXJhX2Zs
YXNoX2hvc3Q+Owo+ICsJCXBpbmN0cmwtMSA9IDwmY2FtZXJhX2ZsYXNoX2hvc3Q+Owo+ICsJCXBp
bmN0cmwtMiA9IDwmY2FtZXJhX2ZsYXNoX2lzcD47Cj4gKwo+ICsJCWZsYXNoLWxlZCB7Cj4gKwkJ
CWxhYmVsID0gImZsYXNoIjsKPiArCQkJbGVkLW1heC1taWNyb2FtcCA9IDw1MjA4MzM+Owo+ICsJ
CQlmbGFzaC1tYXgtbWljcm9hbXAgPSA8MTAxMjUwMD47Cj4gKwkJCWZsYXNoLW1heC10aW1lb3V0
LXVzID0gPDE5NDAwMDA+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCWxjZF92ZGQzX3JlZzogdm9s
dGFnZS1yZWd1bGF0b3ItNiB7Cj4gIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+
ICAJCXJlZ3VsYXRvci1uYW1lID0gIkxDRF9WRERfMi4yViI7Cj4gQEAgLTEzMSw2ICsxNDksMjAg
QEAKPiAgCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDI4MDAwMDA+Owo+ICB9Owo+ICAKPiAr
JnBpbmN0cmxfMCB7Cj4gKwljYW1lcmFfZmxhc2hfaG9zdDogY2FtZXJhLWZsYXNoLWhvc3Qgewo+
ICsJCXNhbXN1bmcscGlucyA9ICJncGoxLTAiOwo+ICsJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0g
PDE+Owo+ICsJCXNhbXN1bmcscGluLXZhbCA9IDwwPjsKPiArCX07Cj4gKwo+ICsJY2FtZXJhX2Zs
YXNoX2lzcDogY2FtZXJhLWZsYXNoLWlzcCB7Cj4gKwkJc2Ftc3VuZyxwaW5zID0gImdwajEtMCI7
Cj4gKwkJc2Ftc3VuZyxwaW4tZnVuY3Rpb24gPSA8MT47Cj4gKwkJc2Ftc3VuZyxwaW4tdmFsID0g
PDE+Owo+ICsJfTsKPiArfTsKPiArCj4gICZzNWM3M20zIHsKPiAgCXN0YW5kYnktZ3Bpb3MgPSA8
JmdwbTAgMSBHUElPX0FDVElWRV9MT1c+OyAgIC8qIElTUF9TVEFOREJZICovCj4gIAl2ZGRhLXN1
cHBseSA9IDwmbGRvMTdfcmVnPjsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
