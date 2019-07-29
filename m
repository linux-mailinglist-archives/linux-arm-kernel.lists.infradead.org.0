Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3187679057
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6L5Ksc3VoomAofVxOp3frmIojGoKlgkpHN1JY2/RG8=; b=M7zH9I2MBDMsTo
	jLnRMz2HuKbGeBhwRVivurH9c5Ksrd4bJ0dBJQMcK9iQLpRJxE7CPTa+VPk21cOF0k8yQHiZrixV+
	L/buChffvGVSzALCJ8cKTplRcsiBrZmxldJSb70c/KFzPQuarp+qABZHojlXkeOpxtYhokPU6llx4
	bmVRObkQfCklF6vnYqUjCwhZwpP1YctIX3QvihpwYwI6jBznUs5yQdy7d6GTb3Z0O7O9w+DkVX8KZ
	jWQyiGYxkxvvF/Bn3kVEBY+gAgpIFfDm8RnWZgalSm3tgM008+gGUm9wCTc5RLzg0Mhso8mNurLPn
	6Cc3zjmqpg8szgaOsx3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Bw-0007GH-2U; Mon, 29 Jul 2019 16:08:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8BS-0007Fu-6r
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:07:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8BI-0006L9-N0; Mon, 29 Jul 2019 18:07:24 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs8BH-0005er-CP; Mon, 29 Jul 2019 18:07:23 +0200
Date: Mon, 29 Jul 2019 18:07:23 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190729160723.am3cs5pasi22pibi@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-5-jernej.skrabec@siol.net>
 <20190729064030.7uenld2kbof45zti@pengutronix.de>
 <223488703.0I5IR7NXoI@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <223488703.0I5IR7NXoI@jernej-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_090734_250712_4EABDC7C 
