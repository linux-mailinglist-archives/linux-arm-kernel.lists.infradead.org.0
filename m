Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0379367
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xA7A1456mLhGK1NLDEvgvSy2WXrJin+a24yY8sdhBaE=; b=idTHkb7utHhpXt
	gFk8STcj783Jr1p8EIgJgPZ9PyWtVZxfuCKQnvZu5ZakIytQv0ywAV6x6wn0NVKSO0AaF4U1gEM2S
	4LWx0b7EwEdxYMcQuyw+IEUH+ohBLYzG3aReFJ7C2r+LUraeelA8gzzja/7haIxuEzrCAX5scVw6B
	rn88HUg4I6b7FTyPHsAAOaqHt50GfSLuXCDvzkl+I51rqw8SViZdRxGw9yrI/SobzugOx1WiShq4Q
	mRIx3gFJ8tmzOyctGBRfpacw85S7H6N1VLHeow396Sbrqqqfrn3gfRsCtNJYPoZTJsIfTfDWUk8fU
	hbSJfsZiL8wIJdLzg6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAk6-0000HC-BR; Mon, 29 Jul 2019 18:51:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAju-0000GU-Mn
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:51:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAjl-000690-SO; Mon, 29 Jul 2019 20:51:09 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAjk-0002Ay-OI; Mon, 29 Jul 2019 20:51:08 +0200
Date: Mon, 29 Jul 2019 20:51:08 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <2346193.MplWYqIveT@jernej-laptop>
 <20190729184041.vlvfz3vz3ykhufdk@pengutronix.de>
 <173825848.1FZsmuHfpq@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173825848.1FZsmuHfpq@jernej-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_115118_743861_758C607F 
