Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656187913F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itLwYIRjXBLLmLWjkWKFF+h5rLMvNbHKtfGTf8Rkb18=; b=YsEGRzYPmXPeql
	ilgqiAcFA0dp86id58uz/ZPw1b+McQWm1o3sAE3TTcZcMmqQqWMvicElEjDt/7JW4/5lahVr4UYqo
	gqVPAKXhx6H8K+t7ffqIIktUiRRIROUiRkObwLUUioewmGTcXq++yXXvlPgXQg2bhLpE1K6MBGJ+U
	lsYxZUOgOcvKomCwVVtzqL67xCwJFd1pcEd/xFjr86YpIOZPZBRWAEBEBxZVCll5WbQFlu86b0BbI
	PfF0Sg1g/eLWwJaxJQVw+HoHOKcd9E6TkKVrqhc1OMa+7YNnh/E1RuCYCrc0L2OGQyez4oboNUYIJ
	EgVKtERZCgU8AYc5Ub4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8hW-0001jj-OF; Mon, 29 Jul 2019 16:40:43 +0000
Received: from mailoutvs4.siol.net ([185.57.226.195] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8hA-0001j5-Va
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:40:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 56D3A5220E8;
 Mon, 29 Jul 2019 18:40:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id rCV9RUjdNIE8; Mon, 29 Jul 2019 18:40:16 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id CA35F5224B7;
 Mon, 29 Jul 2019 18:40:16 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 508A35224B1;
 Mon, 29 Jul 2019 18:40:16 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: linux-sunxi@googlegroups.com, u.kleine-koenig@pengutronix.de
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Date: Mon, 29 Jul 2019 18:40:15 +0200
Message-ID: <2346193.MplWYqIveT@jernej-laptop>
In-Reply-To: <20190729162428.bxuzgxg5sjqptlbp@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
 <20190729162428.bxuzgxg5sjqptlbp@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_094021_180958_95DF9B35 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.195 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDE4OjI0OjI4IENFU1QgamUgVXdlIEts
ZWluZS1Lw7ZuaWcgCm5hcGlzYWwoYSk6Cj4gSGVsbG8sCj4gCj4gT24gVHVlLCBKdWwgMzAsIDIw
MTkgYXQgMTI6MDk6NDBBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gVHVlLCBK
dWwgMzAsIDIwMTkgYXQgMTI6MDcgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+IAo+ID4gPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+IE9uIE1vbiwgSnVsIDI5LCAy
MDE5IGF0IDA1OjU1OjUyUE0gKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+ID4gPiBE
bmUgcG9uZWRlbGplaywgMjkuIGp1bGlqIDIwMTkgb2IgMDg6NDA6MzAgQ0VTVCBqZSBVd2UgS2xl
aW5lLUvDtm5pZwo+ID4gPiA+IAo+ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBPbiBGcmks
IEp1bCAyNiwgMjAxOSBhdCAwODo0MDo0M1BNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToK
PiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gQEAgLTMzMSw2ICszMzEsMTMg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YQo+ID4gPiA+ID4gPiBzdW40aV9w
d21fc2luZ2xlX2J5cGFzcyA9IHs+Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgIC5ucHdtID0g
MSwKPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiAgfTsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHN1bjUwaV9wd21fZHVhbF9ieXBh
c3NfY2xrX3JzdAo+ID4gPiA+ID4gPiA9IHsKPiA+ID4gPiA+ID4gKyAuaGFzX2J1c19jbG9jayA9
IHRydWUsCj4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKPiA+ID4g
PiA+ID4gKyAuaGFzX3Jlc2V0ID0gdHJ1ZSwKPiA+ID4gPiA+ID4gKyAubnB3bSA9IDIsCj4gPiA+
ID4gPiA+ICt9Owo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewo+ID4gPiA+
ID4gPiAgCj4gPiA+ID4gPiA+ICAgewo+ID4gPiA+ID4gPiAgIAo+ID4gPiA+ID4gPiAgICAgICAg
ICAgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLAo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gQEAgLTM0Nyw2ICszNTQsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZAo+ID4gPiA+ID4gPiBzdW40aV9wd21fZHRfaWRzW10gPQo+ID4gPiA+ID4gPiB7Cj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgIH0sIHsKPiA+ID4gPiA+ID4gICAKPiA+ID4gPiA+ID4g
ICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAo+ID4gPiA+
ID4gPiAgICAgICAgICAgLmRhdGEgPSAmc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MsCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiArIH0sIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgIC5jb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIiwKPiA+ID4gPiA+ID4gKyAgICAgICAgIC5kYXRh
ID0gJnN1bjUwaV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdCwKPiA+ID4gPiA+IAo+ID4gPiA+ID4g
SWYgeW91IGZvbGxvdyBteSBzdWdnZXN0aW9uIGZvciB0aGUgdHdvIHByZXZpb3VzIHBhdGNoZXMs
IHlvdSBjYW4KPiA+ID4gPiA+IGp1c3QKPiA+ID4gPiA+IAo+ID4gPiA+ID4gdXNlOgo+ID4gPiA+
ID4gICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iLAo+ID4gPiA+ID4g
ICAgICJhbGx3aW5uZXIsc3VuNWktYTEwcy1wd20iOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBhbmQg
ZHJvcCB0aGlzIHBhdGNoLgo+ID4gPiA+IAo+ID4gPiA+IE1heGltZSBmb3VuZCBvdXQgdGhhdCBp
dCdzIG5vdCBjb21wYXRpYmxlIHdpdGggQTEwcyBkdWUgdG8gZGlmZmVyZW5jZQo+ID4gPiA+IGlu
IGJ5cGFzcyBiaXQsIGJ1dCB5ZXMsIEkga25vdyB3aGF0IHlvdSBtZWFuLgo+ID4gPiA+IAo+ID4g
PiA+IFNpbmNlIEg2IHJlcXVpcmVzIHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayB0byBiZSBzcGVj
aWZpZWQsIGl0J3Mgbm90Cj4gPiA+ID4gY29tcGF0aWJsZSBmcm9tIERUIGJpbmRpbmcgc2lkZS4g
TmV3IHlhbWwgYmFzZWQgYmluZGluZyBtdXN0IHNvbWVob3cKPiA+ID4gPiBrbm93IHRoYXQgaW4g
b3JkZXIgdG8gYmUgYWJsZSB0byB2YWxpZGF0ZSBEVCBub2RlLCBzbyBpdCBuZWVkcwo+ID4gPiA+
IHN0YW5kYWxvbmUgY29tcGF0aWJsZS4gSG93ZXZlciwgZGVwZW5kaW5nIG9uIGNvbmNsdXNpb25z
IG9mIG90aGVyCj4gPiA+ID4gZGlzY3Vzc2lvbnMsIHRoaXMgbmV3IGNvbXBhdGlibGUgY2FuIGJl
IGFzc29jaWF0ZWQgd2l0aCBhbHJlYWR5Cj4gPiA+ID4gYXZhaWxhYmxlIHF1aXJrcyBzdHJ1Y3R1
cmUgb3IgaGF2ZSBpdCdzIG93bi4+ID4gCj4gPiA+IEkgY2Fubm90IGZvbGxvdy4gWW91IHNob3Vs
ZCBiZSBhYmxlIHRvIHNwZWNpZnkgaW4gdGhlIGJpbmRpbmcgdGhhdCB0aGUKPiA+ID4gcmVzZXQg
bGluZSBhbmQgYnVzIGNsb2NrIGlzIG9wdGlvbmFsLiBUaGVuIGFsbHdpbm5lcixzdW41MGktaDYt
cHdtCj4gPiA+IHdpdGhvdXQgYSByZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgYWxzbyB2ZXJpZmll
cywgYnV0IHRoaXMgZG9lc24ndAo+ID4gPiByZWFsbHkgaHVydCAoYW5kIHdobyBrbm93cywgbWF5
YmUgdGhlIG5leHQgYWxsd2lubmVyIGNoaXAgbmVlZHMgZXhhY3RseQo+ID4gPiB0aGlzKS4KPiA+
IAo+ID4gSXQgaXMgbm90IG9wdGlvbmFsLiBJdCB3aWxsIG5vdCB3b3JrIGlmIGVpdGhlciB0aGUg
Y2xvY2tzIG9yIHJlc2V0Cj4gPiBjb250cm9scwo+ID4gYXJlIG1pc3NpbmcuIEhvdyB3b3VsZCB0
aGVzZSBiZSBvcHRpb25hbCBhbnl3YXk/IEVpdGhlciBpdCdzIGNvbm5lY3RlZCBhbmQKPiA+IHRo
dXMgcmVxdWlyZWQsIG9yIGl0J3Mgbm90IGFuZCB0aGVyZWZvcmUgc2hvdWxkIGJlIG9taXR0ZWQg
ZnJvbSB0aGUKPiA+IGRlc2NyaXB0aW9uLgo+IAo+IFtKdXN0IGFyZ3VpbmcgYWJvdXQgdGhlIGNs
b2NrIGhlcmUsIHRoZSBhcmd1bWVudGF0aW9uIGlzIGFuYWxvZ291cyBmb3IKPiB0aGUgcmVzZXQg
Y29udHJvbC5dCj4gCj4gRnJvbSB0aGUgZHJpdmVyJ3MgcGVyc3BlY3RpdmUgaXQncyBvcHRpb25h
bDogVGhlcmUgYXJlIGRldmljZXMgd2l0aCBhbmQKPiB3aXRob3V0IGEgYnVzIGNsb2NrLiBUaGlz
IGRvZXNuJ3QgbWVhbiB0aGF0IHlvdSBjYW4ganVzdCBpZ25vcmUgdGhpcwo+IGNsb2NrIGlmIGl0
J3Mgc3BlY2lmaWVkLiBJdCdzIG9wdGlvbmFsIGluIHRoZSBzZW5zZSAiSWYgZHQgZG9lc24ndAo+
IHNwZWNpZnkgaXQsIHRoZW4gYXNzdW1lIHRoaXMgaXMgYSBkZXZpY2UgdGhhdCBkb2Vzbid0IGhh
dmUgaXQgYW5kIHNvIHlvdQo+IGRvbid0IG5lZWQgdG8gaGFuZGxlIGl0LiIgYnV0IG5vdCBpbiB0
aGUgc2Vuc2UgIml0IGRvZXNuJ3QgbWF0dGVyIGlmCj4geW91IGhhbmRsZSBpdCBvciBub3QuIi4K
PiAKPiBPdGhlciB0aGFuIHRoYXQgSSdtIG9uIHlvdXIgc2lkZS4gU28gZm9yIGV4YW1wbGUgSSB0
aGluayBpdCdzIG5vdAo+IG9wdGltYWwgdGhhdCBncGlvZF9nZXRfb3B0aW9uYWwgcmV0dXJucyBO
VUxMIGlmIEdQSU9MSUI9biBvciB0aGF0Cj4gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25h
bCByZXR1cm5zIE5VTEwgaWYgUkVTRVRfQ09OVFJPTExFUj1uCj4gYmVjYXVzZSB0aGlzIGhpZGVz
IGV4YWN0bHkgdGhlIGtpbmQgb2YgcHJvYmxlbSB5b3UgcG9pbnQgb3V0IGhlcmUuCj4KCkkgdGhp
bmsgdGhlcmUncyBtaXN1bmRlcnN0YW5kaW5nLiBJIG9ubHkgYXJndWVkIHRoYXQgd2UgY2FuJ3Qg
dXNlCgpjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIiwKCSAiYWxsd2lubmVy
LHN1bjVpLWExMHMtcHdtIjsKCmFzIHlvdSBzdWdnZXN0ZWQgYW5kIG9ubHkgCgpjb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsgCgp3aWxsIHdvcmsuIE5vdCBiZWNhdXNlIG9m
IGRyaXZlciBpdHNlbGYgKGl0IGNhbiBzdGlsbCB1c2UgX29wdGlvbmFsKCkgCnZhcmlhbnRzKSwg
YnV0IGJlY2F1c2Ugb2YgRFQgYmluZGluZywgd2hpY2ggc2hvdWxkIGJlIGFibGUgdG8gdmFsaWRh
dGUgSDYgUFdNIApub2RlIC0gcmVzZXQgYW5kIGJ1cyBjbG9jayByZWZlcmVuY2VzIGFyZSByZXF1
aXJlZCBpbiB0aGlzIGNhc2UuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagogCj4gQmVzdCByZWdhcmRz
Cj4gVXdlCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
