Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B976179350
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FP7pD/oM5o6AKlzFgOtKYuStPlQMSBRpIWPXssY4F5c=; b=aAwJ9FtAVDdPq7
	debcgZOYqFTKoU4npnmzHhV/BBtfgjkXBAEv9qGD9y+4eQn58IxatXM/Pa3MYfrBY5wGBE6tPZzPW
	WbXhRo1P+Rp7R4oMM4EU8Qp6kqPlas2D73MWeJue5atyddFMec+N+Vj2OhioJ/tHmHMC/NmCADOFI
	JAAfvloMeBGJCG6ux0EYsR/yHhC/YBKq8bsu6ndn9zrItHAWChkiSuoWZ1EcZs3mTLSOkWTrTvKAv
	HWux2E7A7ewyUZurwYqxg1Nz8IF+tVpwnD4J8M00aaqyHu55aq7W72yaz9kChObut67gvN3XYhfmD
	tXK1L4D0byfjoTXMPMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAbm-0005Rm-VY; Mon, 29 Jul 2019 18:42:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAZp-0003yW-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:40:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAZg-0004z0-MR; Mon, 29 Jul 2019 20:40:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAZd-0001w2-Kr; Mon, 29 Jul 2019 20:40:41 +0200
Date: Mon, 29 Jul 2019 20:40:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190729184041.vlvfz3vz3ykhufdk@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
 <20190729162428.bxuzgxg5sjqptlbp@pengutronix.de>
 <2346193.MplWYqIveT@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2346193.MplWYqIveT@jernej-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114053_589602_C2AD4B3C 