X-CRM114-Status: GOOD (  34.46  )
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

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDg6NDY6MjVQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBwb25lZGVsamVrLCAyOS4ganVsaWogMjAxOSBvYiAyMDo0MDo0MSBDRVNU
IGplIFV3ZSBLbGVpbmUtS8O2bmlnIAo+IG5hcGlzYWwoYSk6Cj4gPiBPbiBNb24sIEp1bCAyOSwg
MjAxOSBhdCAwNjo0MDoxNVBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+IERu
ZSBwb25lZGVsamVrLCAyOS4ganVsaWogMjAxOSBvYiAxODoyNDoyOCBDRVNUIGplIFV3ZSBLbGVp
bmUtS8O2bmlnCj4gPiA+IAo+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+IEhlbGxvLAo+ID4gPiA+
IAo+ID4gPiA+IE9uIFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDEyOjA5OjQwQU0gKzA4MDAsIENoZW4t
WXUgVHNhaSB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDEyOjA3IEFN
IFV3ZSBLbGVpbmUtS8O2bmlnCj4gPiA+ID4gPiAKPiA+ID4gPiA+IDx1LmtsZWluZS1rb2VuaWdA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBNb24sIEp1bCAyOSwgMjAxOSBh
dCAwNTo1NTo1MlBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4g
RG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA4OjQwOjMwIENFU1QgamUgVXdlCj4g
PiA+ID4gPiA+ID4gS2xlaW5lLUvDtm5pZwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IG5h
cGlzYWwoYSk6Cj4gPiA+ID4gPiA+ID4gPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwODo0MDo0
M1BNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTMzMSw2ICszMzEsMTMgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YQo+ID4gPiA+ID4gPiA+ID4gPiBzdW40aV9w
d21fc2luZ2xlX2J5cGFzcyA9IHs+Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiAgIC5ucHdtID0gMSwKPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgfTsK
PiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IHN1bjRpX3B3bV9kYXRhCj4gPiA+ID4gPiA+ID4gPiA+IHN1bjUwaV9wd21fZHVhbF9ieXBhc3Nf
Y2xrX3JzdAo+ID4gPiA+ID4gPiA+ID4gPiA9IHsKPiA+ID4gPiA+ID4gPiA+ID4gKyAuaGFzX2J1
c19jbG9jayA9IHRydWUsCj4gPiA+ID4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNz
ID0gdHJ1ZSwKPiA+ID4gPiA+ID4gPiA+ID4gKyAuaGFzX3Jlc2V0ID0gdHJ1ZSwKPiA+ID4gPiA+
ID4gPiA+ID4gKyAubnB3bSA9IDIsCj4gPiA+ID4gPiA+ID4gPiA+ICt9Owo+ID4gPiA+ID4gPiA+
ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewo+ID4gPiA+ID4gPiA+
ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICAgewo+ID4gPiA+ID4gPiA+ID4gPiAgIAo+ID4gPiA+
ID4gPiA+ID4gPiAgICAgICAgICAgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1w
d20iLAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTM0Nyw2ICszNTQs
OSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZAo+ID4gPiA+ID4gPiA+ID4gPiBz
dW40aV9wd21fZHRfaWRzW10gPQo+ID4gPiA+ID4gPiA+ID4gPiB7Cj4gPiA+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+ID4gPiAgIH0sIHsKPiA+ID4gPiA+ID4gPiA+ID4gICAKPiA+ID4gPiA+
ID4gPiA+ID4gICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20i
LAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgLmRhdGEgPSAmc3VuNGlfcHdtX3NpbmdsZV9i
eXBhc3MsCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiArIH0sIHsKPiA+ID4g
PiA+ID4gPiA+ID4gKyAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYt
cHdtIiwKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgIC5kYXRhID0gJnN1bjUwaV9wd21fZHVh
bF9ieXBhc3NfY2xrX3JzdCwKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSWYgeW91
IGZvbGxvdyBteSBzdWdnZXN0aW9uIGZvciB0aGUgdHdvIHByZXZpb3VzIHBhdGNoZXMsIHlvdQo+
ID4gPiA+ID4gPiA+ID4gY2FuCj4gPiA+ID4gPiA+ID4gPiBqdXN0Cj4gPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiA+IHVzZToKPiA+ID4gPiA+ID4gPiA+ICAgICBjb21wYXRpYmxlID0gImFs
bHdpbm5lcixzdW41MGktaDYtcHdtIiwKPiA+ID4gPiA+ID4gPiA+ICAgICAiYWxsd2lubmVyLHN1
bjVpLWExMHMtcHdtIjsKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gYW5kIGRyb3Ag
dGhpcyBwYXRjaC4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBNYXhpbWUgZm91bmQgb3V0
IHRoYXQgaXQncyBub3QgY29tcGF0aWJsZSB3aXRoIEExMHMgZHVlIHRvCj4gPiA+ID4gPiA+ID4g
ZGlmZmVyZW5jZQo+ID4gPiA+ID4gPiA+IGluIGJ5cGFzcyBiaXQsIGJ1dCB5ZXMsIEkga25vdyB3
aGF0IHlvdSBtZWFuLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFNpbmNlIEg2IHJlcXVp
cmVzIHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayB0byBiZSBzcGVjaWZpZWQsIGl0J3MKPiA+ID4g
PiA+ID4gPiBub3QKPiA+ID4gPiA+ID4gPiBjb21wYXRpYmxlIGZyb20gRFQgYmluZGluZyBzaWRl
LiBOZXcgeWFtbCBiYXNlZCBiaW5kaW5nIG11c3QKPiA+ID4gPiA+ID4gPiBzb21laG93Cj4gPiA+
ID4gPiA+ID4ga25vdyB0aGF0IGluIG9yZGVyIHRvIGJlIGFibGUgdG8gdmFsaWRhdGUgRFQgbm9k
ZSwgc28gaXQgbmVlZHMKPiA+ID4gPiA+ID4gPiBzdGFuZGFsb25lIGNvbXBhdGlibGUuIEhvd2V2
ZXIsIGRlcGVuZGluZyBvbiBjb25jbHVzaW9ucyBvZiBvdGhlcgo+ID4gPiA+ID4gPiA+IGRpc2N1
c3Npb25zLCB0aGlzIG5ldyBjb21wYXRpYmxlIGNhbiBiZSBhc3NvY2lhdGVkIHdpdGggYWxyZWFk
eQo+ID4gPiA+ID4gPiA+IGF2YWlsYWJsZSBxdWlya3Mgc3RydWN0dXJlIG9yIGhhdmUgaXQncyBv
d24uPiA+Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJIGNhbm5vdCBmb2xsb3cuIFlvdSBzaG91
bGQgYmUgYWJsZSB0byBzcGVjaWZ5IGluIHRoZSBiaW5kaW5nIHRoYXQKPiA+ID4gPiA+ID4gdGhl
Cj4gPiA+ID4gPiA+IHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBpcyBvcHRpb25hbC4gVGhlbiBh
bGx3aW5uZXIsc3VuNTBpLWg2LXB3bQo+ID4gPiA+ID4gPiB3aXRob3V0IGEgcmVzZXQgbGluZSBh
bmQgYnVzIGNsb2NrIGFsc28gdmVyaWZpZXMsIGJ1dCB0aGlzIGRvZXNuJ3QKPiA+ID4gPiA+ID4g
cmVhbGx5IGh1cnQgKGFuZCB3aG8ga25vd3MsIG1heWJlIHRoZSBuZXh0IGFsbHdpbm5lciBjaGlw
IG5lZWRzCj4gPiA+ID4gPiA+IGV4YWN0bHkKPiA+ID4gPiA+ID4gdGhpcykuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IEl0IGlzIG5vdCBvcHRpb25hbC4gSXQgd2lsbCBub3Qgd29yayBpZiBlaXRoZXIg
dGhlIGNsb2NrcyBvciByZXNldAo+ID4gPiA+ID4gY29udHJvbHMKPiA+ID4gPiA+IGFyZSBtaXNz
aW5nLiBIb3cgd291bGQgdGhlc2UgYmUgb3B0aW9uYWwgYW55d2F5PyBFaXRoZXIgaXQncyBjb25u
ZWN0ZWQKPiA+ID4gPiA+IGFuZAo+ID4gPiA+ID4gdGh1cyByZXF1aXJlZCwgb3IgaXQncyBub3Qg
YW5kIHRoZXJlZm9yZSBzaG91bGQgYmUgb21pdHRlZCBmcm9tIHRoZQo+ID4gPiA+ID4gZGVzY3Jp
cHRpb24uCj4gPiA+ID4gCj4gPiA+ID4gW0p1c3QgYXJndWluZyBhYm91dCB0aGUgY2xvY2sgaGVy
ZSwgdGhlIGFyZ3VtZW50YXRpb24gaXMgYW5hbG9nb3VzIGZvcgo+ID4gPiA+IHRoZSByZXNldCBj
b250cm9sLl0KPiA+ID4gPiAKPiA+ID4gPiBGcm9tIHRoZSBkcml2ZXIncyBwZXJzcGVjdGl2ZSBp
dCdzIG9wdGlvbmFsOiBUaGVyZSBhcmUgZGV2aWNlcyB3aXRoIGFuZAo+ID4gPiA+IHdpdGhvdXQg
YSBidXMgY2xvY2suIFRoaXMgZG9lc24ndCBtZWFuIHRoYXQgeW91IGNhbiBqdXN0IGlnbm9yZSB0
aGlzCj4gPiA+ID4gY2xvY2sgaWYgaXQncyBzcGVjaWZpZWQuIEl0J3Mgb3B0aW9uYWwgaW4gdGhl
IHNlbnNlICJJZiBkdCBkb2Vzbid0Cj4gPiA+ID4gc3BlY2lmeSBpdCwgdGhlbiBhc3N1bWUgdGhp
cyBpcyBhIGRldmljZSB0aGF0IGRvZXNuJ3QgaGF2ZSBpdCBhbmQgc28geW91Cj4gPiA+ID4gZG9u
J3QgbmVlZCB0byBoYW5kbGUgaXQuIiBidXQgbm90IGluIHRoZSBzZW5zZSAiaXQgZG9lc24ndCBt
YXR0ZXIgaWYKPiA+ID4gPiB5b3UgaGFuZGxlIGl0IG9yIG5vdC4iLgo+ID4gPiA+IAo+ID4gPiA+
IE90aGVyIHRoYW4gdGhhdCBJJ20gb24geW91ciBzaWRlLiBTbyBmb3IgZXhhbXBsZSBJIHRoaW5r
IGl0J3Mgbm90Cj4gPiA+ID4gb3B0aW1hbCB0aGF0IGdwaW9kX2dldF9vcHRpb25hbCByZXR1cm5z
IE5VTEwgaWYgR1BJT0xJQj1uIG9yIHRoYXQKPiA+ID4gPiBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0
X29wdGlvbmFsIHJldHVybnMgTlVMTCBpZiBSRVNFVF9DT05UUk9MTEVSPW4KPiA+ID4gPiBiZWNh
dXNlIHRoaXMgaGlkZXMgZXhhY3RseSB0aGUga2luZCBvZiBwcm9ibGVtIHlvdSBwb2ludCBvdXQg
aGVyZS4KPiA+ID4gCj4gPiA+IEkgdGhpbmsgdGhlcmUncyBtaXN1bmRlcnN0YW5kaW5nLiBJIG9u
bHkgYXJndWVkIHRoYXQgd2UgY2FuJ3QgdXNlCj4gPiA+IAo+ID4gPiBjb21wYXRpYmxlID0gImFs
bHdpbm5lcixzdW41MGktaDYtcHdtIiwKPiA+ID4gCj4gPiA+IAkgImFsbHdpbm5lcixzdW41aS1h
MTBzLXB3bSI7Cj4gPiA+IAo+ID4gPiBhcyB5b3Ugc3VnZ2VzdGVkIGFuZCBvbmx5Cj4gPiA+IAo+
ID4gPiBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKPiA+ID4gCj4gPiA+
IHdpbGwgd29yay4gTm90IGJlY2F1c2Ugb2YgZHJpdmVyIGl0c2VsZiAoaXQgY2FuIHN0aWxsIHVz
ZSBfb3B0aW9uYWwoKQo+ID4gPiB2YXJpYW50cyksIGJ1dCBiZWNhdXNlIG9mIERUIGJpbmRpbmcs
IHdoaWNoIHNob3VsZCBiZSBhYmxlIHRvIHZhbGlkYXRlIEg2Cj4gPiA+IFBXTSBub2RlIC0gcmVz
ZXQgYW5kIGJ1cyBjbG9jayByZWZlcmVuY2VzIGFyZSByZXF1aXJlZCBpbiB0aGlzIGNhc2UuCj4g
PiAKPiA+IEkgdGhpbmsgSSB1bmRlcnN0b29kLiBJbiBteSBleWVzIHRoZXJlIGlzIG5vIG5lZWQg
dG8gbGV0IHZhbGlkYXRpb24gb2YKPiA+IHRoZSBEVCBiaW5kaW5ncyBjYXRjaCBhIG1pc3Npbmcg
Im9wdGlvbmFsIiBwcm9wZXJ0eSB0aGF0IGlzIG5lZWRlZCBvbgo+ID4gSDYuCj4gPiAKPiA+IFlv
dSBoYXZlIHRvIGRyYXcgdGhlIGxpbmUgc29tZXdoZXJlIHdoaWNoIGluZm9ybWF0aW9uIHRoZSBk
cml2ZXIgaGFzCj4gPiBoYXJkLWNvZGVkIGFuZCB3aGF0IGlzIG9ubHkgcHJvdmlkZWQgYnkgdGhl
IGRldmljZSB0cmVlIGFuZCBqdXN0IGFzc3VtZWQKPiA+IHRvIGJlIGNvcnJlY3QgYnkgdGhlIGRy
aXZlci4gWW91IGFyZ3VlIHRoZSBkcml2ZXIgc2hvdWxkIGtub3cgdGhhdCAKPiAKPiBObywgaW4g
dGhpcyB0aHJlYWQgSSBhcmd1ZSB0aGF0IERUIHZhbGlkYXRpb24gdG9vbCwgZXhlY3V0ZWQgYnkK
PiAKPiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+IAo+IHNob3VsZCBjYXRjaCB0aGF0LiBU
aGlzIGlzIG5vdCBhIGRyaXZlciwgYnV0IERUIGJpbmRpbmcgZGVzY3JpYmVkIGluIFlBTUwuCgpU
aGUgYXJndW1lbnRhdGlvbiBpcyB0aGUgc2FtZS4gZHRic19jaGVjayBkb2Vzbid0IG5vdGljZSBp
ZiB0aGUgYmFzZQphZGRyZXNzIG9mIHlvdXIgImFsbHdpbm5lcixzdW41MGktaDYtcHdtIiBkZXZp
Y2UgaXMgd3JvbmcuIFNvIHdoeSBzaG91bGQKaXQgY2F0Y2ggYSBtaXNzaW5nIHJlc2V0IGNvbnRy
b2xsZXIgcGhhbmRsZT8KCkJlc3QgcmVnYXJkcwpVd2UKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8
CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvICB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
