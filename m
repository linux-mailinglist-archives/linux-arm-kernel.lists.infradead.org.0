Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CDC6EECE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sWDjUf2+uKf3XDlMBlysIInm2dx2gBe1wVq5KWIMWg=; b=jkaW7NmZusiLBr
	0TDuCLmpRte905F+PYwNa+kdr6cCAfq9vhDbw0ijbGlm+VwF6FwfGOkcnMRI0DXoqQYfoDJyjbZoX
	96CLmGhQVLfomXA7YphqN85lY3+Gt/iPOxnDkXUjDe1tZKSo6orqK8NhQ3cUeVR1A1kNM8JX1fFGc
	f5lHTLuWOL+P9t7IYZeNphAUDED9GmlZVhS0MJH2I+Wcwf9Y2c81ma0wptCx76/J/I/sB1EtW961h
	J9srbFiPB8JsEim0Tul7f8BIC7hW72UYGnBYiLOFmFPBut0OQxoZOe1G8Vw8+1S3GClZnA4eitjMR
	YShh8ipJdjSDe8390Qsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holwX-0004Dt-1d; Sat, 20 Jul 2019 09:46:17 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holwA-0004D7-DB
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:45:57 +0000
Received: from [199.195.250.187] (port=41129 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1holw1-0000MY-4V; Sat, 20 Jul 2019 10:45:49 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id C64236ECDF;
 Sat, 20 Jul 2019 09:45:27 +0000 (UTC)
Date: Sat, 20 Jul 2019 17:45:33 +0800
In-Reply-To: <20190720094449.dh53rbxz3mc74qls@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-5-icenowy@aosc.io>
 <20190720094449.dh53rbxz3mc74qls@flea>
MIME-Version: 1.0
Subject: Re: [PATCH v4 4/8] clk: sunxi-ng: v3s: add missing clock slices for
 MMC2 module clocks
To: Maxime Ripard <maxime.ripard@bootlin.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <DF2A53EE-E978-440A-98EF-76FF9F3DC84C@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024554_467598_EA71AAE4 
X-CRM114-Status: GOOD (  13.51  )
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDfmnIgyMOaXpSBHTVQrMDg6MDAg5LiL5Y2INTo0NDo0OSwgTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4g5YaZ5YiwOgo+T24gU2F0LCBKdWwgMTMs
IDIwMTkgYXQgMTE6NDY6MzBBTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPj4gVGhlIE1N
QzIgY2xvY2sgc2xpY2VzIGFyZSBjdXJyZW50bHkgbm90IGRlZmluZWQgaW4gVjNzIENDVSBkcml2
ZXIsCj53aGljaAo+PiBtYWtlcyBNTUMyIG5vdCB3b3JraW5nLgo+Pgo+PiBGaXggdGhpcyBpc3N1
ZS4KPj4KPj4gRml4ZXM6IGQwZjExZDE0YjBiYyAoImNsazogc3VueGktbmc6IGFkZCBzdXBwb3J0
IGZvciBWM3MgQ0NVIikKPj4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8aWNlbm93eUBh
b3NjLmlvPgo+PiAtLS0KPj4gTmV3IHBhdGNoIGluIHY0Lgo+Pgo+PiAgZHJpdmVycy9jbGsvc3Vu
eGktbmcvY2N1LXN1bjhpLXYzcy5jIHwgMyArKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44
aS12M3MuYwo+Yi9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuOGktdjNzLmMKPj4gaW5kZXgg
NGViNjgyNDNlMzEwLi45Yzg4MDE1ZDQ0MTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xrL3N1
bnhpLW5nL2NjdS1zdW44aS12M3MuYwo+PiArKysgYi9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Ut
c3VuOGktdjNzLmMKPj4gQEAgLTUxMyw2ICs1MTMsOSBAQCBzdGF0aWMgc3RydWN0IGNsa19od19v
bmVjZWxsX2RhdGEKPnN1bjhpX3Yzc19od19jbGtzID0gewo+PiAgCQlbQ0xLX01NQzFdCQk9ICZt
bWMxX2Nsay5jb21tb24uaHcsCj4+ICAJCVtDTEtfTU1DMV9TQU1QTEVdCT0gJm1tYzFfc2FtcGxl
X2Nsay5jb21tb24uaHcsCj4+ICAJCVtDTEtfTU1DMV9PVVRQVVRdCT0gJm1tYzFfb3V0cHV0X2Ns
ay5jb21tb24uaHcsCj4+ICsJCVtDTEtfTU1DMl0JCT0gJm1tYzFfY2xrLmNvbW1vbi5odywKPj4g
KwkJW0NMS19NTUMyX1NBTVBMRV0JPSAmbW1jMV9zYW1wbGVfY2xrLmNvbW1vbi5odywKPj4gKwkJ
W0NMS19NTUMyX09VVFBVVF0JPSAmbW1jMV9vdXRwdXRfY2xrLmNvbW1vbi5odywKPgo+WW91J3Jl
IHVzaW5nIHRoZSBzYW1lIHN0cnVjdHVyZXMgdGhhbiBtbWMxLCBJIGd1ZXNzIGl0J3MgYSBjb3B5
IGFuZAo+cGFzdGUgbWlzdGFrZT8KClllcy4KCj4KPk1heGltZQo+Cj4tLQo+TWF4aW1lIFJpcGFy
ZCwgQm9vdGxpbgo+RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+aHR0cHM6
Ly9ib290bGluLmNvbQoKLS0gCuS9v+eUqCBLLTkgTWFpbCDlj5HpgIHoh6rmiJHnmoRBbmRyb2lk
6K6+5aSH44CCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