X-CRM114-Status: GOOD (  23.80  )
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

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDU6NTU6NTJQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IEhpIFV3ZSwKPiAKPiBEbmUgcG9uZWRlbGplaywgMjkuIGp1bGlqIDIwMTkgb2Ig
MDg6NDA6MzAgQ0VTVCBqZSBVd2UgS2xlaW5lLUvDtm5pZyAKPiBuYXBpc2FsKGEpOgo+ID4gT24g
RnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NDA6NDNQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3Jv
dGU6Cj4gPiA+IE5vdyB0aGF0IHN1bjRpIFBXTSBkcml2ZXIgc3VwcG9ydHMgZGVhc3NlcnRpbmcg
cmVzZXQgbGluZSBhbmQgZW5hYmxpbmcKPiA+ID4gYnVzIGNsb2NrLCBzdXBwb3J0IGZvciBINiBQ
V00gY2FuIGJlIGFkZGVkLgo+ID4gPiAKPiA+ID4gTm90ZSB0aGF0IHdoaWxlIEg2IFBXTSBoYXMg
dHdvIGNoYW5uZWxzLCBvbmx5IGZpcnN0IG9uZSBpcyB3aXJlZCB0bwo+ID4gPiBvdXRwdXQgcGlu
LiBTZWNvbmQgY2hhbm5lbCBpcyB1c2VkIGFzIGEgY2xvY2sgc291cmNlIHRvIGNvbXBhbmlvbiBB
QzIwMAo+ID4gPiBjaGlwIHdoaWNoIGlzIGJ1bmRsZWQgaW50byBzYW1lIHBhY2thZ2UuCj4gPiA+
IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lv
bC5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwg
MTAgKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+
ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCj4gPiA+IGluZGV4IDdkM2FjM2YyZGMzZi4uOWUwZWNhNzlmZjg4IDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiArKysgYi9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiBAQCAtMzMxLDYgKzMzMSwxMyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhCj4gPiA+IHN1bjRpX3B3bV9zaW5nbGVfYnlwYXNzID0g
ez4gCj4gPiA+ICAJLm5wd20gPSAxLAo+ID4gPiAgCj4gPiA+ICB9Owo+ID4gPiAKPiA+ID4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgc3VuNTBpX3B3bV9kdWFsX2J5cGFzc19j
bGtfcnN0ID0gewo+ID4gPiArCS5oYXNfYnVzX2Nsb2NrID0gdHJ1ZSwKPiA+ID4gKwkuaGFzX3By
ZXNjYWxlcl9ieXBhc3MgPSB0cnVlLAo+ID4gPiArCS5oYXNfcmVzZXQgPSB0cnVlLAo+ID4gPiAr
CS5ucHdtID0gMiwKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gCj4gPiA+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBzdW40aV9wd21fZHRfaWRzW10gPSB7Cj4gPiA+ICAKPiA+ID4g
IAl7Cj4gPiA+ICAJCj4gPiA+ICAJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40aS1hMTAt
cHdtIiwKPiA+ID4gCj4gPiA+IEBAIC0zNDcsNiArMzU0LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0KPiA+ID4gewo+ID4gPiAKPiA+ID4g
IAl9LCB7Cj4gPiA+ICAJCj4gPiA+ICAJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1o
My1wd20iLAo+ID4gPiAgCQkuZGF0YSA9ICZzdW40aV9wd21fc2luZ2xlX2J5cGFzcywKPiA+ID4g
Cj4gPiA+ICsJfSwgewo+ID4gPiArCQkuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2
LXB3bSIsCj4gPiA+ICsJCS5kYXRhID0gJnN1bjUwaV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdCwK
PiA+IAo+ID4gSWYgeW91IGZvbGxvdyBteSBzdWdnZXN0aW9uIGZvciB0aGUgdHdvIHByZXZpb3Vz
IHBhdGNoZXMsIHlvdSBjYW4ganVzdAo+ID4gdXNlOgo+ID4gCj4gPiAJY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNTBpLWg2LXB3bSIsICJhbGx3aW5uZXIsc3VuNWktYTEwcy1wd20iOwo+ID4g
Cj4gPiBhbmQgZHJvcCB0aGlzIHBhdGNoLgo+IAo+IE1heGltZSBmb3VuZCBvdXQgdGhhdCBpdCdz
IG5vdCBjb21wYXRpYmxlIHdpdGggQTEwcyBkdWUgdG8gZGlmZmVyZW5jZSBpbiBieXBhc3MgCj4g
Yml0LCBidXQgeWVzLCBJIGtub3cgd2hhdCB5b3UgbWVhbi4KPiAKPiBTaW5jZSBINiByZXF1aXJl
cyByZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgdG8gYmUgc3BlY2lmaWVkLCBpdCdzIG5vdCBjb21w
YXRpYmxlIAo+IGZyb20gRFQgYmluZGluZyBzaWRlLiBOZXcgeWFtbCBiYXNlZCBiaW5kaW5nIG11
c3Qgc29tZWhvdyBrbm93IHRoYXQgaW4gb3JkZXIgCj4gdG8gYmUgYWJsZSB0byB2YWxpZGF0ZSBE
VCBub2RlLCBzbyBpdCBuZWVkcyBzdGFuZGFsb25lIGNvbXBhdGlibGUuIEhvd2V2ZXIsIAo+IGRl
cGVuZGluZyBvbiBjb25jbHVzaW9ucyBvZiBvdGhlciBkaXNjdXNzaW9ucywgdGhpcyBuZXcgY29t
cGF0aWJsZSBjYW4gYmUgCj4gYXNzb2NpYXRlZCB3aXRoIGFscmVhZHkgYXZhaWxhYmxlIHF1aXJr
cyBzdHJ1Y3R1cmUgb3IgaGF2ZSBpdCdzIG93bi4KCkkgY2Fubm90IGZvbGxvdy4gWW91IHNob3Vs
ZCBiZSBhYmxlIHRvIHNwZWNpZnkgaW4gdGhlIGJpbmRpbmcgdGhhdCB0aGUKcmVzZXQgbGluZSBh
bmQgYnVzIGNsb2NrIGlzIG9wdGlvbmFsLiBUaGVuIGFsbHdpbm5lcixzdW41MGktaDYtcHdtCndp
dGhvdXQgYSByZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgYWxzbyB2ZXJpZmllcywgYnV0IHRoaXMg
ZG9lc24ndApyZWFsbHkgaHVydCAoYW5kIHdobyBrbm93cywgbWF5YmUgdGhlIG5leHQgYWxsd2lu
bmVyIGNoaXAgbmVlZHMgZXhhY3RseQp0aGlzKS4KCkJlc3QgcmVnYXJkcwpVd2UKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5p
ZyAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
