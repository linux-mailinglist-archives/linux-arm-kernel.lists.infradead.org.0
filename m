Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688D679096
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/sLMQbn7Ddzr9gj6kyoDx4KNmfss80T5GuYwBlbBr0=; b=CrfwWKT5SyBVKA
	b3Ow4pMWtSKjVl3tumW7gMJuFAqd5U5NsvQVOxSyjB4k1LMZ/p0niGSTN+hZwF9t+roxdBlZW+cVK
	cwXF1s9s3I7SLLv6Q9POVqBpp9LsjGssL5wlWRK7RVfCDb/WCDbv1kvzWNIhNmopET1I5+/HiXCrg
	zQT3s74vikkRU61H2Kgt5DYFRZZD+LFNZ+CvIBgzlTpGLS9ZUQ14HWWemacL1rQWfVhuRHPMyeoHg
	KbJy7pQOSBh5j6lIwgGhTDeFAfXys9hgAnatCXCdFa9egD7dCK4dRBlYzzrEr0v1KVaBLxIxEMjMc
	xgZVLptk/VPPk2+jO+Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8KH-0001Sh-9E; Mon, 29 Jul 2019 16:16:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8IO-0001Rm-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:14:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8IG-0007Bj-LI; Mon, 29 Jul 2019 18:14:36 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8IF-0005n0-HF; Mon, 29 Jul 2019 18:14:35 +0200
Date: Mon, 29 Jul 2019 18:14:35 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Message-ID: <20190729161435.5bnj3ikocsyep4dd@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190729063825.wxfky6nswcru26g7@pengutronix.de>
 <4022372.WfP88Fa4Lu@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4022372.WfP88Fa4Lu@jernej-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091445_220440_BB2FBED5 
X-CRM114-Status: GOOD (  21.46  )
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, thierry.reding@gmail.com, kernel@pengutronix.de,
 wens@csie.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSmVybmVqLAoKT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDU6NDg6MzZQTSArMDIwMCwg
SmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSBwb25lZGVsamVrLCAyOS4ganVsaWogMjAxOSBv
YiAwODozODoyNSBDRVNUIGplIFV3ZSBLbGVpbmUtS8O2bmlnIAo+IG5hcGlzYWwoYSk6Cj4gPiBI
ZWxsbywKPiA+IAo+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NDA6NDJQTSArMDIwMCwg
SmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiA+IEg2IFBXTSBjb3JlIG5lZWRzIGJ1cyBjbG9jayB0
byBiZSBlbmFibGVkIGluIG9yZGVyIHRvIHdvcmsuCj4gPiA+IAo+ID4gPiBBZGQgYSBxdWlyayBm
b3IgaXQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVq
LnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gIGRyaXZlcnMvcHdtL3B3
bS1zdW40aS5jIHwgMTUgKysrKysrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1z
dW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gaW5kZXggMWI3YmU4ZmJkZTg2
Li43ZDNhYzNmMmRjM2YgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+IEBAIC03Miw2ICs3Miw3
IEBAIHN0YXRpYyBjb25zdCB1MzIgcHJlc2NhbGVyX3RhYmxlW10gPSB7Cj4gPiA+IAo+ID4gPiAg
fTsKPiA+ID4gIAo+ID4gPiAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+ID4gCj4gPiA+ICsJ
Ym9vbCBoYXNfYnVzX2Nsb2NrOwo+ID4gPiAKPiA+ID4gIAlib29sIGhhc19wcmVzY2FsZXJfYnlw
YXNzOwo+ID4gPiAgCWJvb2wgaGFzX3Jlc2V0Owo+ID4gPiAgCXVuc2lnbmVkIGludCBucHdtOwo+
ID4gPiAKPiA+ID4gQEAgLTc5LDYgKzgwLDcgQEAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+
ID4gCj4gPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgewo+ID4gPiAgCj4gPiA+ICAJc3RydWN0
IHB3bV9jaGlwIGNoaXA7Cj4gPiA+IAo+ID4gPiArCXN0cnVjdCBjbGsgKmJ1c19jbGs7Cj4gPiA+
IAo+ID4gPiAgCXN0cnVjdCBjbGsgKmNsazsKPiA+ID4gIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAq
cnN0Owo+ID4gPiAgCXZvaWQgX19pb21lbSAqYmFzZTsKPiA+ID4gCj4gPiA+IEBAIC0zODIsNiAr
Mzg0LDE2IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UKPiA+ID4gKnBkZXYpPiAKPiA+ID4gIAkJcmVzZXRfY29udHJvbF9kZWFzc2VydChwd20tPnJz
dCk7Cj4gPiA+ICAJCj4gPiA+ICAJfQo+ID4gPiAKPiA+ID4gKwlpZiAocHdtLT5kYXRhLT5oYXNf
YnVzX2Nsb2NrKSB7Cj4gPiA+ICsJCXB3bS0+YnVzX2NsayA9IGRldm1fY2xrX2dldCgmcGRldi0+
ZGV2LCAiYnVzIik7Cj4gPiAKPiA+IFNpbWlsYXIgdG8gbXkgc3VnZ2VzdGlvbiBpbiBwYXRjaCAy
OiBJJ2QgdXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGFuZAo+ID4gZHJvcCBzdHJ1Y3Qgc3Vu
NGlfcHdtX2RhdGE6Omhhc19idXNfY2xvY2suCj4gCj4gVGhpcyBvbmUgaXMgbm90IHNvIHNpbXBs
ZS4gVGhpcyBwYXRjaCBoYXMgaW5jb3JyZWN0IGxvZ2ljLiBDb3JyZWN0IGxvZ2ljIHdvdWxkIAo+
IGJlIHRvIHVzZSAiZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpIiBmb3IgdmFyaWFudHMg
d2l0aG91dCBidXMgY2xvY2sgYXMgCj4gaXQgaXMgZG9uZSBhbHJlYWR5IGFuZCAiZGV2bV9jbGtf
Z2V0KCZwZGV2LT5kZXYsICJidXMiKSIgYW5kIAo+ICJkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwg
Im1vZCIpIiBmb3IgdmFyaWFudHMgd2l0aCBidXMgY2xvY2suCgpUaGVuIG1heWJlIHNvbWV0aGlu
ZyBsaWtlIHRoZSBmb2xsb3dpbmc/OgoKCWJ1c2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbCgu
Li4sICJidXMiKTsKCW1vZGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbCguLi4sICJtb2QiKTsK
CgkvKgoJICogb2xkIGR0YnMgbWlnaHQgaGF2ZSBhIHNpbmdsZSBjbG9jayBidXQgbm8gY2xvY2sg
bmFtZXMuIEZhbGwKCSAqIGJhY2sgdG8gdGhpcyBmb3IgY29tcGF0aWJpbGl0eSByZWFzb25zLgoJ
ICovCglpZiAoIW1vZGNsaykgewoJCW1vZGNsayA9IGRldm1fY2xrX2dldCguLi4sIE5VTEwpOwoJ
fQogCj4gWW91IHNlZSwgRFQgbm9kZXMgZm9yIG90aGVyIHZhcmlhbnRzIGRvbid0IGhhdmUgY2xv
Y2stbmFtZXMgcHJvcGVydHkgYXQgYWxsLiAKPiBJZiBpdCB3b3VsZCBiZSBzcGVjaWZpZWQsIGl0
IHdvdWxkIGJlICJtb2QiLiBTbywgRFQgbm9kZXMgZm9yIG90aGVyIHZhcmlhbnRzIAo+IGhhdmUg
Im1vZCIgY2xvY2sgc3BlY2lmaWVkIG9uIGZpcnN0IHBsYWNlICh0aGUgb25seSBvbmUpLCB3aGls
ZSBINiBEVCBub2RlIHdpbGwgCj4gaGF2ZSAibW9kIiBjbG9jayBzcGVjaWZpZWQgb24gc2Vjb25k
IHBsYWNlIChzZWUgb25lIG9mIGUtbWFpbHMgZnJvbSBNYXhpbWUpLCBzbyAKPiAiTlVMTCIgY2Fu
J3QgYmUgdXNlZCBpbnN0ZWFkIG9mICJtb2QiIGluIGJvdGggY2FzZXMuCj4gCj4gU28gSSB3b3Vs
ZCBzYXkgcXVpcmsgaXMgYmVuZWZpY2lhbCB0byBrbm93IGlmIHlvdSBoYXZlIHRvIGxvb2sgdXAg
Y2xvY2tzIGJ5IAo+IG5hbWUgb3IgeW91IGp1c3QgdGFrZSBmaXJzdCBjbG9jayBzcGVjaWZpZWQu
CgpCZXN0IHJlZ2FyZHMKVXdlCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgVXdlIEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGlu
dXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUv
ICB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
