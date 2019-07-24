Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F3572F97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jWT50G1D7Xn/SX8G/TrPVqqoXvabyUQ2IsrDYzhxD7s=; b=MX2NxBegpA48B+nS3Q/6VbLCw
	ByRWD/eYge0MFThdIJt4OYzxFyVzqvuzkWK9rEr5i1VB8sGGIWrHDje+GHSKRg3VVPZZqhU7n/RhQ
	7WCOaU7ZuMVidSzH8Z3cam1JxFIe0wuof8f+n6vfdtFGOnIt+1J0mvKOj3CqM9ZnsxZJnV7PBc1/W
	rQfVzt81eK85lH7HJN11xyzuVewCgcOprpciLy4bR1lzmPHH3Ic1IGgu9V1CSinPyL9RJqke3o0tt
	k6emLYMlJAe6+PqYf0Y9DCcMjAhwTa6TmZhNwFIqfzovwuY5huvq9b3BlMXMjnN0T2w/6Hs10FbqQ
	hyLhc7fqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqH1P-0006dn-1i; Wed, 24 Jul 2019 13:09:31 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqH1F-0006cn-C1
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:09:23 +0000
Received: from [199.195.250.187] (port=42707 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hqH14-00012N-5g; Wed, 24 Jul 2019 14:09:14 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 9615D6DF8F;
 Wed, 24 Jul 2019 13:09:01 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 24 Jul 2019 21:09:01 +0800
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
In-Reply-To: <20190722192934.3jaf3r4rnyeslqyw@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
 <20190720101318.cwrvv5r42wxx5k4r@flea>
 <BDF0C9F6-DD0D-4343-8E24-06A07055004C@aosc.io>
 <20190722192934.3jaf3r4rnyeslqyw@flea>
Message-ID: <7d24576697521f4985617113dbc4cc41@aosc.io>
X-Sender: icenowy@aosc.io
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_060921_411848_F25FCA35 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMDctMjMgMDM6MjnvvIxNYXhpbWUgUmlwYXJkIOWGmemBk++8mgo+IE9uIFNhdCwg
SnVsIDIwLCAyMDE5IGF0IDA3OjM5OjA4UE0gKzA4MDAsIEljZW5vd3kgWmhlbmcgd3JvdGU6Cj4+
IAo+PiAKPj4g5LqOIDIwMTnlubQ35pyIMjDml6UgR01UKzA4OjAwIOS4i+WNiDY6MTM6MTgsIE1h
eGltZSBSaXBhcmQgCj4+IDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiDlhpnliLA6Cj4+ID5P
biBTYXQsIEp1bCAxMywgMjAxOSBhdCAxMTo0NjozM0FNICswODAwLCBJY2Vub3d5IFpoZW5nIHdy
b3RlOgo+PiA+PiBUaGUgTGljaGVlIFplcm8gUGx1cyBpcyBhIGNvcmUgYm9hcmQgbWFkZSBieSBT
aXBlZWQsIHdpdGggYSBtaWNyb1VTQgo+PiA+PiBjb25uZWN0b3Igb24gaXQsIFRGIHNsb3Qgb3Ig
V1NPTjggU0QgY2hpcCwgb3B0aW9uYWwgZU1NQyBvciBTUEkKPj4gPkZsYXNoLgo+PiA+PiBJdCBo
YXMgYSBnb2xkIGZpbmdlciBjb25uZWN0b3IgZm9yIGV4cGFuc2lvbiwgYW5kIFVBUlQgaXMgYXZh
aWxhYmxlCj4+ID5mcm9tCj4+ID4+IHJlc2VydmVkIHBpbnMgdy8gMi41NG1tIHBpdGNoLiBUaGUg
Ym9hcmQgY2FuIHVzZSBlaXRoZXIgU29DaGlwIFMzIG9yCj4+ID4+IEFsbHdpbm5lciBWM0wgU29D
cy4KPj4gPj4KPj4gPj4gQWRkIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIG9mIHRoZSBiYXNpYyB2
ZXJzaW9uIG9mIHRoZSBjb3JlIGJvYXJkIC0tCj4+ID4+IHcvbyBlTU1DIG9yIFNQSSBGbGFzaCwg
dy8gVEYgc2xvdCBvciBXU09OOCBTRCwgYW5kIHVzZSBTMyBTb0MuCj4+ID4+Cj4+ID4+IFNpZ25l
ZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5pbz4KPj4gPj4gLS0tCj4+ID4+
IE5vIGNoYW5nZXMgc2luY2UgdjMuCj4+ID4+Cj4+ID4+IFBhdGNoIGludHJvZHVjZWQgaW4gdjIu
Cj4+ID4+Cj4+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N1bnhp
LnlhbWwgfCA1ICsrKysrCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4+
ID4+Cj4+ID4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3N1bnhpLnlhbWwKPj4gPmIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9zdW54aS55YW1sCj4+ID4+IGluZGV4IDAwMGEwMGQxMmQ2YS4uNDhjMTI2YTdhODQ4IDEwMDY0
NAo+PiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N1bnhp
LnlhbWwKPj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9z
dW54aS55YW1sCj4+ID4+IEBAIC0zNTMsNiArMzUzLDExIEBAIHByb3BlcnRpZXM6Cj4+ID4+ICAg
ICAgICAgICAgLSBjb25zdDogbGljaGVlcGksbGljaGVlcGktemVybwo+PiA+PiAgICAgICAgICAg
IC0gY29uc3Q6IGFsbHdpbm5lcixzdW44aS12M3MKPj4gPj4KPj4gPj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IExpY2hlZSBaZXJvIFBsdXMgKHdpdGggUzMsIHdpdGhvdXQgZU1NQy9TUEkKPj4gPkZs
YXNoKQo+PiA+PiArICAgICAgICBpdGVtczoKPj4gPj4gKyAgICAgICAgICAtIGNvbnN0OiBzaXBl
ZWQsbGljaGVlLXplcm8tcGx1cwo+PiA+PiArICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixz
dW44aS1zMwo+PiA+Cj4+ID5JZiB0aGUgUzMgaXMganVzdCBhIHJlYnJhbmRlZCBWMywgdGhlbiB3
ZSBzaG91bGQgaGF2ZSB0aGUgdjMgY29tcGF0aWxlCj4+ID5pbiB0aGF0IGxpc3QgdG9vLgo+PiAK
Pj4gUzMgaXMgVjMgd2l0aCBjb3BhY2thZ2VkIEREUjMgRFJBTS4KPj4gCj4+IEl0J3MgcGluIGlu
Y29tcGF0aWJsZSB3LyBWMy4KPiAKPiBEb2VzIGl0IG1hdHRlciB0aG91Z2g/Cj4gCj4gSWYgdGhl
IG9ubHkgdGhpbmcgdGhhdCBjaGFuZ2VzIGlzIHRoZSBwYWNrYWdlLCB3ZSdyZSBub3QgbWFuaXB1
bGF0aW5nCj4gdGhhdCwgYW5kIGFueSBzb2Z0d2FyZSB0aGF0IGRlYWxzIHdpdGggdGhlIHYzIGNh
biBkZWFsIHdpdGggdGhlCj4gczMuIFdoaWNoIGlzIHdoYXQgdGhlIGNvbXBhdGlibGUgaXMgYWJv
dXQuCgpPa2F5LiBTaG91bGQgdGhlIFMzIGNvbXBhdGlibGUgYmUga2VwdCBiZWZvZXIgdGhlIFYz
IG9uZT8KCj4gCj4gTWF4aW1lCj4gCj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1i
ZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20K
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
