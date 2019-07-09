Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602B363335
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ls/jA49gu/dg7DjE1vWeJlDNAukuVZpor9cxVTO7OpM=; b=r3fNkU868HIVPW
	otLrJEFMfvEGUG9uFz9EcRP0u4Wli7nUN/nHwoUq8agFy/kYjuPNwG5SmH2hJiRyGT5PRxyrnNCxg
	GxJSJFlzcGHVpm0kw/Wo8IRb7/MiFCBO2/EdHEGnubbAiNJWQfENVwZSbaJY9TsShl/Nb0Km9AyYG
	BsCYSIqvXMSmSrFqAHTNX5mFEqCMvaThjG7wQxfyypCTVbUKg8fluchOs4XPQIHgt88zOYuwdhAUL
	dmXB2RNjQz8s3xtYtjy5MUV+00ckaJW8ucIVrjc0Yjk2YRJF2jEpM6TJnzMRRh5h/T3xz/RLEuW11
	6YU7dvvw6kZYuvTuAk+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklyQ-0001nm-Fn; Tue, 09 Jul 2019 08:59:42 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkly9-0001nC-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:59:31 +0000
Received: from [199.195.250.187] (port=56785 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hklxs-0001ks-Dh; Tue, 09 Jul 2019 09:59:12 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 557806E5CF;
 Tue,  9 Jul 2019 08:58:42 +0000 (UTC)
Date: Tue, 09 Jul 2019 16:58:35 +0800
In-Reply-To: <20190709085532.cdqv7whuesrjs64c@flea>
References: <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
MIME-Version: 1.0
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <72E7C765-3660-413A-8450-94BE4B3D1345@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_015925_695292_7FBB4AD5 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>, Torsten Duwe <duwe@lst.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDfmnIg55pelIEdNVCswODowMCDkuIvljYg0OjU1OjMyLCBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiDlhpnliLA6Cj5PbiBNb24sIEp1bCAwOCwg
MjAxOSBhdCAwNTo0OToyMVBNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPj4gPiA+
IE1heWJlIGluc3RlYWQgb2YgZWRwLWNvbm5lY3RvciBvbmUgd291bGQgaW50cm9kdWNlIGludGVn
cmF0b3Incwo+c3BlY2lmaWMKPj4gPiA+IGNvbm5lY3RvciwgZm9yIGV4YW1wbGUgd2l0aCBjb21w
YXRpYmxlCj4ib2xpbWV4LHRlcmVzLWVkcC1jb25uZWN0b3IiCj4+ID4gPiB3aGljaCBzaG91bGQg
Zm9sbG93IGVkcCBhYnN0cmFjdCBjb25uZWN0b3IgcnVsZXM/IFRoaXMgd2lsbCBiZSBhdAo+bGVh
c3QKPj4gPiA+IGNvbnNpc3RlbnQgd2l0aCBiZWxvdyBwcmVzZW50YXRpb25bMV0gLSBlRFAgcmVx
dWlyZW1lbnRzIGRlcGVuZHMKPm9uCj4+ID4gPiBpbnRlZ3JhdG9yLiBUaGVuIGlmIG9saW1leCBo
YXMgc3RhbmRhcmQgd2F5IG9mIGRlYWxpbmcgd2l0aAo+cGFuZWxzCj4+ID4gPiBwcmVzZW50IGlu
IG9saW1leC90ZXJlcyBwbGF0Zm9ybXMgdGhlIGRyaXZlciB3b3VsZCB0aGVuIGNyZWF0ZQo+PiA+
ID4gZHJtX3BhbmVsL2RybV9jb25uZWN0b3IvZHJtX2JyaWRnZSg/KSBhY2NvcmRpbmcgdG8gdGhl
c2UgcnVsZXMsIEkKPmd1ZXNzLgo+PiA+ID4gQW55d2F5IGl0IHN0aWxsIGxvb2tzIGZpc2h5IGZv
ciBtZSA6KSwgbWF5YmUgYmVjYXVzZSBJIGFtIG5vdAo+PiA+ID4gZmFtaWxpYXJpemVkIHdpdGgg
ZGV0YWlscyBvZiB0aGVzZSBwbGF0Zm9ybXMuCj4+ID4KPj4gPiBUaGF0IG1ha2VzIHNlbnNlIHll
cwo+Pgo+PiBBY3R1YWxseSwgaXQgbWFrZXMgbm8gc2Vuc2UgYXQgYWxsLiBDdXJyZW50IGltcGxl
bWVudGF0aW9uIGZvcgo+YW54NjM0NQo+PiBkcml2ZXIgd29ya3MgZmluZSBhcyBpcyB3aXRoIGFu
eSBwYW5lbCBzcGVjaWZpZWQgYXNzdW1pbmcgcGFuZWwKPmRlbGF5cwo+PiBhcmUgbG9uZyBlbm91
Z2ggZm9yIGNvbm5lY3RlZCBwYW5lbC4gSXQganVzdCBkb2Vzbid0IHVzZSBwYW5lbAo+dGltaW5n
cwo+PiBmcm9tIHRoZSBkcml2ZXIuIENyZWF0aW5nIGEgcGxhdGZvcm0gZHJpdmVyIGZvciBjb25u
ZWN0b3IgaXRzZWxmCj5sb29rcwo+PiByZWR1bmRhbnQgc2luY2UgaXQgY2FuJ3QgYmUgcmV1c2Vk
LCBpdCBkb2Vzbid0IGRlc2NyaWJlIGFjdHVhbAo+PiBoYXJkd2FyZSBhbmQgaXQncyBqdXN0IGRl
ZmVhdHMgcHVycG9zZSBvZiBEVCBieSBpbnRyb2R1Y2luZwo+PiBib2FyZC1zcGVjaWZpYyBjb2Rl
Lgo+Cj5JJ20gbm90IHN1cmUgd2hlcmUgeW91IGdvdCB0aGUgaWRlYSB0aGF0IHRoZSBwdXJwb3Nl
IG9mIERUIGlzIHRvIG5vdAo+aGF2ZSBhbnkgYm9hcmQtc3BlY2lmaWMgY29kZS4KPgo+SXQncyBw
ZXJmZWN0bHkgZmluZSB0byBoYXZlIHNvbWUsIHRoYXQncyBldmVuIHdoeSB0aGVyZSdzIGEgY29t
cGF0aWJsZQo+YXNzaWduZWQgdG8gZWFjaCBhbmQgZXZlcnkgYm9hcmQuCj4KPldoYXQgdGhlIERU
IGlzIGFib3V0IGlzIGFsbG93aW5nIHVzIHRvIGhhdmUgYSBnZW5lcmljIGJlaGF2aW91ciB0aGF0
Cj53ZSBjYW4gZGV0ZWN0OiB3ZSBjYW4gaGF2ZSBhIGdpdmVuIGJlaGF2aW91ciBmb3IgYSBnaXZl
biBib2FyZCwgYW5kIGEKPnNlcGFyYXRlIG9uZSBmb3IgYW5vdGhlciBvbmUsIGFuZCB0aGlzIHdp
bGwgYmUgZXZhbHVhdGVkIGF0IHJ1bnRpbWUuCj4KPlRoaXMgaXMgKmV4YWN0bHkqIHdoYXQgdGhp
cyBpcyBhYm91dDogd2UgY2FuIGhhdmUgYSBjb21wYXRpYmxlIHRoYXQKPnNldHMgYSBnaXZlbiwg
bW9yZSBzcGVjaWZpYywgYmVoYXZpb3VyIChvbGltZXgsdGVyZXMtZWRwLWNvbm5lY3RvcikKPndo
aWxlIHNheWluZyB0aGF0IHRoaXMgaXMgY29tcGF0aWJsZSB3aXRoIHRoZSBnZW5lcmljIGJlaGF2
aW91cgo+KGVkcC1jb25uZWN0b3IpLiBUaGF0IHdheSwgYW55IE9TIHdpbGwga25vdyB3aGF0IHF1
aXJrIHRvIGFwcGx5IGlmCj5uZWVkZWQsIGFuZCBpZiBub3QgdGhhdCBpdCBjYW4gdXNlIHRoZSBn
ZW5lcmljIGJlaGF2aW91ci4KPgo+QW5kIHdlIGNvdWxkIGNyZWF0ZSBhIGdlbmVyaWMgZHJpdmVy
LCBmb3IgdGhlIGdlbmVyaWMgYmVoYXZpb3VyIGlmCj5uZWVkZWQuCj4KPj4gVGhlcmUncyBhbm90
aGVyIGlzc3VlOiBpZiB3ZSBpbnRyb2R1Y2UgZWRwLWNvbm5lY3RvciB3ZSdsbCBoYXZlIHRvCj4+
IHNwZWNpZnkgcG93ZXIgdXAgZGVsYXlzIHNvbWV3aGVyZSAoaW4gZHRzPyBvciBpbiBwbGF0Zm9y
bSBkcml2ZXI/KSwKPnNvCj4+IGVkcC1jb25uZWN0b3IgZG9lc24ndCByZWFsbHkgc29sdmUgdGhl
IGlzc3VlIG9mIG11bHRpcGxlIHBhbmVscyB3aXRoCj4+IHNhbWUgbW90aGVyYm9hcmQuCj4KPkFu
ZCB0aGF0J3Mgd2hhdCB0aGF0IGNvbXBhdGlibGUgaXMgYWJvdXQgOikKCk1heWJlIHdlIGNhbiBp
bnRyb2R1Y2UgYSBjb25uZWN0b3Igdy9vIGFueSBkcml2ZXIganVzdCBsaWtlIGhkbWktY29ubmVj
dG9yPwoKPgo+PiBJJ2Qgc2F5IERUIG92ZXJsYXlzIHNob3VsZCBiZSBwcmVmZXJyZWQgc29sdXRp
b24gaGVyZSwgbm90IGFub3RoZXIKPj4gY29ubmVjdG9yIGJpbmRpbmcuCj4KPk92ZXJsYXlzIGFy
ZSBhIHdheSB0byBhcHBseSBhIGRldmljZSB0cmVlIGR5bmFtaWNhbGx5LiBJdCdzIG9ydGhvZ29u
YWwKPnRvIHRoZSBiaW5kaW5nLgo+Cj5NYXhpbWUKPgo+LS0KPk1heGltZSBSaXBhcmQsIEJvb3Rs
aW4KPkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPmh0dHBzOi8vYm9vdGxp
bi5jb20KCi0tIArkvb/nlKggSy05IE1haWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9pZOiuvuWkh+OA
ggoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
