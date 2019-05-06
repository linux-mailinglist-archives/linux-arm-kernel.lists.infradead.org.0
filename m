Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D90151EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZsjZQ2EuARceatclCP1kD0pZ9erso7CB1BIeKaz3fM=; b=rjQPcTofyQs9x0
	qS4b2gBr6dw4DkiUMvH1rDJtK0Ik0UXh5ws6KG8Z9opyNOFNS0/UUzkGdJ2/NEv0nIM9ujJRpG1wh
	0Q/xVNpneWsWiXiTt+X+XCyOVj03A9Qo4l+/IOlnuDNfht3kA4UPmrWPRxzTMmvZ7qPk8IRVaahtU
	y7OzukuElivOHMSKNLcrSVg7J5HASoZwc7/RZEcUFWy6pzujz8ZzYiXLMgyYY8Pe1mIxcAPzYVhu5
	qJlxnUtkBh4xEwCKa4ZeAY+yh9vP8AOTqyKnZP2cZQgFUNuR6DYcVw4aQ8QPSnYVo9HIbf5emVmEZ
	3U5JCdII0+kZQ+uZjn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgrK-0001LU-J4; Mon, 06 May 2019 16:52:58 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgrD-0001L7-NW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:52:53 +0000
Received: from [199.195.250.187] (port=39885 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <icenowy@aosc.io>)
 id 1hNgr7-0001ad-3v; Mon, 06 May 2019 17:52:45 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 572BE6DA6E;
 Mon,  6 May 2019 16:52:30 +0000 (UTC)
Message-ID: <282ccf0979e6c58effd0e177917bdf824c32f64e.camel@aosc.io>
Subject: Re: [PATCH 1/7] iio: adc: sun4i-gpadc: rework for support multiple
 thermal sensor
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Jonathan Cameron
 <jic23@kernel.org>
Date: Tue, 07 May 2019 00:52:22 +0800
In-Reply-To: <20190506122807.4u323iys74jddcet@flea>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-2-tiny.windzz@gmail.com>
 <20190505162215.3594f77d@archlinux> <20190506122807.4u323iys74jddcet@flea>
