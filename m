Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D6874D20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggaWXeUdBS1MXCzgQv65UEIjtXqJmPRsrAaXe4RDl1w=; b=SXgF83qCxRLBTK
	C+8eJS3XTa5cZx+KGOOacedJfNoXUj4P6UKa0NIlO6sROYSi/68fvw2m82kfMZlL6oc0WogoSRJkB
	fP9qpyqJq7phElomGo4oe1zjH2sFVD3MIE7j1a5OLqvOdzzn8pndMxhHYtlXh/sZ0GEjUZbL6Fe+Q
	YOyMDjU+O8v7dDVKOQFejoMlH82fw7L55NzlhBkDmoGxe9AzNqHlC74gqPUnniui7V13iONwzNch1
	3/jzOBDXlfkrIZXUWyV6NpGbA7kr9eLbdIY414kwB5aPvb1M7U1vMvsme31/5kPCqyFXk7K9saKPX
	WDXd3APYHhCKF+l0OBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbzi-0003Ry-GT; Thu, 25 Jul 2019 11:33:10 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbzW-0003Qy-3T
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:33:00 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9B61F20009;
 Thu, 25 Jul 2019 11:32:39 +0000 (UTC)
Date: Wed, 24 Jul 2019 16:14:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
Message-ID: <20190724141425.aycdkdwlgmljwpgr@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
 <20190720101318.cwrvv5r42wxx5k4r@flea>
 <BDF0C9F6-DD0D-4343-8E24-06A07055004C@aosc.io>
 <20190722192934.3jaf3r4rnyeslqyw@flea>
 <7d24576697521f4985617113dbc4cc41@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d24576697521f4985617113dbc4cc41@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_043258_307000_373596A5 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDk6MDk6MDFQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiDlnKggMjAxOS0wNy0yMyAwMzoyOe+8jE1heGltZSBSaXBhcmQg5YaZ6YGT77yaCj4g
PiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwNzozOTowOFBNICswODAwLCBJY2Vub3d5IFpoZW5n
IHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPiDkuo4gMjAxOeW5tDfmnIgyMOaXpSBHTVQrMDg6MDAg
5LiL5Y2INjoxMzoxOCwgTWF4aW1lIFJpcGFyZAo+ID4gPiA8bWF4aW1lLnJpcGFyZEBib290bGlu
LmNvbT4g5YaZ5YiwOgo+ID4gPiA+T24gU2F0LCBKdWwgMTMsIDIwMTkgYXQgMTE6NDY6MzNBTSAr
MDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPiA+ID4gPj4gVGhlIExpY2hlZSBaZXJvIFBsdXMg
aXMgYSBjb3JlIGJvYXJkIG1hZGUgYnkgU2lwZWVkLCB3aXRoIGEgbWljcm9VU0IKPiA+ID4gPj4g
Y29ubmVjdG9yIG9uIGl0LCBURiBzbG90IG9yIFdTT044IFNEIGNoaXAsIG9wdGlvbmFsIGVNTUMg
b3IgU1BJCj4gPiA+ID5GbGFzaC4KPiA+ID4gPj4gSXQgaGFzIGEgZ29sZCBmaW5nZXIgY29ubmVj
dG9yIGZvciBleHBhbnNpb24sIGFuZCBVQVJUIGlzIGF2YWlsYWJsZQo+ID4gPiA+ZnJvbQo+ID4g
PiA+PiByZXNlcnZlZCBwaW5zIHcvIDIuNTRtbSBwaXRjaC4gVGhlIGJvYXJkIGNhbiB1c2UgZWl0
aGVyIFNvQ2hpcCBTMyBvcgo+ID4gPiA+PiBBbGx3aW5uZXIgVjNMIFNvQ3MuCj4gPiA+ID4+Cj4g
PiA+ID4+IEFkZCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBvZiB0aGUgYmFzaWMgdmVyc2lvbiBv
ZiB0aGUgY29yZSBib2FyZCAtLQo+ID4gPiA+PiB3L28gZU1NQyBvciBTUEkgRmxhc2gsIHcvIFRG
IHNsb3Qgb3IgV1NPTjggU0QsIGFuZCB1c2UgUzMgU29DLgo+ID4gPiA+Pgo+ID4gPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj4gPiA+ID4+IC0tLQo+
ID4gPiA+PiBObyBjaGFuZ2VzIHNpbmNlIHYzLgo+ID4gPiA+Pgo+ID4gPiA+PiBQYXRjaCBpbnRy
b2R1Y2VkIGluIHYyLgo+ID4gPiA+Pgo+ID4gPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9zdW54aS55YW1sIHwgNSArKysrKwo+ID4gPiA+PiAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gPiA+Pgo+ID4gPiA+PiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sCj4gPiA+ID5iL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VueGkueWFtbAo+ID4gPiA+PiBpbmRl
eCAwMDBhMDBkMTJkNmEuLjQ4YzEyNmE3YTg0OCAxMDA2NDQKPiA+ID4gPj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sCj4gPiA+ID4+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VueGkueWFtbAo+ID4gPiA+
PiBAQCAtMzUzLDYgKzM1MywxMSBAQCBwcm9wZXJ0aWVzOgo+ID4gPiA+PiAgICAgICAgICAgIC0g
Y29uc3Q6IGxpY2hlZXBpLGxpY2hlZXBpLXplcm8KPiA+ID4gPj4gICAgICAgICAgICAtIGNvbnN0
OiBhbGx3aW5uZXIsc3VuOGktdjNzCj4gPiA+ID4+Cj4gPiA+ID4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBMaWNoZWUgWmVybyBQbHVzICh3aXRoIFMzLCB3aXRob3V0IGVNTUMvU1BJCj4gPiA+ID5G
bGFzaCkKPiA+ID4gPj4gKyAgICAgICAgaXRlbXM6Cj4gPiA+ID4+ICsgICAgICAgICAgLSBjb25z
dDogc2lwZWVkLGxpY2hlZS16ZXJvLXBsdXMKPiA+ID4gPj4gKyAgICAgICAgICAtIGNvbnN0OiBh
bGx3aW5uZXIsc3VuOGktczMKPiA+ID4gPgo+ID4gPiA+SWYgdGhlIFMzIGlzIGp1c3QgYSByZWJy
YW5kZWQgVjMsIHRoZW4gd2Ugc2hvdWxkIGhhdmUgdGhlIHYzIGNvbXBhdGlsZQo+ID4gPiA+aW4g
dGhhdCBsaXN0IHRvby4KPiA+ID4KPiA+ID4gUzMgaXMgVjMgd2l0aCBjb3BhY2thZ2VkIEREUjMg
RFJBTS4KPiA+ID4KPiA+ID4gSXQncyBwaW4gaW5jb21wYXRpYmxlIHcvIFYzLgo+ID4KPiA+IERv
ZXMgaXQgbWF0dGVyIHRob3VnaD8KPiA+Cj4gPiBJZiB0aGUgb25seSB0aGluZyB0aGF0IGNoYW5n
ZXMgaXMgdGhlIHBhY2thZ2UsIHdlJ3JlIG5vdCBtYW5pcHVsYXRpbmcKPiA+IHRoYXQsIGFuZCBh
bnkgc29mdHdhcmUgdGhhdCBkZWFscyB3aXRoIHRoZSB2MyBjYW4gZGVhbCB3aXRoIHRoZQo+ID4g
czMuIFdoaWNoIGlzIHdoYXQgdGhlIGNvbXBhdGlibGUgaXMgYWJvdXQuCj4KPiBPa2F5LiBTaG91
bGQgdGhlIFMzIGNvbXBhdGlibGUgYmUga2VwdCBiZWZvZXIgdGhlIFYzIG9uZT8KClllcCwgc29t
ZXRoaW5nIGxpa2UgKGluIHRoZSBEVCkKCmNvbXBhdGlibGUgPSAic2lwZWVkLGxpY2hlZS16ZXJv
LXBsdXMiLCAiYWxsd2lubmVyLHN1bjhpLXMzIiwgImFsbHdpbm5lcixzdW44aS12MyIKCk1heGlt
ZQoKLS0KTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVu
Z2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
