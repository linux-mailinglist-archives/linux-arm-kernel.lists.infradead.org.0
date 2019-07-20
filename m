Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E686EF3C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 13:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDnLwBUfgzWsQ9PmVgRb3qD4kBpoCnRoquS2X0Jduqw=; b=aAIzsboXmlhMVK
	grZMx2Z0kY+5UtkX5bciWFlx2ZlQf7XP7SqqbxXVO3Xgcx5p7wh0ev4KHJ98td6Ztt4GUz05seMHp
	l7MFiTW4u0HD8Oz50MFjLjsb24uLlOZdSgy0XvQKxfuwbcBOarbJpQ5Grn+9XG8Q0ya2xiWTg+P/m
	fu/ayA3NILrjsfhiVjutyZ39oIVN0vnSgYlhqSbnhlFm1laOYisd03+tXfqNUSEDdHI0cFEuu4LAn
	Jb74YWTraB+kXjUPoQf/m3l/WeViX5L0vm3UJYJ873R7I8aCj3UbeMxHmEWcoRNWcsfTUGL0lVe9J
	sHcMxLSWfA7sSGe0JGqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1honiN-0007I1-Kk; Sat, 20 Jul 2019 11:39:47 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1honhv-0007HT-JB
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 11:39:21 +0000
Received: from [199.195.250.187] (port=44718 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1honhm-000736-3Z; Sat, 20 Jul 2019 12:39:14 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id E210C6F0CC;
 Sat, 20 Jul 2019 11:39:00 +0000 (UTC)
Date: Sat, 20 Jul 2019 19:39:08 +0800
In-Reply-To: <20190720101318.cwrvv5r42wxx5k4r@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
 <20190720101318.cwrvv5r42wxx5k4r@flea>
MIME-Version: 1.0
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
To: linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <BDF0C9F6-DD0D-4343-8E24-06A07055004C@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_043919_633979_85C82C6A 
X-CRM114-Status: GOOD (  14.71  )
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

Cgrkuo4gMjAxOeW5tDfmnIgyMOaXpSBHTVQrMDg6MDAg5LiL5Y2INjoxMzoxOCwgTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4g5YaZ5YiwOgo+T24gU2F0LCBKdWwgMTMs
IDIwMTkgYXQgMTE6NDY6MzNBTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPj4gVGhlIExp
Y2hlZSBaZXJvIFBsdXMgaXMgYSBjb3JlIGJvYXJkIG1hZGUgYnkgU2lwZWVkLCB3aXRoIGEgbWlj
cm9VU0IKPj4gY29ubmVjdG9yIG9uIGl0LCBURiBzbG90IG9yIFdTT044IFNEIGNoaXAsIG9wdGlv
bmFsIGVNTUMgb3IgU1BJCj5GbGFzaC4KPj4gSXQgaGFzIGEgZ29sZCBmaW5nZXIgY29ubmVjdG9y
IGZvciBleHBhbnNpb24sIGFuZCBVQVJUIGlzIGF2YWlsYWJsZQo+ZnJvbQo+PiByZXNlcnZlZCBw
aW5zIHcvIDIuNTRtbSBwaXRjaC4gVGhlIGJvYXJkIGNhbiB1c2UgZWl0aGVyIFNvQ2hpcCBTMyBv
cgo+PiBBbGx3aW5uZXIgVjNMIFNvQ3MuCj4+Cj4+IEFkZCB0aGUgZGV2aWNlIHRyZWUgYmluZGlu
ZyBvZiB0aGUgYmFzaWMgdmVyc2lvbiBvZiB0aGUgY29yZSBib2FyZCAtLQo+PiB3L28gZU1NQyBv
ciBTUEkgRmxhc2gsIHcvIFRGIHNsb3Qgb3IgV1NPTjggU0QsIGFuZCB1c2UgUzMgU29DLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj4+IC0tLQo+
PiBObyBjaGFuZ2VzIHNpbmNlIHYzLgo+Pgo+PiBQYXRjaCBpbnRyb2R1Y2VkIGluIHYyLgo+Pgo+
PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sIHwgNSAr
KysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sCj5iL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VueGkueWFtbAo+PiBpbmRleCAw
MDBhMDBkMTJkNmEuLjQ4YzEyNmE3YTg0OCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VueGkueWFtbAo+PiBAQCAtMzUzLDYgKzM1MywxMSBA
QCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgICAgIC0gY29uc3Q6IGxpY2hlZXBpLGxpY2hlZXBpLXpl
cm8KPj4gICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuOGktdjNzCj4+Cj4+ICsgICAg
ICAtIGRlc2NyaXB0aW9uOiBMaWNoZWUgWmVybyBQbHVzICh3aXRoIFMzLCB3aXRob3V0IGVNTUMv
U1BJCj5GbGFzaCkKPj4gKyAgICAgICAgaXRlbXM6Cj4+ICsgICAgICAgICAgLSBjb25zdDogc2lw
ZWVkLGxpY2hlZS16ZXJvLXBsdXMKPj4gKyAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3Vu
OGktczMKPgo+SWYgdGhlIFMzIGlzIGp1c3QgYSByZWJyYW5kZWQgVjMsIHRoZW4gd2Ugc2hvdWxk
IGhhdmUgdGhlIHYzIGNvbXBhdGlsZQo+aW4gdGhhdCBsaXN0IHRvby4KClMzIGlzIFYzIHdpdGgg
Y29wYWNrYWdlZCBERFIzIERSQU0uCgpJdCdzIHBpbiBpbmNvbXBhdGlibGUgdy8gVjMuCgo+Cj5N
YXhpbWUKPgo+LS0KPk1heGltZSBSaXBhcmQsIEJvb3RsaW4KPkVtYmVkZGVkIExpbnV4IGFuZCBL
ZXJuZWwgZW5naW5lZXJpbmcKPmh0dHBzOi8vYm9vdGxpbi5jb20KCi0tIArkvb/nlKggSy05IE1h
aWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9pZOiuvuWkh+OAggoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
