Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DF479C28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 00:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oihk4j6I8GSpwk9lfMIZk2kzZWJiVOVMtYeIGXj2IO0=; b=LB49mRr0Cww1Nk
	nXFw3EmzbaCg/lqVTFepRMWPour1EYQBc3g2kdUKkJe9E0IxE/Bq9iGCnjfJNcrtaXiEsFBpwVd43
	AsgjS6j9gHf0ljHeMVJ2gVWj1Lc/ilTGROdTSiDqmxfZHzc9ft91EMiEyAX1/vTdmrdzLr+2y6hZ/
	SV84NQ5WQFILf34GYaAQ2EDEEinrARQ/efVNe6QQi+H88FVgS0ntbAaNKqUzgdsAg3ypfE1K9Quvs
	+K57sUHq2vti73F5EUuxPFuZpQ7oqDRfWFxJNhTknaR1BtD7nzuuieTjHvoVho5AnmulBN6v1CCMg
	NjBeMCKhL+zdSZSQqUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDlc-0001tO-9Q; Mon, 29 Jul 2019 22:05:16 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDlN-0001Mf-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 22:05:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 490F8522CFE;
 Tue, 30 Jul 2019 00:04:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id WKzvpPpu-wT9; Tue, 30 Jul 2019 00:04:48 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 923D1522CD2;
 Tue, 30 Jul 2019 00:04:48 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id DCAB5522CFE;
 Tue, 30 Jul 2019 00:04:47 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Date: Tue, 30 Jul 2019 00:04:47 +0200
