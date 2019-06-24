Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D9B50C39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNDGL6AWE1rdrj234xtawRzuJbLBBTx/k/15Jf3ymPY=; b=C2zcI/L+QS9MnO
	2GLCH8ZAjJyg8FCM4N79Rp185kYfrIuwlDkAB1eug0TDOyA+KcmfBXBzrdz6wHmv0guO4Fu0EckMu
	5DQtMkc2YqwrMRpdOP4FtyXYzNTEZVGjTWOZCBoUm26GRYsT+ijeP8EYm9oJaAS0uTe9w0qpXXgKG
	EvcBHmpChd7DBHbFXrbs2rpZZhJXwwzteXBO9HHpjY2RglnSsx6548aw5V1n+AyRUj6H77saWlHMh
	Tkmcb3vHOyBaIs1WIENIdHBTJxqANMcWKSSAvfmp/EUfw9iw7IYZroi+PMnFN4xFCYxzYiZA1MqpS
	0azFhFlYCrVngM6jS/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPGP-0007FR-3w; Mon, 24 Jun 2019 13:44:05 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPGB-0007F8-Oz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:43:53 +0000
Received: from [199.195.250.187] (port=58237 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hfPG1-0000Mc-AT; Mon, 24 Jun 2019 14:43:46 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id F0E2A6CACE;
 Mon, 24 Jun 2019 13:43:30 +0000 (UTC)
Date: Mon, 24 Jun 2019 21:43:23 +0800
In-Reply-To: <20190624124301.chwhfalk5o53fm5x@flea>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-10-icenowy@aosc.io>
 <20190624124301.chwhfalk5o53fm5x@flea>
MIME-Version: 1.0
Subject: Re: [PATCH v3 9/9] ARM: dts: sun8i: s3: add devicetree for Lichee
 zero plus w/ S3
To: linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <1E6AB747-5A4C-4515-A0EB-F0E89F520CF7@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_064351_810176_12D3A24F 
X-CRM114-Status: GOOD (  16.41  )
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

Cgrkuo4gMjAxOeW5tDbmnIgyNOaXpSBHTVQrMDg6MDAg5LiL5Y2IODo0MzowMSwgTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4g5YaZ5YiwOgo+T24gU3VuLCBKdW4gMjMs
IDIwMTkgYXQgMTI6Mzg6MDFQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPj4gTGljaGVl
IHplcm8gcGx1cyBpcyBhIGNvcmUgYm9hcmQgbWFkZSBieSBTaXBlZWQsIHdoaWNoIGluY2x1ZGVz
Cj5vbi1ib2FyZAo+PiBURiBzbG90IG9yIFNNVCBTRCBOQU5ELCBhbmQgb3B0aW9uYWwgU1BJIE5P
UiBvciBlTU1DLCBhIFVBUlQgZGVidWcKPj4gaGVhZGVyLCBhIG1pY3JvVVNCIHNsb3QgYW5kIGEg
Z29sZCBmaW5nZXIgY29ubmVjdG9yIGZvciBleHBhbnNpb24uIEl0Cj4+IGNhbiB1c2UgZWl0aGVy
IFNvY2hpcCBTMyBvciBBbGx3aW5uZXIgUzNMIFNvQy4KPj4KPj4gQWRkIHRoZSBiYXNpYyBkZXZp
Y2UgdHJlZSBmb3IgdGhlIGNvcmUgYm9hcmQsIHcvbyBvcHRpb25hbCBvbmJvYXJkCj4+IHN0b3Jh
Z2UsIGFuZCB3aXRoIFMzIFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8
aWNlbm93eUBhb3NjLmlvPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2MzoKPj4gLSBEcm9wIGNvbW1v
biByZWd1bGF0b3IgRFRTSSB1c2FnZSBhbmQgYWRkZWQgdmNjM3YzIHJlZ3VsYXRvci4KPj4KPj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAxICsKPj4g
IC4uLi9ib290L2R0cy9zdW44aS1zMy1saWNoZWUtemVyby1wbHVzLmR0cyAgICB8ICA4ICsrKysK
Pj4gIC4uLi9kdHMvc3VuOGktczMtczNsLWxpY2hlZS16ZXJvLXBsdXMuZHRzaSAgICB8IDQ0Cj4r
KysrKysrKysrKysrKysrKysrCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykK
Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9zdW44aS1zMy1saWNoZWUt
emVyby1wbHVzLmR0cwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj5hcmNoL2FybS9ib290L2R0cy9z
dW44aS1zMy1zM2wtbGljaGVlLXplcm8tcGx1cy5kdHNpCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCj4+IGlu
ZGV4IGM0NzQyYWZlNDFhNy4uZDI0ZGVjMjkyNDVlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9NYWtlZmlsZQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQo+PiBA
QCAtMTExMyw2ICsxMTEzLDcgQEAgZHRiLSQoQ09ORklHX01BQ0hfU1VOOEkpICs9IFwKPj4gIAlz
dW44aS1yMTYtbmludGVuZG8tc3VwZXItbmVzLWNsYXNzaWMuZHRiIFwKPj4gIAlzdW44aS1yMTYt
cGFycm90LmR0YiBcCj4+ICAJc3VuOGktcjQwLWJhbmFuYXBpLW0yLXVsdHJhLmR0YiBcCj4+ICsJ
c3VuOGktczMtbGljaGVlLXplcm8tcGx1cy5kdGIgXAo+PiAgCXN1bjhpLXQzLWNxYTN0LWJ2My5k
dGIgXAo+PiAgCXN1bjhpLXYzcy1saWNoZWVwaS16ZXJvLmR0YiBcCj4+ICAJc3VuOGktdjNzLWxp
Y2hlZXBpLXplcm8tZG9jay5kdGIgXAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOGktczMtbGljaGVlLXplcm8tcGx1cy5kdHMKPmIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGkt
czMtbGljaGVlLXplcm8tcGx1cy5kdHMKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi43ZDJmNmIxNDUxOTAKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9hcmNo
L2FybS9ib290L2R0cy9zdW44aS1zMy1saWNoZWUtemVyby1wbHVzLmR0cwo+PiBAQCAtMCwwICsx
LDggQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+
PiArLyoKPj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFv
c2MuaW8+Cj4+ICsgKi8KPj4gKwo+PiArL2R0cy12MS87Cj4+ICsjaW5jbHVkZSAic3VuOGktczMu
ZHRzaSIKPj4gKyNpbmNsdWRlICJzdW44aS1zMy1zM2wtbGljaGVlLXplcm8tcGx1cy5kdHNpIgo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktczMtczNsLWxpY2hlZS16ZXJv
LXBsdXMuZHRzaQo+Yi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1zMy1zM2wtbGljaGVlLXplcm8t
cGx1cy5kdHNpCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
ZTY4ZjczOGMzMDQ2Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOGktczMtczNsLWxpY2hlZS16ZXJvLXBsdXMuZHRzaQo+PiBAQCAtMCwwICsxLDQ2IEBACj4+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPj4gKy8qCj4+
ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgo+
PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4gKwo+
PiArLyB7Cj4+ICsJYWxpYXNlcyB7Cj4+ICsJCXNlcmlhbDAgPSAmdWFydDA7Cj4+ICsJfTsKPj4g
Kwo+PiArCWNob3NlbiB7Cj4+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOwo+
PiArCX07Cj4+ICsKPj4gKwlyZWdfdmNjM3YzOiB2Y2MzdjMgewo+PiArCQljb21wYXRpYmxlID0g
InJlZ3VsYXRvci1maXhlZCI7Cj4+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MyI7Cj4+ICsJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPj4gKwl9Owo+PiArfTsKPj4gKwo+PiArJm1tYzAgewo+
PiArCWJyb2tlbi1jZDsKPj4gKwlidXMtd2lkdGggPSA8ND47Cj4+ICsJdm1tYy1zdXBwbHkgPSA8
JnJlZ192Y2MzdjM+Owo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZ1YXJ0
MCB7Cj4+ICsJcGluY3RybC0wID0gPCZ1YXJ0MF9wYl9waW5zPjsKPj4gKwlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZ1c2Jf
b3RnIHsKPj4gKwlkcl9tb2RlID0gIm90ZyI7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsK
Pj4gKwo+PiArJnVzYnBoeSB7Cj4+ICsJdXNiMF9pZF9kZXQtZ3Bpb3MgPSA8JnBpbyA1IDYgR1BJ
T19BQ1RJVkVfSElHSD47Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPgo+SG93IGNhbiBp
dCBkbyBPVEcgaWYgdGhlcmUncyBubyBjb250cm9sbGFibGUgVkJVUyByZWd1bGF0b3I/CgpBbGwg
NVYncyBhcmUgY29ubmVjdGVkIHRvZ2V0aGVyLCBsaWtlIE9yYW5nZSBQaSBaZXJvLgoKPgo+TWF4
aW1lCj4KPi0tCj5NYXhpbWUgUmlwYXJkLCBCb290bGluCj5FbWJlZGRlZCBMaW51eCBhbmQgS2Vy
bmVsIGVuZ2luZWVyaW5nCj5odHRwczovL2Jvb3RsaW4uY29tCgotLSAK5L2/55SoIEstOSBNYWls
IOWPkemAgeiHquaIkeeahEFuZHJvaWTorr7lpIfjgIIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
