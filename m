Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC13C9F0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bb8TOm+yNGLkxylMKQP3EafNQC9mn96WAsGHJb1XNKo=; b=gL92qIh8lQjets
	N4BzM2JMRrRp37xVKa0/rNqm52GvWS2t6r3N0au1rERQ8auEeUt4rq9Jlen8CAnRpVnds3XWfSPyO
	bZGVA1Tepmj6/A95tRNGDocbm0ukSbkkqaxLlii6p7QNfBLU5TYpJFeZBJ+8JzPxWPcvALfmkFBaa
	tMH1CjUNaEWfnAay5NsX4RUq88BdzAPIwKRH7+NWvRSgrqDw4BQHPnt67R+HQf/Cy63ociygXcOqK
	4vv4hYWQWiGCr6wJVlKmM/T3NUPW4LGj3sznbvpyGk8JqmKEByOpm4E8xAKGYkcuLAsk7m7Enfpu8
	PuXgTiUrbd1pcpexCkkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0mZ-0000Sy-0H; Thu, 03 Oct 2019 13:04:35 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0mP-0000Sa-LU
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:04:27 +0000
Received: from [199.195.250.187] (port=36041 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iG0mG-0003Lf-AW; Thu, 03 Oct 2019 14:04:20 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 6FBCB8236F;
 Thu,  3 Oct 2019 13:04:12 +0000 (UTC)
Date: Thu, 03 Oct 2019 21:04:03 +0800
In-Reply-To: <20191003114733.56mlar666l76uoyb@gilmour>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-5-jagan@amarulasolutions.com>
 <20191003114733.56mlar666l76uoyb@gilmour>
MIME-Version: 1.0
Subject: Re: [PATCH v11 4/7] dt-bindings: sun6i-dsi: Add VCC-DSI supply
 property
To: linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <0086CD40-F161-4B33-8D76-8DCA20E7DB07@aosc.io>
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_060425_699892_881A6408 
X-CRM114-Status: GOOD (  12.03  )
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEw5pyIM+aXpSBHTVQrMDg6MDAg5LiL5Y2INzo0NzozMywgTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiDlhpnliLA6Cj5PbiBUaHUsIE9jdCAwMywgMjAxOSBh
dCAxMjoxNToyNFBNICswNTMwLCBKYWdhbiBUZWtpIHdyb3RlOgo+PiBBbGx3aW5uZXIgTUlQSSBE
U0kgY29udHJvbGxlcnMgYXJlIHN1cHBsaWVkIHdpdGggU29DIERTSQo+PiBwb3dlciByYWlscyB2
aWEgVkNDLURTSSBwaW4uCj4+Cj4+IFNvbWUgYm9hcmQgc3RpbGwgd29yayB3aXRob3V0IHN1cHBs
eWluZyB0aGlzIGJ1dCBnaXZlIG1vcmUKPj4gZmFpdGggb24gZGF0YXNoZWV0IGFuZCBoYXJkd2Fy
ZSBzY2hlbWF0aWNzIGFuZCBkb2N1bWVudCB0aGlzCj4+IHN1cHBseSBwcm9wZXJ0eSBpbiByZXF1
aXJlZCBwcm9wZXJ0eSBsaXN0Lgo+Pgo+PiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4KPj4gVGVzdGVkLWJ5OiBNZXJsaWpuIFdhamVyIDxtZXJsaWpuQHdpenp1cC5v
cmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMu
Y29tPgo+PiAtLS0KPj4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2FsbHdpbm5lcixzdW42aS1hMzEt
bWlwaS1kc2kueWFtbCAgICAgICAgIHwgMwo+KysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQKPmEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvYWxsd2lubmVyLHN1bjZpLWEzMS1taXBpLWRzaS55YW1sCj5iL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2FsbHdpbm5lcixzdW42aS1hMzEt
bWlwaS1kc2kueWFtbAo+PiBpbmRleCA0Nzk1MGZjZWQyOGQuLjlkNGMyNWIxMDRmNiAxMDA2NDQK
Pj4gLS0tCj5hL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2FsbHdp
bm5lcixzdW42aS1hMzEtbWlwaS1kc2kueWFtbAo+PiArKysKPmIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYWxsd2lubmVyLHN1bjZpLWEzMS1taXBpLWRzaS55YW1s
Cj4+IEBAIC0zNiw2ICszNiw5IEBAIHByb3BlcnRpZXM6Cj4+ICAgIHJlc2V0czoKPj4gICAgICBt
YXhJdGVtczogMQo+Pgo+PiArICB2Y2MtZHNpLXN1cHBseToKPj4gKyAgICBkZXNjcmlwdGlvbjog
VkNDLURTSSBwb3dlciBzdXBwbHkgb2YgdGhlIERTSSBlbmNvZGVyCj4+ICsKPgo+VGhlIGRyaXZl
ciB0cmVhdHMgaXQgYXMgbWFuZGF0b3J5LCBzbyBJJ3ZlIGFkZGVkIGl0IHRvIHRoZSBiaW5kaW5n
LCBhcwo+c3VnZ2VzdGVkIGJ5IHRoZSBjb21taXQgbG9nLgoKTm8uIFRoZSByZWd1bGF0b3JfZ2V0
IGZ1bmN0aW9uIHdpbGwgcmV0dXJuIGR1bW15IHJlZ3VsYXRvciwgcmF0aGVyIHRoYW4KZmFpbCwg
aWYgdGhlIHJlZ3VsYXRvciBpcyBub3Qgc3BlY2lmaWVkLgoKPgo+TWF4aW1lCgotLSAK5L2/55So
IEstOSBNYWlsIOWPkemAgeiHquaIkeeahEFuZHJvaWTorr7lpIfjgIIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