X-CRM114-Status: GOOD (  31.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDY6NDA6MTVQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBwb25lZGVsamVrLCAyOS4ganVsaWogMjAxOSBvYiAxODoyNDoyOCBDRVNU
IGplIFV3ZSBLbGVpbmUtS8O2bmlnIAo+IG5hcGlzYWwoYSk6Cj4gPiBIZWxsbywKPiA+IAo+ID4g
T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MDk6NDBBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+ID4gPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjowNyBBTSBVd2UgS2xlaW5lLUvD
tm5pZwo+ID4gPiAKPiA+ID4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6
Cj4gPiA+ID4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDU6NTU6NTJQTSArMDIwMCwgSmVybmVq
IMWga3JhYmVjIHdyb3RlOgo+ID4gPiA+ID4gRG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5
IG9iIDA4OjQwOjMwIENFU1QgamUgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiA+IAo+ID4gPiA+
ID4gbmFwaXNhbChhKToKPiA+ID4gPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NDA6
NDNQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20t
c3VuNGkuYwo+ID4gPiA+ID4gPiA+IEBAIC0zMzEsNiArMzMxLDEzIEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgc3VuNGlfcHdtX2RhdGEKPiA+ID4gPiA+ID4gPiBzdW40aV9wd21fc2luZ2xlX2J5cGFz
cyA9IHs+Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gICAubnB3bSA9IDEsCj4gPiA+ID4g
PiA+ID4gIAo+ID4gPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHN1bjUwaV9wd21fZHVhbF9ieXBhc3Nf
Y2xrX3JzdAo+ID4gPiA+ID4gPiA+ID0gewo+ID4gPiA+ID4gPiA+ICsgLmhhc19idXNfY2xvY2sg
PSB0cnVlLAo+ID4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKPiA+
ID4gPiA+ID4gPiArIC5oYXNfcmVzZXQgPSB0cnVlLAo+ID4gPiA+ID4gPiA+ICsgLm5wd20gPSAy
LAo+ID4gPiA+ID4gPiA+ICt9Owo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lk
c1tdID0gewo+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiAgIHsKPiA+ID4gPiA+ID4gPiAg
IAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGkt
YTEwLXB3bSIsCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQEAgLTM0Nyw2ICszNTQsOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZAo+ID4gPiA+ID4gPiA+IHN1bjRpX3B3
bV9kdF9pZHNbXSA9Cj4gPiA+ID4gPiA+ID4gewo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ICAgfSwgewo+ID4gPiA+ID4gPiA+ICAgCj4gPiA+ID4gPiA+ID4gICAgICAgICAgIC5jb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAu
ZGF0YSA9ICZzdW40aV9wd21fc2luZ2xlX2J5cGFzcywKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiArIH0sIHsKPiA+ID4gPiA+ID4gPiArICAgICAgICAgLmNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjUwaS1oNi1wd20iLAo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAuZGF0YSA9ICZzdW41
MGlfcHdtX2R1YWxfYnlwYXNzX2Nsa19yc3QsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJZiB5
b3UgZm9sbG93IG15IHN1Z2dlc3Rpb24gZm9yIHRoZSB0d28gcHJldmlvdXMgcGF0Y2hlcywgeW91
IGNhbgo+ID4gPiA+ID4gPiBqdXN0Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiB1c2U6Cj4gPiA+
ID4gPiA+ICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIiwKPiA+ID4g
PiA+ID4gICAgICJhbGx3aW5uZXIsc3VuNWktYTEwcy1wd20iOwo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gYW5kIGRyb3AgdGhpcyBwYXRjaC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gTWF4aW1lIGZv
dW5kIG91dCB0aGF0IGl0J3Mgbm90IGNvbXBhdGlibGUgd2l0aCBBMTBzIGR1ZSB0byBkaWZmZXJl
bmNlCj4gPiA+ID4gPiBpbiBieXBhc3MgYml0LCBidXQgeWVzLCBJIGtub3cgd2hhdCB5b3UgbWVh
bi4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2luY2UgSDYgcmVxdWlyZXMgcmVzZXQgbGluZSBhbmQg
YnVzIGNsb2NrIHRvIGJlIHNwZWNpZmllZCwgaXQncyBub3QKPiA+ID4gPiA+IGNvbXBhdGlibGUg
ZnJvbSBEVCBiaW5kaW5nIHNpZGUuIE5ldyB5YW1sIGJhc2VkIGJpbmRpbmcgbXVzdCBzb21laG93
Cj4gPiA+ID4gPiBrbm93IHRoYXQgaW4gb3JkZXIgdG8gYmUgYWJsZSB0byB2YWxpZGF0ZSBEVCBu
b2RlLCBzbyBpdCBuZWVkcwo+ID4gPiA+ID4gc3RhbmRhbG9uZSBjb21wYXRpYmxlLiBIb3dldmVy
LCBkZXBlbmRpbmcgb24gY29uY2x1c2lvbnMgb2Ygb3RoZXIKPiA+ID4gPiA+IGRpc2N1c3Npb25z
LCB0aGlzIG5ldyBjb21wYXRpYmxlIGNhbiBiZSBhc3NvY2lhdGVkIHdpdGggYWxyZWFkeQo+ID4g
PiA+ID4gYXZhaWxhYmxlIHF1aXJrcyBzdHJ1Y3R1cmUgb3IgaGF2ZSBpdCdzIG93bi4+ID4gCj4g
PiA+ID4gSSBjYW5ub3QgZm9sbG93LiBZb3Ugc2hvdWxkIGJlIGFibGUgdG8gc3BlY2lmeSBpbiB0
aGUgYmluZGluZyB0aGF0IHRoZQo+ID4gPiA+IHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBpcyBv
cHRpb25hbC4gVGhlbiBhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bQo+ID4gPiA+IHdpdGhvdXQgYSBy
ZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgYWxzbyB2ZXJpZmllcywgYnV0IHRoaXMgZG9lc24ndAo+
ID4gPiA+IHJlYWxseSBodXJ0IChhbmQgd2hvIGtub3dzLCBtYXliZSB0aGUgbmV4dCBhbGx3aW5u
ZXIgY2hpcCBuZWVkcyBleGFjdGx5Cj4gPiA+ID4gdGhpcykuCj4gPiA+IAo+ID4gPiBJdCBpcyBu
b3Qgb3B0aW9uYWwuIEl0IHdpbGwgbm90IHdvcmsgaWYgZWl0aGVyIHRoZSBjbG9ja3Mgb3IgcmVz
ZXQKPiA+ID4gY29udHJvbHMKPiA+ID4gYXJlIG1pc3NpbmcuIEhvdyB3b3VsZCB0aGVzZSBiZSBv
cHRpb25hbCBhbnl3YXk/IEVpdGhlciBpdCdzIGNvbm5lY3RlZCBhbmQKPiA+ID4gdGh1cyByZXF1
aXJlZCwgb3IgaXQncyBub3QgYW5kIHRoZXJlZm9yZSBzaG91bGQgYmUgb21pdHRlZCBmcm9tIHRo
ZQo+ID4gPiBkZXNjcmlwdGlvbi4KPiA+IAo+ID4gW0p1c3QgYXJndWluZyBhYm91dCB0aGUgY2xv
Y2sgaGVyZSwgdGhlIGFyZ3VtZW50YXRpb24gaXMgYW5hbG9nb3VzIGZvcgo+ID4gdGhlIHJlc2V0
IGNvbnRyb2wuXQo+ID4gCj4gPiBGcm9tIHRoZSBkcml2ZXIncyBwZXJzcGVjdGl2ZSBpdCdzIG9w
dGlvbmFsOiBUaGVyZSBhcmUgZGV2aWNlcyB3aXRoIGFuZAo+ID4gd2l0aG91dCBhIGJ1cyBjbG9j
ay4gVGhpcyBkb2Vzbid0IG1lYW4gdGhhdCB5b3UgY2FuIGp1c3QgaWdub3JlIHRoaXMKPiA+IGNs
b2NrIGlmIGl0J3Mgc3BlY2lmaWVkLiBJdCdzIG9wdGlvbmFsIGluIHRoZSBzZW5zZSAiSWYgZHQg
ZG9lc24ndAo+ID4gc3BlY2lmeSBpdCwgdGhlbiBhc3N1bWUgdGhpcyBpcyBhIGRldmljZSB0aGF0
IGRvZXNuJ3QgaGF2ZSBpdCBhbmQgc28geW91Cj4gPiBkb24ndCBuZWVkIHRvIGhhbmRsZSBpdC4i
IGJ1dCBub3QgaW4gdGhlIHNlbnNlICJpdCBkb2Vzbid0IG1hdHRlciBpZgo+ID4geW91IGhhbmRs
ZSBpdCBvciBub3QuIi4KPiA+IAo+ID4gT3RoZXIgdGhhbiB0aGF0IEknbSBvbiB5b3VyIHNpZGUu
IFNvIGZvciBleGFtcGxlIEkgdGhpbmsgaXQncyBub3QKPiA+IG9wdGltYWwgdGhhdCBncGlvZF9n
ZXRfb3B0aW9uYWwgcmV0dXJucyBOVUxMIGlmIEdQSU9MSUI9biBvciB0aGF0Cj4gPiBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsIHJldHVybnMgTlVMTCBpZiBSRVNFVF9DT05UUk9MTEVS
PW4KPiA+IGJlY2F1c2UgdGhpcyBoaWRlcyBleGFjdGx5IHRoZSBraW5kIG9mIHByb2JsZW0geW91
IHBvaW50IG91dCBoZXJlLgo+ID4KPiAKPiBJIHRoaW5rIHRoZXJlJ3MgbWlzdW5kZXJzdGFuZGlu
Zy4gSSBvbmx5IGFyZ3VlZCB0aGF0IHdlIGNhbid0IHVzZQo+IAo+IGNvbXBhdGlibGUgPSAiYWxs
d2lubmVyLHN1bjUwaS1oNi1wd20iLAo+IAkgImFsbHdpbm5lcixzdW41aS1hMTBzLXB3bSI7Cj4g
Cj4gYXMgeW91IHN1Z2dlc3RlZCBhbmQgb25seSAKPiAKPiBjb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW41MGktaDYtcHdtIjsgCj4gCj4gd2lsbCB3b3JrLiBOb3QgYmVjYXVzZSBvZiBkcml2ZXIg
aXRzZWxmIChpdCBjYW4gc3RpbGwgdXNlIF9vcHRpb25hbCgpIAo+IHZhcmlhbnRzKSwgYnV0IGJl
Y2F1c2Ugb2YgRFQgYmluZGluZywgd2hpY2ggc2hvdWxkIGJlIGFibGUgdG8gdmFsaWRhdGUgSDYg
UFdNIAo+IG5vZGUgLSByZXNldCBhbmQgYnVzIGNsb2NrIHJlZmVyZW5jZXMgYXJlIHJlcXVpcmVk
IGluIHRoaXMgY2FzZS4KCkkgdGhpbmsgSSB1bmRlcnN0b29kLiBJbiBteSBleWVzIHRoZXJlIGlz
IG5vIG5lZWQgdG8gbGV0IHZhbGlkYXRpb24gb2YKdGhlIERUIGJpbmRpbmdzIGNhdGNoIGEgbWlz
c2luZyAib3B0aW9uYWwiIHByb3BlcnR5IHRoYXQgaXMgbmVlZGVkIG9uCkg2LgoKWW91IGhhdmUg
dG8gZHJhdyB0aGUgbGluZSBzb21ld2hlcmUgd2hpY2ggaW5mb3JtYXRpb24gdGhlIGRyaXZlciBo
YXMKaGFyZC1jb2RlZCBhbmQgd2hhdCBpcyBvbmx5IHByb3ZpZGVkIGJ5IHRoZSBkZXZpY2UgdHJl
ZSBhbmQganVzdCBhc3N1bWVkCnRvIGJlIGNvcnJlY3QgYnkgdGhlIGRyaXZlci4gWW91IGFyZ3Vl
IHRoZSBkcml2ZXIgc2hvdWxkIGtub3cgdGhhdCBpZiBpdApjYXJlcyBmb3IgYSAiYWxsd2lubmVy
LHN1bjUwaS1oNi1wd20iIGRldmljZSBpdCBzaG91bGQga25vdyAoYW5kIGNoZWNrKQp0aGF0IHRo
ZXJlIGlzIGEgY2xvY2sgbmFtZWQgImJ1cyIgYW5kIGEgcmVzZXRzIHByb3BlcnR5IHRoYXQgbGlu
a3MgdG8gYQpyZXNldCBjb250cm9sbGVyLiBIb3cgaXMgdGhhdCBkaWZmZXJlbnQgZnJvbSBjaGVj
a2luZyB0aGF0IHRoZSBiYXNlCmFkZHJlc3MgaXMgMHgwMzAwYTAwMCBvciB0aGF0IHRoZSAicHdt
IiBjbG9jayBpcyB0aGUgb3NjMjRNIGNsb2NrCnJ1bm5pbmcgYXQgMjQgTUh6PyBUaGlzIGlzbid0
IGNoZWNrZWQgaW4gdGhlIGRyaXZlciBvciB0aGUgZHQgc2NoZW1hLgpTdGlsbCBpZiB0aGUgZGV2
aWNlIHRyZWUgZ290IG9uZSBvZiB0aGVtIHdyb25nIHRoaXMgeWllbGRzIGFuCm5vbi13b3JraW5n
IHB3bSBkZXZpY2UgdGhhdCBpc24ndCBjYXRjaGVkIGluIHRoZSBkcml2ZXIuCgpCZXN0IHJlZ2Fy
ZHMKVXdlCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
VXdlIEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25z
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
