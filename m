Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1535B11A939
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBonZMt0jWV5iChtcYAWpFnevAoHsR5A+iTjxyOQP2U=; b=nikDcGQHDa5PBU
	TD5CaG6Tf7bOY9ZYPoF7nZZHka34Wn4Zz2oLCUPnukCOVE7Abf7JSmik0s+qXU+P56soK8S64QJmT
	ZX9hefjCCFqNlBWIyNa0asDmM97lFiLXoF3WO6ktqwP1N2pxiMJ/v1WUtNaw+u/+iK/Kh8K1zX/lD
	GExx+f7GYDVLNmKHGKPq8sthTfi8iIgAu33pMMbvqIvOr9L2ngyunoXR6yCTPQFTGSt20swLIrP8k
	zFo1YzOqaZuDdGEYDWIouAKZ23xYH7/KztzChgp9HobDAJNVPJ0ca17I7CFxYOKaR5K+hjTCglDPT
	kpTN6xMV5Qy9NpYxgQwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezU0-0007F3-3K; Wed, 11 Dec 2019 10:44:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezTd-0006zr-00
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W1Xr1ESFOb4cZaNdonF79OjzkRvMReLsf1g3WU8W8wc=; b=RosiyBjxVUaBCTBdKECx/Q/fK
 REY+K9pikjNMxb3Sos19IGdi7QC6YXOwPhLMdt7hCxbQbEWssmdpaCdL1Q1n6anPY2+kBNdbBYdAs
 UOYf9cwovzdBVSAK3yjq3SwZURod3Vbz+1OerekSafSVwCnCmdY8sEXn8vz5mhiRUF80676ebMm4W
 DdIZ92zJZSvY0X1+rxpNwcd1jlw5cB6EtsIpxfgdd9j+/GU1dGXrWBfl+EAfeGB38BPSKRV7zt94g
 BsQLwyQoMbgk+g1iO8lk5cys4dBFo8NQphxNISGVP808gLKNZkU4ePSo+mPZpJgYQB1avG9gpz6RL
 EyfTB6fgQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:39844)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iezTC-0007pY-Bw; Wed, 11 Dec 2019 10:43:50 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iezT9-0005mz-IS; Wed, 11 Dec 2019 10:43:47 +0000
Date: Wed, 11 Dec 2019 10:43:47 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Message-ID: <20191211104347.GA25745@shell.armlinux.org.uk>
References: <20191127071136.5240-1-peng.ma@nxp.com>
 <20191128100613.GI25745@shell.armlinux.org.uk>
 <VI1PR04MB4431CF7F051F9439C84F84FAED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4431CF7F051F9439C84F84FAED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024417_334921_4DCCCD90 
