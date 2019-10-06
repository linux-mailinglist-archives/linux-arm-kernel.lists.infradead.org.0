Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A26CD2B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLsWO0kjmE+EUSByHRkb3+y03NQHWEb9vcNeCcDk53U=; b=JHXe2MlZIrtJFr
	nOe3+DB6DlgmRJxA46JWLAN5VWv4Q12g+witEU0D/XIyej8OYiOQrpoCXtHurazBWVtdFdXCpJInY
	ntVzpUnGEMWeLB9IrTLyb8bL1MtprhBLbRAODJCCMrG9oDsm40chAlZvdI4U2cUZImhMhlG2XeubO
	+RMeW7DsCf07CsKqP1NhkyGOgOpnL4N4JOoAC3OfFkqdM9GJd7AXESh/4h/2afKKVytDG/KzLFKjE
	cXnbsBrBVIujh6OJlVMXbdsecyVM+rXULTdik9OPkRpJuGzaL/j1fF4iYgR1OOKNPzYpc4ZpzEPuk
	U6HFda2oVG2XIKSy8V9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Gp-0004RN-Ld; Sun, 06 Oct 2019 15:16:27 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8EN-0001LY-0D
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:14:00 +0000
Received: from [199.195.250.187] (port=36604 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iH8ED-0004ZV-JS; Sun, 06 Oct 2019 16:13:50 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 5115582914;
 Sun,  6 Oct 2019 15:13:30 +0000 (UTC)
Message-ID: <14da3ae768c439e387f6609553bd465e945d4a33.camel@aosc.io>
Subject: Re: [linux-sunxi] [PATCH 3/3] Revert "drm/sun4i: dsi: Rework a bit
 the hblk calculation"
From: Icenowy Zheng <icenowy@aosc.io>
To: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 06 Oct 2019 23:12:43 +0800
In-Reply-To: <58dc94b6371ab2f5b11b13ab707d73ab3fc4cc64.camel@aosc.io>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-4-icenowy@aosc.io>
 <CAMty3ZDW4XHyW+6XL_RSVHqTSk79-r749pa0n5e6VbUzowAsiw@mail.gmail.com>
 <58dc94b6371ab2f5b11b13ab707d73ab3fc4cc64.camel@aosc.io>
Organization: Anthon Open-Source Community
MIME-Version: 1.0
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081355_066219_455E256E 
X-CRM114-Status: GOOD (  27.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMTAtMDbml6XnmoQgMjI6NDQgKzA4MDDvvIxJY2Vub3d5IFpoZW5n5YaZ6YGT77ya
Cj4g5ZyoIDIwMTktMTAtMDPlm5vnmoQgMDk6NTMgKzA1MzDvvIxKYWdhbiBUZWtp5YaZ6YGT77ya
Cj4gPiBIaSBXZW5zLAo+ID4gCj4gPiBPbiBUdWUsIE9jdCAxLCAyMDE5IGF0IDE6MzQgUE0gSWNl
bm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgo+ID4gd3JvdGU6Cj4gPiA+IFRoaXMgcmV2ZXJ0
cyBjb21taXQgNjJlNzUxMWE0ZjRkY2YwN2Y3NTM4OTNkMzQyNGRlY2Q5NDY2Yzk4Yi4KPiA+ID4g
Cj4gPiA+IFRoaXMgY29tbWl0LCBhbHRob3VnaCBjbGFpbWVkIGFzIGEgcmVmYWN0b3IsIGluIGZh
Y3QgY2hhbmdlZCB0aGUKPiA+ID4gZm9ybXVsYS4KPiA+ID4gCj4gPiA+IEJ5IGV4cGFuZGluZyB0
aGUgb3JpZ2luYWwgZm9ybXVsYSwgd2UgY2FuIGZpbmQgdGhhdCB0aGUgY29uc3QgMTAKPiA+ID4g
aXMKPiA+ID4gbm90Cj4gPiA+IHN1YnN0cmFjdGVkLCBpbnN0ZWFkIGl0J3MgYWRkZWQgdG8gdGhl
IHZhbHVlIChiZWNhdXNlIDEwIGlzCj4gPiA+IG5lZ2F0aXZlCj4gPiA+IHdoZW4gY2FsY3VsYXRp
bmcgaHNhLCBhbmQgaHNhIGl0c2VsZiBpcyBuZWdhdGl2ZSB3aGVuIGNhbGN1bGF0aW5nCj4gPiA+
IGhibGspLgo+ID4gPiBUaGlzIGJyZWFrcyB0aGUgc2ltaWxhciBwYXR0ZXJuIHRvIG90aGVyIGZv
cm11bGFzLCBzbyByZXN0b3JpbmcKPiA+ID4gdGhlCj4gPiA+IG9yaWdpbmFsIGZvcm11bGEgaXMg
bW9yZSBwcm9wZXIuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxp
Y2Vub3d5QGFvc2MuaW8+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjZpX21pcGlfZHNpLmMgfCA5ICsrLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNmlfbWlwaV9kc2kuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdW40aS9zdW42aV9taXBpX2RzaS5jCj4gPiA+IGluZGV4IDJkM2U4MjJhNzczOS4uY2I1ZmQx
OWMwZDBkIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNmlfbWlw
aV9kc2kuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNmlfbWlwaV9kc2ku
Ywo+ID4gPiBAQCAtNTc3LDE0ICs1NzcsOSBAQCBzdGF0aWMgdm9pZCBzdW42aV9kc2lfc2V0dXBf
dGltaW5ncyhzdHJ1Y3QKPiA+ID4gc3VuNmlfZHNpICpkc2ksCj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKG1vZGUtPmhzeW5jX3N0YXJ0IC0gbW9kZS0+aGRpc3BsYXkpICoKPiA+ID4g
QnBwIC0gSEZQX1BBQ0tFVF9PVkVSSEVBRCk7Cj4gPiA+IAo+ID4gPiAgICAgICAgICAgICAgICAg
LyoKPiA+ID4gLSAgICAgICAgICAgICAgICAqIFRoZSBibGFua2luZyBpcyBzZXQgdXNpbmcgYSBz
eW5jIGV2ZW50ICg0Cj4gPiA+IGJ5dGVzKQo+ID4gPiAtICAgICAgICAgICAgICAgICogYW5kIGEg
YmxhbmtpbmcgcGFja2V0ICg0IGJ5dGVzICsgcGF5bG9hZCArIDIKPiA+ID4gLSAgICAgICAgICAg
ICAgICAqIGJ5dGVzKS4gSXRzIG1pbmltYWwgc2l6ZSBpcyB0aGVyZWZvcmUgMTAKPiA+ID4gYnl0
ZXMuCj4gPiA+ICsgICAgICAgICAgICAgICAgKiBoYmxrIHNlZW1zIHRvIGJlIHRoZSBsaW5lICsg
cG9yY2hlcyBsZW5ndGguCj4gPiA+ICAgICAgICAgICAgICAgICAgKi8KPiA+ID4gLSNkZWZpbmUg
SEJMS19QQUNLRVRfT1ZFUkhFQUQgICAxMAo+ID4gPiAtICAgICAgICAgICAgICAgaGJsayA9IG1h
eCgodW5zaWduZWQgaW50KUhCTEtfUEFDS0VUX09WRVJIRUFELAo+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAobW9kZS0+aHRvdGFsIC0gKG1vZGUtPmhzeW5jX2VuZCAtCj4gPiA+IG1v
ZGUtCj4gPiA+ID4gaHN5bmNfc3RhcnQpKSAqIEJwcCAtCj4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgIEhCTEtfUEFDS0VUX09WRVJIRUFEKTsKPiA+ID4gKyAgICAgICAgICAgICAgIGhi
bGsgPSBtb2RlLT5odG90YWwgKiBCcHAgLSBoc2E7Cj4gPiAKPiA+IFRoZSBvcmlnaW5hbCBmb3Jt
dWxhIGlzIGNvcnJlY3QgYWNjb3JkaW5nIHRvIEJTUCBbMV0gYW5kIHdvcmsgd2l0aAo+ID4gbXkK
PiA+IHBhbmVscyB3aGljaCBJIGhhdmUgdGVzdGVkIGJlZm9yZS4gTWF5IGJlIHRoZSBob3Jpem9u
dGFsIHRpbWluZ3Mgb24KPiA+IHBhbmVscyB5b3UgaGF2ZSBsZWFkcyB0byBuZWdhdGl2ZSB2YWx1
ZS4KPiAKPiBEbyB5b3UgdGVzdGVkIHRoZSBzYW1lIHRpbWluZyB3aXRoIEJTUCBrZXJuZWw/Cj4g
Cj4gSXQncyBxdWl0ZSBkaWZmaWN1bHQgdG8gZ2V0IGEgbmVnYXRpdmUgdmFsdWUgaGVyZSwgYmVj
YXVzZSB0aGUgdmFsdWUKPiBpcwo+IHF1aXRlIGJpZyAoaW5jbHVkZXMgbW9kZS0+aGRpc3BsYXkg
KiBCcHApLgoKQnkgcmUtY2hlY2tpbmcgd2l0aCB0aGUgQlNQIHNvdXJjZSBjb2RlLCBJIGZvdW5k
IHRoYXQgdGhlIGNvbnN0YW50IGluCnRoZSBIRlAgZm9ybXVsYSBpcyBpbmRlZWQgd3JvbmcgLS0g
aXQgc2hvdWxkIGJlIDE2LCBub3QgNi4KCj4gCj4gU3RyYW5nZWx5LCBvbmx5IGNoYW5nZSB0aGUg
Zm9ybXVsYSBoZXJlIGJhY2sgbWFrZXMgdGhlIHRpbWluZwo+IHRyYW5zbGF0ZWQgZnJvbSBGRVgg
ZmlsZSB3b3JrcyAodGVzdGVkIG9uIFBpbmVUYWIgYW5kIFBpbmVQaG9uZQo+IHByb2R1Y3Rpb24g
dmVyKS4gVGhlIHRyYW5zbGF0aW9uIHJ1bGUgaXMgZnJvbSBbMV0uCj4gCj4gU28gSSBzdGlsbCBp
bnNpc3Qgb24gdGhlIHBhdGNoIGJlY2F1c2UgaXQncyBuZWVkZWQgYnkgZXhwZXJpbWVudC4KPiAK
PiBbMV0gaHR0cDovL2xpbnV4LXN1bnhpLm9yZy9MQ0QKPiAKPiA+IFsxXSAKPiA+IGh0dHBzOi8v
Z2l0aHViLmNvbS9heXVmYW4tcGluZTY0L2xpbnV4LXBpbmU2NC9ibG9iL215LWhhY2tzLTEuMi13
aXRoLWRybS9kcml2ZXJzL3ZpZGVvL3N1bnhpL2Rpc3AyL2Rpc3AvZGUvbG93bGV2ZWxfc3VuNTBp
dzEvZGVfZHNpLmMjTDkxOQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
