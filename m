Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FB3790D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erW/LjckTK0Z2KlwXFXRbEorn6Vv5cawqGRKoBcpDgQ=; b=I9rnCNkSsiKx+0
	k/vlq3i4JvaOkNcFEBksU2Ctq/U5vSxQTsvtBZVYX6C0Pp5GhUMVgwrD1y3dB0EHUEutn4ayH312y
	Ic3YBhHFeacxq5dwYhBe42YkpFBDHf8sL+la521pz0c5H6PMHUm/E2FebDu3vvjoCaUrsHm92wo9K
	lz/Z7m+JzeJTW3tnGGfh37v66Vw/VUBNc6Tg/wjLw+aFoEqoNfPKcOKfuhaC4/9FglooR14HslMxS
	/XziiSP0i2Dt1LL0dtnGMUykBbWXm/SEmYXfXa0UCMnu21KXTBdLJMBmSHVrraL++4l/gBUjiFPGq
	ejrAt9IlYZEzs/nt5UVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Ve-0001o0-EA; Mon, 29 Jul 2019 16:28:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Ry-0007KZ-GB
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:24:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8Rq-0008EM-0Y; Mon, 29 Jul 2019 18:24:30 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8Ro-000620-Ls; Mon, 29 Jul 2019 18:24:28 +0200
Date: Mon, 29 Jul 2019 18:24:28 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190729162428.bxuzgxg5sjqptlbp@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-5-jernej.skrabec@siol.net>
 <20190729064030.7uenld2kbof45zti@pengutronix.de>
 <223488703.0I5IR7NXoI@jernej-laptop>
 <20190729160723.am3cs5pasi22pibi@pengutronix.de>
 <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092438_600274_511A9DF1 