X-CRM114-Status: GOOD (  32.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMTA6MjU6MjZBTSArMDAwMCwgUGVuZyBNYSB3cm90ZToK
PiBIaSBSdXNzZWxsLAo+IAo+IEkgYW0gc29ycnkgdG8gcmVwbHkgbGF0ZSwgdGhhbmtzIGZvciB5
b3VyIHBhdGllbnQgcmVtaW5kaW5nLAo+IFBsZWFzZSBzZWUgbXkgY29tbWVudHMgaW5saW5lLgo+
IAo+IEJlc3QgUmVnYXJkcywKPiBQZW5nCj4gPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4g
PkZyb206IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3Jn
LnVrPgo+ID5TZW50OiAyMDE55bm0MTHmnIgyOOaXpSAxODowNgo+ID5UbzogUGVuZyBNYSA8cGVu
Zy5tYUBueHAuY29tPgo+ID5DYzogbGludXhAcmVtcGVsLXByaXZhdC5kZTsga2VybmVsQHBlbmd1
dHJvbml4LmRlOyBzaGF3bmd1b0BrZXJuZWwub3JnOwo+ID5zLmhhdWVyQHBlbmd1dHJvbml4LmRl
OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBkbC1saW51eC1pbXgKPiA+PGxpbnV4LWlt
eEBueHAuY29tPjsgZmVzdGV2YW1AZ21haWwuY29tOwo+ID5saW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc7IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmcKPiA+U3ViamVjdDogW0VY
VF0gUmU6IFtQQVRDSF0gaTJjOiBpbXg6IERlZmVyIHByb2JpbmcgaWYgRURNQSBub3QgYXZhaWxh
YmxlCj4gPgo+ID5DYXV0aW9uOiBFWFQgRW1haWwKPiA+Cj4gPk9uIFdlZCwgTm92IDI3LCAyMDE5
IGF0IDA3OjEyOjA5QU0gKzAwMDAsIFBlbmcgTWEgd3JvdGU6Cj4gPj4gRURNQSBtYXkgYmUgbm90
IGF2YWlsYWJsZSBvciBkZWZlcmVkIGR1ZSB0byBkZXBlbmRlbmNpZXMgb24gb3RoZXIKPiA+PiBt
b2R1bGVzLCBJZiB0aGVzZSBzY2VuYXJpb3MgaXMgZW5jb3VudGVyZWQsIHdlIHNob3VsZCBkZWZl
ciBwcm9iaW5nLgo+ID4KPiA+VGhpcyBoYXMgYmVlbiB0cmllZCBiZWZvcmUgaW4gdGhpcyBmb3Jt
LCBhbmQgaXQgY2F1c2VzIHJlZ3Jlc3Npb25zLgo+ID4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBQZW5n
IE1hIDxwZW5nLm1hQG54cC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtaW14LmMgfCAxNiArKysrKysrKysrKy0tLS0tCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMKPiA+PiBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaW14
LmMgaW5kZXggNDAxMTFhMy4uYzJiMDY5MyAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLWlteC5jCj4gPj4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1pbXguYwo+
ID4+IEBAIC0zNjksOCArMzY5LDggQEAgc3RhdGljIHZvaWQgaTJjX2lteF9yZXNldF9yZWdzKHN0
cnVjdAo+ID4+IGlteF9pMmNfc3RydWN0ICppMmNfaW14KSAgfQo+ID4+Cj4gPj4gIC8qIEZ1bmN0
aW9ucyBmb3IgRE1BIHN1cHBvcnQgKi8KPiA+PiAtc3RhdGljIHZvaWQgaTJjX2lteF9kbWFfcmVx
dWVzdChzdHJ1Y3QgaW14X2kyY19zdHJ1Y3QgKmkyY19pbXgsCj4gPj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9hZGRyX3QKPiA+cGh5X2FkZHIpCj4g
Pj4gK3N0YXRpYyBpbnQgaTJjX2lteF9kbWFfcmVxdWVzdChzdHJ1Y3QgaW14X2kyY19zdHJ1Y3Qg
KmkyY19pbXgsCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfYWRkcl90IHBo
eV9hZGRyKQo+ID4+ICB7Cj4gPj4gICAgICAgc3RydWN0IGlteF9pMmNfZG1hICpkbWE7Cj4gPj4g
ICAgICAgc3RydWN0IGRtYV9zbGF2ZV9jb25maWcgZG1hX3Njb25maWc7IEBAIC0zNzksNyArMzc5
LDcgQEAgc3RhdGljCj4gPj4gdm9pZCBpMmNfaW14X2RtYV9yZXF1ZXN0KHN0cnVjdCBpbXhfaTJj
X3N0cnVjdCAqaTJjX2lteCwKPiA+Pgo+ID4+ICAgICAgIGRtYSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqZG1hKSwgR0ZQX0tFUk5FTCk7Cj4gPj4gICAgICAgaWYgKCFkbWEpCj4gPj4gLSAg
ICAgICAgICAgICByZXR1cm47Cj4gPj4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+
Pgo+ID4+ICAgICAgIGRtYS0+Y2hhbl90eCA9IGRtYV9yZXF1ZXN0X2NoYW4oZGV2LCAidHgiKTsK
PiA+PiAgICAgICBpZiAoSVNfRVJSKGRtYS0+Y2hhbl90eCkpIHsKPiA+PiBAQCAtNDI0LDcgKzQy
NCw3IEBAIHN0YXRpYyB2b2lkIGkyY19pbXhfZG1hX3JlcXVlc3Qoc3RydWN0Cj4gPmlteF9pMmNf
c3RydWN0ICppMmNfaW14LAo+ID4+ICAgICAgIGRldl9pbmZvKGRldiwgInVzaW5nICVzICh0eCkg
YW5kICVzIChyeCkgZm9yIERNQSB0cmFuc2ZlcnNcbiIsCj4gPj4gICAgICAgICAgICAgICBkbWFf
Y2hhbl9uYW1lKGRtYS0+Y2hhbl90eCksCj4gPj4gZG1hX2NoYW5fbmFtZShkbWEtPmNoYW5fcngp
KTsKPiA+Pgo+ID4+IC0gICAgIHJldHVybjsKPiA+PiArICAgICByZXR1cm4gMDsKPiA+Pgo+ID4+
ICBmYWlsX3J4Ogo+ID4+ICAgICAgIGRtYV9yZWxlYXNlX2NoYW5uZWwoZG1hLT5jaGFuX3J4KTsK
PiA+PiBAQCAtNDMyLDYgKzQzMiw4IEBAIHN0YXRpYyB2b2lkIGkyY19pbXhfZG1hX3JlcXVlc3Qo
c3RydWN0Cj4gPmlteF9pMmNfc3RydWN0ICppMmNfaW14LAo+ID4+ICAgICAgIGRtYV9yZWxlYXNl
X2NoYW5uZWwoZG1hLT5jaGFuX3R4KTsKPiA+PiAgZmFpbF9hbDoKPiA+PiAgICAgICBkZXZtX2tm
cmVlKGRldiwgZG1hKTsKPiA+PiArCj4gPj4gKyAgICAgcmV0dXJuIHJldDsKPiA+Cj4gPlNvbWUg
cGxhdGZvcm1zIGRvbid0IGhhdmUgRURNQS4gIERvZXNuJ3QgdGhpcyBmb3JjZSBldmVyeW9uZSB3
aG8gd2FudHMKPiA+STJDIHRvIGhhdmUgRE1BPyAgVGhlIGxhc3QgYXR0ZW1wdCBhdCB0aGlzIGhh
ZDoKPiA+Cj4gPiAgICAgICAgLyogcmV0dXJuIHN1Y2Nlc3NmdWxseSBpZiB0aGVyZSBpcyBubyBk
bWEgc3VwcG9ydCAqLwo+ID4gICAgICAgIHJldHVybiByZXQgPT0gLUVOT0RFViA/IDAgOiByZXQ7
Cj4gPgo+ID5oZXJlIGJlY2F1c2Ugb2YgZXhhY3RseSB0aGlzLgo+ID4KPiA+PiAgfQo+ID4+Cj4g
Pj4gIHN0YXRpYyB2b2lkIGkyY19pbXhfZG1hX2NhbGxiYWNrKHZvaWQgKmFyZykgQEAgLTE2MDUs
MTAgKzE2MDcsMTQgQEAKPiA+PiBzdGF0aWMgaW50IGkyY19pbXhfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+PiAgICAgICBkZXZfaW5mbygmaTJjX2lteC0+YWRhcHRlci5k
ZXYsICJJTVggSTJDIGFkYXB0ZXIgcmVnaXN0ZXJlZFxuIik7Cj4gPj4KPiA+PiAgICAgICAvKiBJ
bml0IERNQSBjb25maWcgaWYgc3VwcG9ydGVkICovCj4gPj4gLSAgICAgaTJjX2lteF9kbWFfcmVx
dWVzdChpMmNfaW14LCBwaHlfYWRkcik7Cj4gPj4gKyAgICAgcmV0ID0gaTJjX2lteF9kbWFfcmVx
dWVzdChpMmNfaW14LCBwaHlfYWRkcik7Cj4gPj4gKyAgICAgaWYgKHJldCA9PSAtRVBST0JFX0RF
RkVSKQo+ID4+ICsgICAgICAgICAgICAgZ290byBpMmNfYWRhcHRlcl9yZW1vdmU7Cj4gPgo+ID5U
aGlzIGhhcHBlbnMgX2FmdGVyXyB0aGUgYWRhcHRlciBoYXMgYmVlbiBwdWJsaXNoZWQgdG8gdGhl
IHJlc3Qgb2YgdGhlIGtlcm5lbC4KPiA+Q2xhaW1pbmcgcmVzb3VyY2VzIGFmdGVyIHB1YmxpY2F0
aW9uIGlzIHJhY3kgLSB0aGUgYWRhcHRlciBtYXkgYmUgaW4gdXNlIGJ5IGEKPiA+cmVxdWVzdCBh
dCB0aGlzIHBvaW50LiAgU2Vjb25kbHksIHRoZXJlJ3MgYmVlbiBwcm9ibGVtcyB3aXRoIHRoaXMg
Y2F1c2luZwo+ID5yZWdyZXNzaW9ucyB3aGVuIEVETUEgaXMgYnVpbHQgYXMgYSBtb2R1bGUgYW5k
IGkyYy1pbXggaXMgYnVpbHQtaW4uCj4gPgo+ID5TZWUgZThjMjIwZmFjNDE1ICgiUmV2ZXJ0ICJp
MmM6IGlteDogaW1wcm92ZSB0aGUgZXJyb3IgaGFuZGxpbmcgaW4KPiA+aTJjX2lteF9kbWFfcmVx
dWVzdCgpIiIpIHdoZW4gZXhhY3RseSB3aGF0IHlvdSdyZSBwcm9wb3Npbmcgd2FzIHRyaWVkIGFu
ZAo+ID5lbmRlZCB1cCBoYXZpbmcgdG8gYmUgcmV2ZXJ0ZWQuCj4gPgo+ID5BRkFJSyBub3RoaW5n
IGhhcyBjaGFuZ2VkIHNpbmNlLCBzbyBtZXJlbHkgcmVpbnN0YXRpbmcgdGhlIGtub3duIHRvIGJl
IGJyb2tlbgo+ID5jb2RlLCB0aGVyZWJ5IHJlaW50cm9kdWNpbmcgdGhlIHNhbWUgKGFuZCBtb3Jl
KSBwcm9ibGVtcywgaXNuJ3QgZ29pbmcgdG8gYmUKPiA+YWNjZXB0YWJsZS4KPiA+Cj4gPlNvcnJ5
LCBidXQgdGhpcyBnZXRzIGEgYmlnIE5BSyBmcm9tIG1lLgo+ID4KPiBbUGVuZyBNYV0gSSBzYXcg
dGhlIHJldmVydCBjb21taXQgZThjMjIwZmFjNDE1IGFuZCB1bmRlcnN0YW5kIHlvdXIgY29uY2Vy
bnMuCj4gSSBzY2FuIHRoZSBpMmMtaW14LmMgZHJpdmVyLCBBbGwgcGxhdGZvcm1zIHRoYXQgdXNl
IGkyYyBkcml2ZXIgYW5kIHN1cHBvcnQgZG1hIHVzZSBhbiBlRE1BIGVuZ2luZSwKPiBTbyBJIGNo
YW5nZSB0aGUgY29kZShjb21wYXJlIHdpdGggbGFzdCBwYXRjaCkgYXMgZm9sbG93cywgcGxlYXNl
IHJldmlldyBhbmQgZ2l2ZSBtZSB5b3VyIHByZWNpb3VzIGNvbW1lbnRzLgo+IFRoYW5rcyB2ZXJ5
IG11Y2guCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMgYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jCj4gaW5kZXggMTJmNzkzNGZkZGI0Li42Y2FmZWU1
MmRkNjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1pbXguYwo+ICsrKyBi
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMKPiBAQCAtMTYwNSw4ICsxNjA1LDExIEBAIHN0
YXRpYyBpbnQgaTJjX2lteF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAK
PiAgICAgICAgIC8qIEluaXQgRE1BIGNvbmZpZyBpZiBzdXBwb3J0ZWQgKi8KPiAgICAgICAgIHJl
dCA9IGkyY19pbXhfZG1hX3JlcXVlc3QoaTJjX2lteCwgcGh5X2FkZHIpOwo+IC0gICAgICAgaWYg
KHJldCA9PSAtRVBST0JFX0RFRkVSKQo+ICsgICAgICAgaWYgKHJldCA9PSAtRVBST0JFX0RFRkVS
KSB7Cj4gKyNpZiAgICBJU19CVUlMVElOKENPTkZJR19GU0xfRURNQSkKPiAgICAgICAgICAgICAg
ICAgZ290byBpMmNfYWRhcHRlcl9yZW1vdmU7Cj4gKyNlbmRpZgo+ICsgICAgICAgfQoKWW91IGhh
dmVuJ3QgdW5kZXJzdG9vZCBfd2h5XyB0aGUgcHJvYmxlbSBvY2N1cnMsIHlvdSdyZSBqdXN0IGF0
dGVtcHRpbmcKdG8gcGF0Y2ggYXJvdW5kIGl0LiBZb3UncmUgaGFja2luZyB0aGUgY29kZSwgcmF0
aGVyIHRoYW4gZW5naW5lZXJpbmcKdGhlIGNvZGUuCgpUaGUgaW5maW5pdGUgZGVmZXJyZWQgcHJv
YmUgb2NjdXJzIGJlY2F1c2U6CgotIGkyYy1pbXggaXMgYXR0ZW1wdGVkIHRvIGJlIHByb2JlZC4K
LSBpMmMtaW14IHNldHMgdXAgdGhlIGhhcmR3YXJlLCBhbmQgdGhlbiBjYWxscwogIGkyY19hZGRf
bnVtYmVyZWRfYWRhcHRlcigpCi0gaTJjX2FkZF9udW1iZXJlZF9hZGFwdGVyKCkgcHVibGlzaGVz
IHRoZSBidXMgdG8gdGhlIHdvcmxkLCBhbmQgdGhlbgogIHNlYXJjaGVzIERUIGZvciBhbnkgY2hp
bGRyZW4gdG8gY3JlYXRlIC0gYW5kIGl0IGZpbmRzIHNvbWUgYW5kCiAgY3JlYXRlcyB0aGVtLgot
IHRoZSBjaGlsZHJlbiBkZXZpY2VzIGFyZSBtYXRjaGVkIHRvIHRoZWlyIGRyaXZlcnMsIHdoaWNo
IGJpbmQuICBUaGlzCiAgdHJpZ2dlcnMgYSBkZWZlcnJlZCBwcm9iZSB0byBiZSBzY2hlZHVsZWQu
Ci0gYmFjayBpbiB0aGUgaTJjLWlteCBkcml2ZXIsIHdlIGdldCB0byBpMmNfaW14X2RtYV9yZXF1
ZXN0KCksIHdoaWNoCiAgZmFpbHMsIGFuZCB5b3UgcmV0dXJuIC1FUFJPQkVfREVGRVIuCi0gdGhl
IGkyYy1pbXggZHJpdmVyIHByb2JlIGFjdGlvbnMgYXJlIHVud291bmQsIGFuZCBwcm9iZSBleGl0
cy4KLSB0aGUgZHJpdmVyIGNvcmUgcHJvY2Vzc2VzIHRoZSBkZWZlcnJlZCBwcm9iZSByZXF1ZXN0
LCBmaW5kcyB0aGUgCiAgaTJjLWlteCBkZXZpY2Uocykgb24gdGhlIGRlZmVycmVkIHByb2JlIGxp
c3QsIGFuZCBhdHRlbXB0cyB0bwogIHByb2JlIHRoZW0uICBHb3RvIHRoZSB0b3Agb2YgdGhpcyBs
aXN0LgoKSWYsIGZvciB3aGF0ZXZlciByZWFzb24sIGkyY19pbXhfZG1hX3JlcXVlc3QoKSBldmVy
IHJldHVybnMKLUVQUk9CRV9ERUZFUiwgdGhlIGFib3ZlIGxvb3AgV0lMTCBoYXBwZW4uCiAgClRo
ZSBGVU5EQU1FTlRBTCBydWxlIG9mIGtlcm5lbCBwcm9ncmFtbWluZyBpcyB0aGF0IHlvdSBkbyBO
T1QgcHVibGlzaApiZWZvcmUgeW91IGhhdmUgY29tcGxldGVkIHNldHVwLiAgaTJjLWlteCB2aW9s
YXRlcyB0aGF0IHJ1bGUgYXMgdGhlCnByb2JlIGZ1bmN0aW9uIGlzIG9yZGVyZWQgYXQgcHJlc2Vu
dC4KCmkyYy1pbXggaGFzIGJlZW4gd3JpdHRlbiBmb3IgaTJjX2lteF9kbWFfcmVxdWVzdCgpIHRv
IGJlIHNhZmUgdG8gY2FsbAphZnRlciB0aGUgZGV2aWNlIGhhcyBiZWVuIHB1Ymxpc2hlZCwgYnV0
IHdpdGggdGhlIGN1cnJlbnQgcHJvYmUgZnVuY3Rpb24Kb3JkZXIsIGl0IGlzIHVuc2FmZSB0byBw
cm9wYWdhdGUgdGhlIEVQUk9CRV9ERUZFUiByZXR1cm4gdmFsdWUgZm9yIHRoZQpyZWFzb24gYWJv
dmUuICBGb3IgdGhlIHJlYXNvbiB0aGUgb3JpZ2luYWwgYXR0ZW1wdCBnb3QgcmV2ZXJ0ZWQuCgpT
bywgaWYgeW91IHdhbnQgdG8gZG8gdGhpcyAoYW5kIHllcywgSSdkIGFsc28gZW5jb3VyYWdlIGl0
IHRvIGJlCmNvbmRpdGlvbmFsIG9uIEVETUEgYmVpbmcgYnVpbHQtaW4sIGFzIEkyQyBpcyBjb21t
b25seSB1c2VkIGFzIGEgd2F5CnRvIGdldCBhdCBSVENzLCB3aGljaCBhcmUgcmVhZCBiZWZvcmUg
a2VybmVsIG1vZHVsZXMgY2FuIGJlIGxvYWRlZCkKdGhlbiB5b3UgTVVTVCBtb3ZlIGkyY19pbXhf
ZG1hX3JlcXVlc3QoKSBiZWZvcmUKaTJjX2FkZF9udW1iZXJlZF9hZGFwdGVyKCkgdG8gYXZvaWQg
dGhlIGluZmluaXRlIGxvb3AuCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5h
cm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjht
aWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFj
Y29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
