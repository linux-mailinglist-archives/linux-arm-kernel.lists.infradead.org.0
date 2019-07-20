Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DB06EEDF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkE7mo+uEdZIrr/Y4WXi1+Z9H1t9kuTQl+6xQIbWHFk=; b=caRWbgeFjraWSU
	s3BpetvSoYAIvtTKbCeFQjo27xZUdshOL/fDcVlGNptfzrQ9LJVWzas/02BDP0KXHmPsT/W0trLVP
	VArtSMNI4H3ByRIKHj51TP02FCZA1Thp5p5Xtbp30DFFazoBOpjHnSEOJTTBkBtkObqlYThp8NQOP
	poy92Cal+m7hSZtQ0ELka6dIKuzj3iNBl6bSoF9ZkC2VMBBFJjzrOLK8yJt8IWIuecIy6s9RcS49o
	Us6xB6FE/9N5KUtRJQfS4l6v0gBH3qZ3Ax1nilo0ef8Uy6ngzjXLsOv2Cj/5xgA6s7fo/R2BTm5pz
	xzld67FJ8TkUczT5ldYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hom0i-0006Jb-Ih; Sat, 20 Jul 2019 09:50:36 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hom0T-0006J4-3p
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:50:22 +0000
Received: from [199.195.250.187] (port=41375 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hom0K-0000l2-R6; Sat, 20 Jul 2019 10:50:17 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 3221A6ECDF;
 Sat, 20 Jul 2019 09:50:05 +0000 (UTC)
Date: Sat, 20 Jul 2019 17:50:10 +0800
In-Reply-To: <20190720094814.s6qik6ja2ympwpmp@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-7-icenowy@aosc.io>
 <20190720094814.s6qik6ja2ympwpmp@flea>
MIME-Version: 1.0
Subject: Re: [PATCH v4 6/8] ARM: sunxi: dts: s3/s3l/v3: add DTSI files for
 S3/S3L/V3 SoCs
To: linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <76C8832D-04C8-4EEE-A0D1-1EE018DF9B94@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_025021_160912_7D3861C4 
X-CRM114-Status: GOOD (  16.22  )
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
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDfmnIgyMOaXpSBHTVQrMDg6MDAg5LiL5Y2INTo0ODoxNCwgTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4g5YaZ5YiwOgo+T24gU2F0LCBKdWwgMTMs
IDIwMTkgYXQgMTE6NDY6MzJBTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPj4gVGhlIEFs
bHdpbm5lciBTMy9TM0wvVjMgU29DcyBhbGwgc2hhcmUgdGhlIHNhbWUgZGllIHdpdGggdGhlIFYz
cyBTb0MsCj4+IGJ1dCB3aXRoIG1vcmUgR1BJTyB3aXJlZCBvdXQgb2YgdGhlIHBhY2thZ2UuCj4+
Cj4+IEFkZCBEVFNJIGZpbGVzIGZvciB0aGVzZSBTb0NzLiBUaGUgRFRTSSBmaWxlIGZvciBWMyBq
dXN0IHJlcGxhY2VzIHRoZQo+PiBwaW5jdHJsIGNvbXBhdGlibGUgc3RyaW5nLCBhbmQgdGhlIFMz
L1MzTCBEVFNJIGZpbGVzIGp1c3QgaW5jbHVkZSB0aGUKPlYzCj4+IERUU0kgZmlsZS4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgo+PiAtLS0KPj4g
Tm8gY2hhbmdlcyBzaW5jZSB2Mi4KPj4KPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXMzLmR0
c2kgIHwgIDYgKysrKysrCj4+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1zM2wuZHRzaSB8ICA2
ICsrKysrKwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjMuZHRzaSAgfCAxNCArKysrKysr
KysrKysrKwo+PiAgMyBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktczMuZHRzaQo+PiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXMzbC5kdHNpCj4+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjMuZHRzaQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktczMuZHRzaQo+Yi9hcmNoL2FybS9ib290L2R0cy9z
dW44aS1zMy5kdHNpCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMGY0MWEyNWVjYjMwCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOGktczMuZHRzaQo+PiBAQCAtMCwwICsxLDYgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiArLyoKPj4gKyAqIENvcHlyaWdodCAoQykg
MjAxOSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj4+ICsgKi8KPj4gKwo+PiArI2lu
Y2x1ZGUgInN1bjhpLXYzLmR0c2kiCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9z
dW44aS1zM2wuZHRzaQo+Yi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1zM2wuZHRzaQo+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjBmNDFhMjVlY2IzMAo+PiAt
LS0gL2Rldi9udWxsCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXMzbC5kdHNpCj4+
IEBAIC0wLDAgKzEsNiBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
KyBPUiBNSVQpCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IChDKSAyMDE5IEljZW5vd3kgWmhlbmcg
PGljZW5vd3lAYW9zYy5pbz4KPj4gKyAqLwo+PiArCj4+ICsjaW5jbHVkZSAic3VuOGktdjMuZHRz
aSIKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXYzLmR0c2kKPmIvYXJj
aC9hcm0vYm9vdC9kdHMvc3VuOGktdjMuZHRzaQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLjZhZTg2NDVhZGU1MAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXYzLmR0c2kKPj4gQEAgLTAsMCArMSwxNCBAQAo+PiAr
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+ICsvKgo+PiAr
ICogQ29weXJpZ2h0IChDKSAyMDE5IEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5pbz4KPj4g
KyAqLwo+PiArCj4+ICsjaW5jbHVkZSAic3VuOGktdjNzLmR0c2kiCj4+ICsKPj4gKyZjY3Ugewo+
PiArCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLXYzLWNjdSI7Cj4+ICt9Owo+PiArCj4+
ICsmcGlvIHsKPj4gKwljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS12My1waW5jdHJsIjsK
Pj4gK307Cj4KPklzIHRoZXJlIGFueSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIFMzLCBTM0wgYW5k
IFYzPwoKRFJBTS4gVGhpcyBtaWdodCBiZSB1c2VmdWwgd2hlbiB3ZSBpbnRyb2R1Y2UgRFJBTSBE
VkZTLgoKPgo+SWYgbm90LCB0aGVuIHdlIGRvbid0IG5lZWQgYWxsIHRob3NlIERUU0ksIGp1c3Qg
YWRkIHRoZSB2MwoKQnV0IEkgYWdyZWUgd2l0aCB0aGlzIG5vdy4KCj4KPk1heGltZQo+Cj4tLQo+
TWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZwo+aHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCuS9v+eUqCBLLTkgTWFpbCDlj5HpgIHoh6rm
iJHnmoRBbmRyb2lk6K6+5aSH44CCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