Message-ID: <2452836.v7ux4bnEjb@jernej-laptop>
In-Reply-To: <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_150501_797283_381A144D 
X-CRM114-Status: GOOD (  33.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDIwOjUxOjA4IENFU1QgamUgVXdlIEts
ZWluZS1Lw7ZuaWcgCm5hcGlzYWwoYSk6Cj4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDg6NDY6
MjVQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gRG5lIHBvbmVkZWxqZWssIDI5
LiBqdWxpaiAyMDE5IG9iIDIwOjQwOjQxIENFU1QgamUgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+IAo+
ID4gbmFwaXNhbChhKToKPiA+ID4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDY6NDA6MTVQTSAr
MDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiA+IERuZSBwb25lZGVsamVrLCAyOS4g
anVsaWogMjAxOSBvYiAxODoyNDoyOCBDRVNUIGplIFV3ZSBLbGVpbmUtS8O2bmlnCj4gPiA+ID4g
Cj4gPiA+ID4gbmFwaXNhbChhKToKPiA+ID4gPiA+IEhlbGxvLAo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjowOTo0MEFNICswODAwLCBDaGVuLVl1IFRzYWkg
d3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDEyOjA3IEFNIFV3ZSBL
bGVpbmUtS8O2bmlnCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA8dS5rbGVpbmUta29lbmlnQHBl
bmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBNb24sIEp1bCAyOSwgMjAxOSBh
dCAwNTo1NTo1MlBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4g
PiBEbmUgcG9uZWRlbGplaywgMjkuIGp1bGlqIDIwMTkgb2IgMDg6NDA6MzAgQ0VTVCBqZSBVd2UK
PiA+ID4gPiA+ID4gPiA+IEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+ID4gbmFwaXNhbChhKToKPiA+ID4gPiA+ID4gPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkg
YXQgMDg6NDA6NDNQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgCndyb3RlOgo+ID4gPiA+ID4gPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+ID4gPiA+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMzMx
LDYgKzMzMSwxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhCj4gPiA+ID4g
PiA+ID4gPiA+ID4gc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7Pgo+ID4gPiA+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgLm5wd20gPSAxLAo+ID4gPiA+ID4gPiA+ID4gPiA+
ICAKPiA+ID4gPiA+ID4gPiA+ID4gPiAgfTsKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YQo+ID4gPiA+ID4g
PiA+ID4gPiA+IHN1bjUwaV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdAo+ID4gPiA+ID4gPiA+ID4g
PiA+ID0gewo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgLmhhc19idXNfY2xvY2sgPSB0cnVlLAo+ID4g
PiA+ID4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKPiA+ID4gPiA+
ID4gPiA+ID4gPiArIC5oYXNfcmVzZXQgPSB0cnVlLAo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgLm5w
d20gPSAyLAo+ID4gPiA+ID4gPiA+ID4gPiA+ICt9Owo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewo+ID4gPiA+ID4gPiA+ID4gPiA+
ICAKPiA+ID4gPiA+ID4gPiA+ID4gPiAgIHsKPiA+ID4gPiA+ID4gPiA+ID4gPiAgIAo+ID4gPiA+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGktYTEw
LXB3bSIsCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTM0Nyw2
ICszNTQsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZAo+ID4gPiA+ID4gPiA+
ID4gPiA+IHN1bjRpX3B3bV9kdF9pZHNbXSA9Cj4gPiA+ID4gPiA+ID4gPiA+ID4gewo+ID4gPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgfSwgewo+ID4gPiA+ID4gPiA+ID4g
PiA+ICAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW44aS1oMy1wd20iLAo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAuZGF0YSA9
ICZzdW40aV9wd21fc2luZ2xlX2J5cGFzcywKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+ID4gPiArIH0sIHsKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgLmNvbXBhdGli
bGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iLAo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAg
ICAgICAuZGF0YSA9ICZzdW41MGlfcHdtX2R1YWxfYnlwYXNzX2Nsa19yc3QsCj4gPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBJZiB5b3UgZm9sbG93IG15IHN1Z2dlc3Rpb24gZm9y
IHRoZSB0d28gcHJldmlvdXMgcGF0Y2hlcywKPiA+ID4gPiA+ID4gPiA+ID4geW91Cj4gPiA+ID4g
PiA+ID4gPiA+IGNhbgo+ID4gPiA+ID4gPiA+ID4gPiBqdXN0Cj4gPiA+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ID4gPiB1c2U6Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICBjb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW41MGktaDYtcHdtIiwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICJhbGx3aW5u
ZXIsc3VuNWktYTEwcy1wd20iOwo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4g
YW5kIGRyb3AgdGhpcyBwYXRjaC4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gTWF4
aW1lIGZvdW5kIG91dCB0aGF0IGl0J3Mgbm90IGNvbXBhdGlibGUgd2l0aCBBMTBzIGR1ZSB0bwo+
ID4gPiA+ID4gPiA+ID4gZGlmZmVyZW5jZQo+ID4gPiA+ID4gPiA+ID4gaW4gYnlwYXNzIGJpdCwg
YnV0IHllcywgSSBrbm93IHdoYXQgeW91IG1lYW4uCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+IFNpbmNlIEg2IHJlcXVpcmVzIHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayB0byBiZSBz
cGVjaWZpZWQsCj4gPiA+ID4gPiA+ID4gPiBpdCdzCj4gPiA+ID4gPiA+ID4gPiBub3QKPiA+ID4g
PiA+ID4gPiA+IGNvbXBhdGlibGUgZnJvbSBEVCBiaW5kaW5nIHNpZGUuIE5ldyB5YW1sIGJhc2Vk
IGJpbmRpbmcgbXVzdAo+ID4gPiA+ID4gPiA+ID4gc29tZWhvdwo+ID4gPiA+ID4gPiA+ID4ga25v
dyB0aGF0IGluIG9yZGVyIHRvIGJlIGFibGUgdG8gdmFsaWRhdGUgRFQgbm9kZSwgc28gaXQgbmVl
ZHMKPiA+ID4gPiA+ID4gPiA+IHN0YW5kYWxvbmUgY29tcGF0aWJsZS4gSG93ZXZlciwgZGVwZW5k
aW5nIG9uIGNvbmNsdXNpb25zIG9mCj4gPiA+ID4gPiA+ID4gPiBvdGhlcgo+ID4gPiA+ID4gPiA+
ID4gZGlzY3Vzc2lvbnMsIHRoaXMgbmV3IGNvbXBhdGlibGUgY2FuIGJlIGFzc29jaWF0ZWQgd2l0
aAo+ID4gPiA+ID4gPiA+ID4gYWxyZWFkeQo+ID4gPiA+ID4gPiA+ID4gYXZhaWxhYmxlIHF1aXJr
cyBzdHJ1Y3R1cmUgb3IgaGF2ZSBpdCdzIG93bi4+ID4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiBJIGNhbm5vdCBmb2xsb3cuIFlvdSBzaG91bGQgYmUgYWJsZSB0byBzcGVjaWZ5IGluIHRo
ZSBiaW5kaW5nCj4gPiA+ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4g
PiA+IHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBpcyBvcHRpb25hbC4gVGhlbgo+ID4gPiA+ID4g
PiA+IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ID4gPiA+ID4gd2l0aG91dCBhIHJlc2V0
IGxpbmUgYW5kIGJ1cyBjbG9jayBhbHNvIHZlcmlmaWVzLCBidXQgdGhpcwo+ID4gPiA+ID4gPiA+
IGRvZXNuJ3QKPiA+ID4gPiA+ID4gPiByZWFsbHkgaHVydCAoYW5kIHdobyBrbm93cywgbWF5YmUg
dGhlIG5leHQgYWxsd2lubmVyIGNoaXAgbmVlZHMKPiA+ID4gPiA+ID4gPiBleGFjdGx5Cj4gPiA+
ID4gPiA+ID4gdGhpcykuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJdCBpcyBub3Qgb3B0aW9u
YWwuIEl0IHdpbGwgbm90IHdvcmsgaWYgZWl0aGVyIHRoZSBjbG9ja3Mgb3IgcmVzZXQKPiA+ID4g
PiA+ID4gY29udHJvbHMKPiA+ID4gPiA+ID4gYXJlIG1pc3NpbmcuIEhvdyB3b3VsZCB0aGVzZSBi
ZSBvcHRpb25hbCBhbnl3YXk/IEVpdGhlciBpdCdzCj4gPiA+ID4gPiA+IGNvbm5lY3RlZAo+ID4g
PiA+ID4gPiBhbmQKPiA+ID4gPiA+ID4gdGh1cyByZXF1aXJlZCwgb3IgaXQncyBub3QgYW5kIHRo
ZXJlZm9yZSBzaG91bGQgYmUgb21pdHRlZCBmcm9tCj4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4g
PiBkZXNjcmlwdGlvbi4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gW0p1c3QgYXJndWluZyBhYm91dCB0
aGUgY2xvY2sgaGVyZSwgdGhlIGFyZ3VtZW50YXRpb24gaXMgYW5hbG9nb3VzCj4gPiA+ID4gPiBm
b3IKPiA+ID4gPiA+IHRoZSByZXNldCBjb250cm9sLl0KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRnJv
bSB0aGUgZHJpdmVyJ3MgcGVyc3BlY3RpdmUgaXQncyBvcHRpb25hbDogVGhlcmUgYXJlIGRldmlj
ZXMgd2l0aAo+ID4gPiA+ID4gYW5kCj4gPiA+ID4gPiB3aXRob3V0IGEgYnVzIGNsb2NrLiBUaGlz
IGRvZXNuJ3QgbWVhbiB0aGF0IHlvdSBjYW4ganVzdCBpZ25vcmUgdGhpcwo+ID4gPiA+ID4gY2xv
Y2sgaWYgaXQncyBzcGVjaWZpZWQuIEl0J3Mgb3B0aW9uYWwgaW4gdGhlIHNlbnNlICJJZiBkdCBk
b2Vzbid0Cj4gPiA+ID4gPiBzcGVjaWZ5IGl0LCB0aGVuIGFzc3VtZSB0aGlzIGlzIGEgZGV2aWNl
IHRoYXQgZG9lc24ndCBoYXZlIGl0IGFuZCBzbwo+ID4gPiA+ID4geW91Cj4gPiA+ID4gPiBkb24n
dCBuZWVkIHRvIGhhbmRsZSBpdC4iIGJ1dCBub3QgaW4gdGhlIHNlbnNlICJpdCBkb2Vzbid0IG1h
dHRlciBpZgo+ID4gPiA+ID4geW91IGhhbmRsZSBpdCBvciBub3QuIi4KPiA+ID4gPiA+IAo+ID4g
PiA+ID4gT3RoZXIgdGhhbiB0aGF0IEknbSBvbiB5b3VyIHNpZGUuIFNvIGZvciBleGFtcGxlIEkg
dGhpbmsgaXQncyBub3QKPiA+ID4gPiA+IG9wdGltYWwgdGhhdCBncGlvZF9nZXRfb3B0aW9uYWwg
cmV0dXJucyBOVUxMIGlmIEdQSU9MSUI9biBvciB0aGF0Cj4gPiA+ID4gPiBkZXZtX3Jlc2V0X2Nv
bnRyb2xfZ2V0X29wdGlvbmFsIHJldHVybnMgTlVMTCBpZiBSRVNFVF9DT05UUk9MTEVSPW4KPiA+
ID4gPiA+IGJlY2F1c2UgdGhpcyBoaWRlcyBleGFjdGx5IHRoZSBraW5kIG9mIHByb2JsZW0geW91
IHBvaW50IG91dCBoZXJlLgo+ID4gPiA+IAo+ID4gPiA+IEkgdGhpbmsgdGhlcmUncyBtaXN1bmRl
cnN0YW5kaW5nLiBJIG9ubHkgYXJndWVkIHRoYXQgd2UgY2FuJ3QgdXNlCj4gPiA+ID4gCj4gPiA+
ID4gY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSIsCj4gPiA+ID4gCj4gPiA+
ID4gCSAiYWxsd2lubmVyLHN1bjVpLWExMHMtcHdtIjsKPiA+ID4gPiAKPiA+ID4gPiBhcyB5b3Ug
c3VnZ2VzdGVkIGFuZCBvbmx5Cj4gPiA+ID4gCj4gPiA+ID4gY29tcGF0aWJsZSA9ICJhbGx3aW5u
ZXIsc3VuNTBpLWg2LXB3bSI7Cj4gPiA+ID4gCj4gPiA+ID4gd2lsbCB3b3JrLiBOb3QgYmVjYXVz
ZSBvZiBkcml2ZXIgaXRzZWxmIChpdCBjYW4gc3RpbGwgdXNlIF9vcHRpb25hbCgpCj4gPiA+ID4g
dmFyaWFudHMpLCBidXQgYmVjYXVzZSBvZiBEVCBiaW5kaW5nLCB3aGljaCBzaG91bGQgYmUgYWJs
ZSB0byB2YWxpZGF0ZQo+ID4gPiA+IEg2Cj4gPiA+ID4gUFdNIG5vZGUgLSByZXNldCBhbmQgYnVz
IGNsb2NrIHJlZmVyZW5jZXMgYXJlIHJlcXVpcmVkIGluIHRoaXMgY2FzZS4KPiA+ID4gCj4gPiA+
IEkgdGhpbmsgSSB1bmRlcnN0b29kLiBJbiBteSBleWVzIHRoZXJlIGlzIG5vIG5lZWQgdG8gbGV0
IHZhbGlkYXRpb24gb2YKPiA+ID4gdGhlIERUIGJpbmRpbmdzIGNhdGNoIGEgbWlzc2luZyAib3B0
aW9uYWwiIHByb3BlcnR5IHRoYXQgaXMgbmVlZGVkIG9uCj4gPiA+IEg2Lgo+ID4gPiAKPiA+ID4g
WW91IGhhdmUgdG8gZHJhdyB0aGUgbGluZSBzb21ld2hlcmUgd2hpY2ggaW5mb3JtYXRpb24gdGhl
IGRyaXZlciBoYXMKPiA+ID4gaGFyZC1jb2RlZCBhbmQgd2hhdCBpcyBvbmx5IHByb3ZpZGVkIGJ5
IHRoZSBkZXZpY2UgdHJlZSBhbmQganVzdCBhc3N1bWVkCj4gPiA+IHRvIGJlIGNvcnJlY3QgYnkg
dGhlIGRyaXZlci4gWW91IGFyZ3VlIHRoZSBkcml2ZXIgc2hvdWxkIGtub3cgdGhhdAo+ID4gCj4g
PiBObywgaW4gdGhpcyB0aHJlYWQgSSBhcmd1ZSB0aGF0IERUIHZhbGlkYXRpb24gdG9vbCwgZXhl
Y3V0ZWQgYnkKPiA+IAo+ID4gbWFrZSBBUkNIPWFybTY0IGR0YnNfY2hlY2sKPiA+IAo+ID4gc2hv
dWxkIGNhdGNoIHRoYXQuIFRoaXMgaXMgbm90IGEgZHJpdmVyLCBidXQgRFQgYmluZGluZyBkZXNj
cmliZWQgaW4gWUFNTC4KPiAKPiBUaGUgYXJndW1lbnRhdGlvbiBpcyB0aGUgc2FtZS4gZHRic19j
aGVjayBkb2Vzbid0IG5vdGljZSBpZiB0aGUgYmFzZQo+IGFkZHJlc3Mgb2YgeW91ciAiYWxsd2lu
bmVyLHN1bjUwaS1oNi1wd20iIGRldmljZSBpcyB3cm9uZy4gU28gd2h5IHNob3VsZAo+IGl0IGNh
dGNoIGEgbWlzc2luZyByZXNldCBjb250cm9sbGVyIHBoYW5kbGU/CgpPZiBjb3Vyc2UgY2hlY2tp
bmcgYWN0dWFsIHZhbHVlcyBvZiBub2RlIHByb3BlcnRpZXMgZG9lc24ndCBtYWtlIHNlbnNlIGlu
IApkdGJzX2NoZWNrLCBvdGhlcndpc2Ugd2Ugd291bGQgaGF2ZSBtaWxsaW9uIERUIGJpbmRpbmdz
LiBJZiB5b3UgaGF2ZSAxMCBjb3BpZXMgCm9mIHRoZSBzYW1lIElQIGNvcmUsIG9mIGNvdXJzZSB5
b3Ugd291bGQgdXNlIHNhbWUgY29tcGF0aWJsZSwgYnV0IGFjdHVhbCAKcmVnaXN0ZXIgcmFuZ2Vz
LCBpbnRlcnJ1cHRzLCBldGMuIHdvdWxkIGJlIGRpZmZlcmVudCBpbiBEVCBub2Rlcy4KCkF0IHRo
aXMgcG9pbnQgSSB3b3VsZCBtYWtlIHNhbWUgYXJndW1lbnQgYXMgd2VyZSBtYWRlIGJlZm9yZSwg
YnV0IHRoZXJlIGlzIG5vIApwb2ludCBnb2luZyBpbiBjaXJjbGVzLiBJJ20gaW50ZXJlc3RlZCB3
aGF0IGhhdmUgRFQgbWFpbnRhaW5lcnMgdG8gc2F5LgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
