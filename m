Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC087CD250
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 16:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxMnv/FxIddLk2vw3UgrEFmJr3vz1IHmbnBFHK1b6HQ=; b=SnZMcr6US/y0tX
	2lpsJEku0IBVMCTtS6kEcwKJDV2+PLyMnoBR+WyJrLPoNOjbyYiq2M1cZnUpJ9Gk1a4R5Mn/QSQwP
	7LgdmoLspqsJ0qP2/Oed4VUHYXcwE2A91+zONNUkjfQru7JliCmgPJ2QtneE5QQJOXPT3JlhbvSkO
	xlWOtgh0NIQgNX3iBWp2VUewYJVxVfmLBZP/wDaDkwhG8gytNiOk9KCNOysSxssxbKrqVBnObh82k
	+pEY0cUGhyrXs0z0ItGLqr9he8l9dxJ4hZCGXYqK/hgcIi3Gu1bSsp+9lGavvWv2V+kD8tH/dKfxR
	WKW263EzuCI4r3BTON6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH7nH-0008GX-BM; Sun, 06 Oct 2019 14:45:55 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH7n7-0008GD-J1
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 14:45:47 +0000
Received: from [199.195.250.187] (port=51143 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iH7n1-0002QY-T7; Sun, 06 Oct 2019 15:45:40 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 26B0482916;
 Sun,  6 Oct 2019 14:45:19 +0000 (UTC)
Message-ID: <58dc94b6371ab2f5b11b13ab707d73ab3fc4cc64.camel@aosc.io>
Subject: Re: [linux-sunxi] [PATCH 3/3] Revert "drm/sun4i: dsi: Rework a bit
 the hblk calculation"
From: Icenowy Zheng <icenowy@aosc.io>
To: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 06 Oct 2019 22:44:25 +0800
In-Reply-To: <CAMty3ZDW4XHyW+6XL_RSVHqTSk79-r749pa0n5e6VbUzowAsiw@mail.gmail.com>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-4-icenowy@aosc.io>
 <CAMty3ZDW4XHyW+6XL_RSVHqTSk79-r749pa0n5e6VbUzowAsiw@mail.gmail.com>
Organization: Anthon Open-Source Community
MIME-Version: 1.0
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_074545_628607_EEF1D8CA 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
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

5ZyoIDIwMTktMTAtMDPlm5vnmoQgMDk6NTMgKzA1MzDvvIxKYWdhbiBUZWtp5YaZ6YGT77yaCj4g
SGkgV2VucywKPiAKPiBPbiBUdWUsIE9jdCAxLCAyMDE5IGF0IDE6MzQgUE0gSWNlbm93eSBaaGVu
ZyA8aWNlbm93eUBhb3NjLmlvPiB3cm90ZToKPiA+IFRoaXMgcmV2ZXJ0cyBjb21taXQgNjJlNzUx
MWE0ZjRkY2YwN2Y3NTM4OTNkMzQyNGRlY2Q5NDY2Yzk4Yi4KPiA+IAo+ID4gVGhpcyBjb21taXQs
IGFsdGhvdWdoIGNsYWltZWQgYXMgYSByZWZhY3RvciwgaW4gZmFjdCBjaGFuZ2VkIHRoZQo+ID4g
Zm9ybXVsYS4KPiA+IAo+ID4gQnkgZXhwYW5kaW5nIHRoZSBvcmlnaW5hbCBmb3JtdWxhLCB3ZSBj
YW4gZmluZCB0aGF0IHRoZSBjb25zdCAxMCBpcwo+ID4gbm90Cj4gPiBzdWJzdHJhY3RlZCwgaW5z
dGVhZCBpdCdzIGFkZGVkIHRvIHRoZSB2YWx1ZSAoYmVjYXVzZSAxMCBpcwo+ID4gbmVnYXRpdmUK
PiA+IHdoZW4gY2FsY3VsYXRpbmcgaHNhLCBhbmQgaHNhIGl0c2VsZiBpcyBuZWdhdGl2ZSB3aGVu
IGNhbGN1bGF0aW5nCj4gPiBoYmxrKS4KPiA+IFRoaXMgYnJlYWtzIHRoZSBzaW1pbGFyIHBhdHRl
cm4gdG8gb3RoZXIgZm9ybXVsYXMsIHNvIHJlc3RvcmluZyB0aGUKPiA+IG9yaWdpbmFsIGZvcm11
bGEgaXMgbW9yZSBwcm9wZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcg
PGljZW5vd3lAYW9zYy5pbz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW42
aV9taXBpX2RzaS5jIHwgOSArKy0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3N1bjRpL3N1bjZpX21pcGlfZHNpLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjZpX21pcGlfZHNpLmMKPiA+IGluZGV4IDJkM2U4MjJhNzczOS4uY2I1ZmQxOWMwZDBkIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjZpX21pcGlfZHNpLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW42aV9taXBpX2RzaS5jCj4gPiBAQCAtNTc3LDE0
ICs1NzcsOSBAQCBzdGF0aWMgdm9pZCBzdW42aV9kc2lfc2V0dXBfdGltaW5ncyhzdHJ1Y3QKPiA+
IHN1bjZpX2RzaSAqZHNpLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAobW9kZS0+aHN5
bmNfc3RhcnQgLSBtb2RlLT5oZGlzcGxheSkgKgo+ID4gQnBwIC0gSEZQX1BBQ0tFVF9PVkVSSEVB
RCk7Cj4gPiAKPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gLSAgICAgICAgICAgICAgICAqIFRo
ZSBibGFua2luZyBpcyBzZXQgdXNpbmcgYSBzeW5jIGV2ZW50ICg0IGJ5dGVzKQo+ID4gLSAgICAg
ICAgICAgICAgICAqIGFuZCBhIGJsYW5raW5nIHBhY2tldCAoNCBieXRlcyArIHBheWxvYWQgKyAy
Cj4gPiAtICAgICAgICAgICAgICAgICogYnl0ZXMpLiBJdHMgbWluaW1hbCBzaXplIGlzIHRoZXJl
Zm9yZSAxMCBieXRlcy4KPiA+ICsgICAgICAgICAgICAgICAgKiBoYmxrIHNlZW1zIHRvIGJlIHRo
ZSBsaW5lICsgcG9yY2hlcyBsZW5ndGguCj4gPiAgICAgICAgICAgICAgICAgICovCj4gPiAtI2Rl
ZmluZSBIQkxLX1BBQ0tFVF9PVkVSSEVBRCAgIDEwCj4gPiAtICAgICAgICAgICAgICAgaGJsayA9
IG1heCgodW5zaWduZWQgaW50KUhCTEtfUEFDS0VUX09WRVJIRUFELAo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgKG1vZGUtPmh0b3RhbCAtIChtb2RlLT5oc3luY19lbmQgLSBtb2RlLQo+
ID4gPmhzeW5jX3N0YXJ0KSkgKiBCcHAgLQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
SEJMS19QQUNLRVRfT1ZFUkhFQUQpOwo+ID4gKyAgICAgICAgICAgICAgIGhibGsgPSBtb2RlLT5o
dG90YWwgKiBCcHAgLSBoc2E7Cj4gCj4gVGhlIG9yaWdpbmFsIGZvcm11bGEgaXMgY29ycmVjdCBh
Y2NvcmRpbmcgdG8gQlNQIFsxXSBhbmQgd29yayB3aXRoIG15Cj4gcGFuZWxzIHdoaWNoIEkgaGF2
ZSB0ZXN0ZWQgYmVmb3JlLiBNYXkgYmUgdGhlIGhvcml6b250YWwgdGltaW5ncyBvbgo+IHBhbmVs
cyB5b3UgaGF2ZSBsZWFkcyB0byBuZWdhdGl2ZSB2YWx1ZS4KCkRvIHlvdSB0ZXN0ZWQgdGhlIHNh
bWUgdGltaW5nIHdpdGggQlNQIGtlcm5lbD8KCkl0J3MgcXVpdGUgZGlmZmljdWx0IHRvIGdldCBh
IG5lZ2F0aXZlIHZhbHVlIGhlcmUsIGJlY2F1c2UgdGhlIHZhbHVlIGlzCnF1aXRlIGJpZyAoaW5j
bHVkZXMgbW9kZS0+aGRpc3BsYXkgKiBCcHApLgoKU3RyYW5nZWx5LCBvbmx5IGNoYW5nZSB0aGUg
Zm9ybXVsYSBoZXJlIGJhY2sgbWFrZXMgdGhlIHRpbWluZwp0cmFuc2xhdGVkIGZyb20gRkVYIGZp
bGUgd29ya3MgKHRlc3RlZCBvbiBQaW5lVGFiIGFuZCBQaW5lUGhvbmUKcHJvZHVjdGlvbiB2ZXIp
LiBUaGUgdHJhbnNsYXRpb24gcnVsZSBpcyBmcm9tIFsxXS4KClNvIEkgc3RpbGwgaW5zaXN0IG9u
IHRoZSBwYXRjaCBiZWNhdXNlIGl0J3MgbmVlZGVkIGJ5IGV4cGVyaW1lbnQuCgpbMV0gaHR0cDov
L2xpbnV4LXN1bnhpLm9yZy9MQ0QKCj4gCj4gWzFdIAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9heXVm
YW4tcGluZTY0L2xpbnV4LXBpbmU2NC9ibG9iL215LWhhY2tzLTEuMi13aXRoLWRybS9kcml2ZXJz
L3ZpZGVvL3N1bnhpL2Rpc3AyL2Rpc3AvZGUvbG93bGV2ZWxfc3VuNTBpdzEvZGVfZHNpLmMjTDkx
OQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