X-CRM114-Status: GOOD (  25.19  )
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
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjowOTo0MEFNICswODAwLCBDaGVuLVl1
IFRzYWkgd3JvdGU6Cj4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MDcgQU0gVXdlIEtsZWlu
ZS1Lw7ZuaWcKPiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+IE9u
IE1vbiwgSnVsIDI5LCAyMDE5IGF0IDA1OjU1OjUyUE0gKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3
cm90ZToKPiA+ID4gRG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA4OjQwOjMwIENF
U1QgamUgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+ID4gbmFwaXNhbChhKToKPiA+ID4gPiBPbiBGcmks
IEp1bCAyNiwgMjAxOSBhdCAwODo0MDo0M1BNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToK
PiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiA+ID4gQEAgLTMzMSw2ICszMzEsMTMgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YQo+ID4gPiA+ID4gc3VuNGlfcHdtX3Npbmds
ZV9ieXBhc3MgPSB7Pgo+ID4gPiA+ID4gICAubnB3bSA9IDEsCj4gPiA+ID4gPgo+ID4gPiA+ID4g
IH07Cj4gPiA+ID4gPgo+ID4gPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2Rh
dGEgc3VuNTBpX3B3bV9kdWFsX2J5cGFzc19jbGtfcnN0ID0gewo+ID4gPiA+ID4gKyAuaGFzX2J1
c19jbG9jayA9IHRydWUsCj4gPiA+ID4gPiArIC5oYXNfcHJlc2NhbGVyX2J5cGFzcyA9IHRydWUs
Cj4gPiA+ID4gPiArIC5oYXNfcmVzZXQgPSB0cnVlLAo+ID4gPiA+ID4gKyAubnB3bSA9IDIsCj4g
PiA+ID4gPiArfTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewo+ID4gPiA+ID4KPiA+
ID4gPiA+ICAgewo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNGktYTEwLXB3bSIsCj4gPiA+ID4gPgo+ID4gPiA+ID4gQEAgLTM0Nyw2ICsz
NTQsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW40aV9wd21fZHRfaWRz
W10gPQo+ID4gPiA+ID4gewo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgfSwgewo+ID4gPiA+ID4KPiA+
ID4gPiA+ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGktaDMtcHdtIiwK
PiA+ID4gPiA+ICAgICAgICAgICAuZGF0YSA9ICZzdW40aV9wd21fc2luZ2xlX2J5cGFzcywKPiA+
ID4gPiA+Cj4gPiA+ID4gPiArIH0sIHsKPiA+ID4gPiA+ICsgICAgICAgICAuY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSIsCj4gPiA+ID4gPiArICAgICAgICAgLmRhdGEgPSAm
c3VuNTBpX3B3bV9kdWFsX2J5cGFzc19jbGtfcnN0LAo+ID4gPiA+Cj4gPiA+ID4gSWYgeW91IGZv
bGxvdyBteSBzdWdnZXN0aW9uIGZvciB0aGUgdHdvIHByZXZpb3VzIHBhdGNoZXMsIHlvdSBjYW4g
anVzdAo+ID4gPiA+IHVzZToKPiA+ID4gPgo+ID4gPiA+ICAgICBjb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW41MGktaDYtcHdtIiwgImFsbHdpbm5lcixzdW41aS1hMTBzLXB3bSI7Cj4gPiA+ID4K
PiA+ID4gPiBhbmQgZHJvcCB0aGlzIHBhdGNoLgo+ID4gPgo+ID4gPiBNYXhpbWUgZm91bmQgb3V0
IHRoYXQgaXQncyBub3QgY29tcGF0aWJsZSB3aXRoIEExMHMgZHVlIHRvIGRpZmZlcmVuY2UgaW4g
YnlwYXNzCj4gPiA+IGJpdCwgYnV0IHllcywgSSBrbm93IHdoYXQgeW91IG1lYW4uCj4gPiA+Cj4g
PiA+IFNpbmNlIEg2IHJlcXVpcmVzIHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayB0byBiZSBzcGVj
aWZpZWQsIGl0J3Mgbm90IGNvbXBhdGlibGUKPiA+ID4gZnJvbSBEVCBiaW5kaW5nIHNpZGUuIE5l
dyB5YW1sIGJhc2VkIGJpbmRpbmcgbXVzdCBzb21laG93IGtub3cgdGhhdCBpbiBvcmRlcgo+ID4g
PiB0byBiZSBhYmxlIHRvIHZhbGlkYXRlIERUIG5vZGUsIHNvIGl0IG5lZWRzIHN0YW5kYWxvbmUg
Y29tcGF0aWJsZS4gSG93ZXZlciwKPiA+ID4gZGVwZW5kaW5nIG9uIGNvbmNsdXNpb25zIG9mIG90
aGVyIGRpc2N1c3Npb25zLCB0aGlzIG5ldyBjb21wYXRpYmxlIGNhbiBiZQo+ID4gPiBhc3NvY2lh
dGVkIHdpdGggYWxyZWFkeSBhdmFpbGFibGUgcXVpcmtzIHN0cnVjdHVyZSBvciBoYXZlIGl0J3Mg
b3duLgo+ID4KPiA+IEkgY2Fubm90IGZvbGxvdy4gWW91IHNob3VsZCBiZSBhYmxlIHRvIHNwZWNp
ZnkgaW4gdGhlIGJpbmRpbmcgdGhhdCB0aGUKPiA+IHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBp
cyBvcHRpb25hbC4gVGhlbiBhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bQo+ID4gd2l0aG91dCBhIHJl
c2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBhbHNvIHZlcmlmaWVzLCBidXQgdGhpcyBkb2Vzbid0Cj4g
PiByZWFsbHkgaHVydCAoYW5kIHdobyBrbm93cywgbWF5YmUgdGhlIG5leHQgYWxsd2lubmVyIGNo
aXAgbmVlZHMgZXhhY3RseQo+ID4gdGhpcykuCj4gCj4gSXQgaXMgbm90IG9wdGlvbmFsLiBJdCB3
aWxsIG5vdCB3b3JrIGlmIGVpdGhlciB0aGUgY2xvY2tzIG9yIHJlc2V0IGNvbnRyb2xzCj4gYXJl
IG1pc3NpbmcuIEhvdyB3b3VsZCB0aGVzZSBiZSBvcHRpb25hbCBhbnl3YXk/IEVpdGhlciBpdCdz
IGNvbm5lY3RlZCBhbmQKPiB0aHVzIHJlcXVpcmVkLCBvciBpdCdzIG5vdCBhbmQgdGhlcmVmb3Jl
IHNob3VsZCBiZSBvbWl0dGVkIGZyb20gdGhlCj4gZGVzY3JpcHRpb24uCgpbSnVzdCBhcmd1aW5n
IGFib3V0IHRoZSBjbG9jayBoZXJlLCB0aGUgYXJndW1lbnRhdGlvbiBpcyBhbmFsb2dvdXMgZm9y
CnRoZSByZXNldCBjb250cm9sLl0KCkZyb20gdGhlIGRyaXZlcidzIHBlcnNwZWN0aXZlIGl0J3Mg
b3B0aW9uYWw6IFRoZXJlIGFyZSBkZXZpY2VzIHdpdGggYW5kCndpdGhvdXQgYSBidXMgY2xvY2su
IFRoaXMgZG9lc24ndCBtZWFuIHRoYXQgeW91IGNhbiBqdXN0IGlnbm9yZSB0aGlzCmNsb2NrIGlm
IGl0J3Mgc3BlY2lmaWVkLiBJdCdzIG9wdGlvbmFsIGluIHRoZSBzZW5zZSAiSWYgZHQgZG9lc24n
dApzcGVjaWZ5IGl0LCB0aGVuIGFzc3VtZSB0aGlzIGlzIGEgZGV2aWNlIHRoYXQgZG9lc24ndCBo
YXZlIGl0IGFuZCBzbyB5b3UKZG9uJ3QgbmVlZCB0byBoYW5kbGUgaXQuIiBidXQgbm90IGluIHRo
ZSBzZW5zZSAiaXQgZG9lc24ndCBtYXR0ZXIgaWYKeW91IGhhbmRsZSBpdCBvciBub3QuIi4KCk90
aGVyIHRoYW4gdGhhdCBJJ20gb24geW91ciBzaWRlLiBTbyBmb3IgZXhhbXBsZSBJIHRoaW5rIGl0
J3Mgbm90Cm9wdGltYWwgdGhhdCBncGlvZF9nZXRfb3B0aW9uYWwgcmV0dXJucyBOVUxMIGlmIEdQ
SU9MSUI9biBvciB0aGF0CmRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWwgcmV0dXJucyBO
VUxMIGlmIFJFU0VUX0NPTlRST0xMRVI9bgpiZWNhdXNlIHRoaXMgaGlkZXMgZXhhY3RseSB0aGUg
a2luZCBvZiBwcm9ibGVtIHlvdSBwb2ludCBvdXQgaGVyZS4KCkJlc3QgcmVnYXJkcwpVd2UKCi0t
IApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5l
LUvDtm5pZyAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAg
ICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