Organization: Anthon Open-Source Community
Mime-Version: 1.0
X-BlackCat-Spam-Score: 4
X-Spam-Status: No, score=0.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_095251_766601_85BBBE50 
X-CRM114-Status: GOOD (  31.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMDUtMDbkuIDnmoQgMTQ6MjggKzAyMDDvvIxNYXhpbWUgUmlwYXJk5YaZ6YGT77ya
Cj4gSGksCj4gCj4gT24gU3VuLCBNYXkgMDUsIDIwMTkgYXQgMDQ6MjI6MTVQTSArMDEwMCwgSm9u
YXRoYW4gQ2FtZXJvbiB3cm90ZToKPiA+IE9uIEZyaSwgIDMgTWF5IDIwMTkgMDM6Mjg6MDcgLTA0
MDAKPiA+IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+
ID4gRm9yIHNvbWUgU09DcywgdGhlcmUgYXJlIG1vcmUgdGhhbiBvbmUgdGhlcm1hbCBzZW5zb3Is
IGFuZCB0aGVyZQo+ID4gPiBhcmUKPiA+ID4gY3VycmVudGx5IGZvdXIgc2Vuc29ycyBvbiB0aGUg
QTgwLiBTbyB3ZSBuZWVkIHRvIGRvIHNvbWUgd29yayBpbgo+ID4gPiBvcmRlcgo+ID4gPiB0byBz
dXBwb3J0IG11bHRpcGxlIHRoZXJtYWwgc2Vuc29yczoKPiA+ID4gCj4gPiA+ICAgMSkgYWRkIHNl
bnNvcl9jb3VudCBpbiBncGFkY19kYXRhLgo+ID4gPiAgIDIpIGludHJvZHVjZSBzdW40aV9zZW5z
b3JfdHpkIGluIHN1bjRpX2dwYWRjX2lpbywgdG8gc3VwcG9ydAo+ID4gPiBtdWx0aXBsZQo+ID4g
PiAgICAgIHRoZXJtYWxfem9uZV9kZXZpY2UgYW5kIGRpc3Rpbmd1aXNoIGJldHdlZW4gZGlmZmVy
ZW50Cj4gPiA+IHNlbnNvcnMuCj4gPiA+ICAgMykgbW9kaWZ5IHJlYWQgdGVtcGVyYXR1cmUgYW5k
IGluaXRpYWxpemF0aW9uIGZ1bmN0aW9uLgo+ID4gCj4gPiBUaGlzIGNvbW1lbnQgZG9lc24ndCBt
ZW50aW9uIHRoZSBkZXZtIGNoYW5nZS4gSWYgaXQgaGFkIGl0IHdvdWxkCj4gPiBoYXZlCj4gPiBy
YWlzZWQgaW1tZWRpYXRlIGFsYXJtIGJlbGxzLgo+ID4gCj4gPiBJJ20gYWxzbyBub3Qga2VlbiBv
biB0aGUgd2ViIG9mIHBvaW50ZXJzIHRoYXQgdGhpcyBkcml2ZXIgaXMKPiA+IHN0ZWFkaWx5Cj4g
PiBldm9sdmluZy4gIEkgY2FuJ3QgaW1tZWRpYXRlbHkgc2VlIGhvdyB0byByZWR1Y2UgdGhhdCBj
b21wbGV4aXR5Cj4gPiBob3dldmVyLgo+IAo+IFNvIEkgbWlnaHQgYmUgcmVzcG9uc2libGUgZm9y
IHRoYXQsIGFuZCBsb29raW5nIGJhY2ssIHRoaXMgaGFzIGJlZW4gYQo+IG1pc3Rha2UuCj4gCj4g
VGhpcyBkcml2ZXIgd2FzIGluaXRhbGx5IHB1dCB0b2dldGhlciB0byBzdXBwb3J0IGEgY29udHJv
bGxlciBmb3VuZAo+IGluCj4gb2xkZXIgKEExMCB1cCB0byBBMzEpIEFsbHdpbm5lciBTb0NzLiBU
aGlzIGNvbnRyb2xsZXIgaGFkIGFuIEFEQwo+IGRyaXZlciB0aGF0IGNvdWxkIGJlIG9wZXJhdGVk
IGFzIGEgdG91Y2hzY3JlZW4gY29udHJvbGxlciwgYW5kIHdhcwo+IHByb3ZpZGluZyBhIENQVSB0
ZW1wZXJhdHVyZSBzZW5zb3IgYW5kIGEgZ2VuZXJhbCBwdXJwb3NlIEFEQy4KPiAKPiBIb3dldmVy
LCB3ZSBhbHJlYWR5IGhhZCBhIGRyaXZlciBmb3IgdGhhdCBjb250cm9sbGVyIGluIGRyaXZlcnMv
aW5wdXQKPiB0byByZXBvcnQgdGhlIENQVSB0ZW1wZXJhdHVyZSwgYW5kIHRoZSBvbmUgaW4gSUlP
IHdhcyBpbnRyb2R1Y2VkIHRvCj4gc3VwcG9ydCB0aGUgZ2VuZXJhbCBwdXJwb3NlIEFEQyAoYW5k
IHRoZSBDUFUgdGVtcGVyYXR1cmUpLiBUaGUgbG9uZwo+IHRlcm0gZ29hbCB3YXMgdG8gYWRkIHRo
ZSB0b3VjaHNjcmVlbiBmZWF0dXJlIGFzIHdlbGwgZXZlbnR1YWxseSBzbwo+IHRoYXQgd2UgY291
bGQgcmVtb3ZlIHRoZSBvbmUgaW4gZHJpdmVycy9pbnB1dC4gVGhhdCBkaWRuJ3QgaGFwcGVuLgo+
IAo+IEF0IHRoZSBzYW1lIHRpbWUsIHRoZSBBbGx3aW5uZXIgaGFyZHdhcmUgc2xvd2x5IGV2b2x2
ZWQgdG8gcmVtb3ZlIHRoZQo+IHRvdWNoc2NyZWVuIGFuZCBBREMgZmVhdHVyZXMsIGFuZCBvbmx5
IGtlZXAgdGhlIENQVSB0ZW1wZXJhdHVyZQo+IHJlYWRvdXQuIEl0IHRoZW4gZXZvbHZlZCBmdXJ0
aGVyIG9uIHRvIHN1cHBvcnQgbXVsdGlwbGUgdGVtcGVyYXR1cmVzCj4gKGZvciBkaWZmZXJlbnQg
Y2x1c3RlcnMsIHRoZSBHUFUsIGFuZCBzbyBvbikuCj4gCj4gU28sIHRvZGF5LCB3ZSdyZSBpbiBh
IHNpdHVhdGlvbiB3aGVyZSBJIHdhcyBwdXNoaW5nIGV2ZXJ5dGhpbmcgaW50bwo+IHRoYXQgSUlP
IGRyaXZlcnMgc2luY2UgdGhlcmUgd2FzIHNpbWlsaXJhdGllcyBiZXR3ZWVuIGFsbCB0aGUKPiBn
ZW5lcmF0aW9ucywgYnV0IHRoZSBmYWN0IHRoYXQgd2UgaGF2ZSB0byBzdXBwb3J0IHNvIG1hbnkg
b2RkIGNhc2VzCj4gKERUIGJpbmRpbmdzIGNvbXBhdGliaWxpdHksIGNvbnRyb2xsZXJzIHdpdGgg
YW5kIHdpdGhvdXQgQURDLCBldGMpCj4gdGhhdCBpdCBiZWNvbWVzIGEgcmVhbCBtZXNzLgo+IAo+
IEFuZCB0aGF0IG1lc3MgaXNuJ3QgcmVhbGx5IHVzZWQgYnkgYW55Ym9keSwgc2luY2Ugd2Ugd2Fu
dCB0byBoYXZlIHRoZQo+IHRvdWNoc2NyZWVuLgo+IAo+IFRoZXJlJ3Mgb25seSBvbmUgU29DIHRo
YXQgaXMgc3VwcG9ydGVkIG9ubHkgYnkgdGhhdCBkcml2ZXIsIHdoaWNoIGlzCj4gdGhlIEEzMyB0
aGF0IG9ubHkgaGFkIGEgQ1BVIHRlbXBlcmF0dXJlIHJlYWRvdXQsIGFuZCBpcyBzdGlsbCBwcmV0
dHkKPiBzaW1pbGFyIHRvIHRoZSBsYXRlc3QgU29DIGZyb20gQWxsd2lubmVyICh0aGF0IGlzIHN1
cHBvcnRlZCBieSB0aGlzCj4gc2VyaWVzKS4KPiAKPiBJIGd1ZXNzLCBmb3IgZXZlcnlvbmUncyBz
YW5pdHkgYW5kIGluIG9yZGVyIHRvIG5vdCBzdGFsbCB0aGlzCj4gZnVydGhlciwKPiBpdCB3b3Vs
ZCBqdXN0IGJlIGJldHRlciB0byBjcmVhdGUgYW4gaHdtb24gZHJpdmVyIGZvciB0aGUgQTMzIChh
bmQKPiBvbndhcmRzLCBpbmNsdWRpbmcgdGhlIEg2KSBmb3IgdGhlIFNvQyB0aGF0IGp1c3QgaGF2
ZSB0aGUgdGVtcGVyYXR1cmUKPiByZWFkb3V0IGZlYXR1cmUuIEFuZCBmb3IgdGhlIG9sZGVyIFNv
Qywgd2UganVzdCBrZWVwIHRoZSBvbGRlciBkcml2ZXIKPiB1bmRlciBpbnB1dC8uIE9uY2UgdGhl
IEEzMyBpcyBzdXBwb3J0ZWQsIHdlJ2xsIHJlbW92ZSB0aGUgZHJpdmVyIGluCj4gSUlPIChhbmQg
dGhlIHJlbGF0ZWQgYml0cyBpbiBkcml2ZXJzL21mZCkuCgpJIHRoaW5rIGEgdGhlcm1hbCBkcml2
ZXIgaXMgYmV0dGVyLgoKT3RoZXIgU29DcycgdGhlcm1hbCBzZW5zb3IgZHJpdmVycyBhcmUgYWxs
IHRoZXJtYWwgZHJpdmVycy4KCj4gCj4gQXJtYmlhbiBhbHJlYWR5IGhhcyBhIGRyaXZlciBmb3Ig
dGhhdCB0aGV5IG5ldmVyIHVwc3RyZWFtZWQgaWlyYywgc28KPiBpdCBtaWdodCBiZSBhIGdvb2Qg
c3RhcnRpbmcgcG9pbnQsIGFuZCB3ZSB3b3VsZCBhZGQgdGhlIHN1cHBvcnQgZm9yCj4gdGhlIEg2
LiBIb3cgZG9lcyB0aGF0IHNvdW5kPwoKSSB0aGluayB0aGUgZGV2ZWxvcGVyIGFiYW5kb25lZCB0
byB1cHN0cmVhbSBpdCBiZWNhdXNlIG9mIHRoZSBwcmV2aW91cwpwcm9ibGVtIDstKQoKTWF5YmUg
aXQgY2FuIGJlIHRha2VuIGFuZCBhZGQgQTMzJkg2IHN1cHBvcnQuCgo+IAo+IFNvcnJ5IGZvciB3
YXN0aW5nIGV2ZXJ5Ym9keSdzIHRpbWUgb24gdGhpcy4KPiAKPiBNYXhpbWUKPiAKPiAtLQo+IE1h
eGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVy
aW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
