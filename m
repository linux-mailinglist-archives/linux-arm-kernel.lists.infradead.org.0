Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D111510C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkfyXXa21sTnpqszeQAeetHz9js5Kmnr2u0Zisz//C4=; b=ay0hq5Otpz80vF
	VvLY4u+roqQGhIlYWe7Yr4xLBzwVuqLuCUVZCJUH97VBMxf5ThMOwB21fsnM0JHFxogDYmRlpDVjm
	L8ZG8H8WDTEAwF3NXEc3+KAkaAw29OuSKRn3jEcZi1YISTRHTuimbEp0a4TnAj4LcnX069BKfWD1S
	W6Cez3iS49tUwjycdSlUvyCF9guklvHVm3WyVNQOVMv1KKqQNo8g6pWSpx/1zriOOXmfvb0+WTrJv
	UvIcH2o3R0RHQ0FceXriV03/6Ss08csYa8LlyBLUgzzEwUH6f/JSNhS1nvDtFe2jUpHl7HGGX0+4r
	YNx7g0UagkYmXYrAKpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgKu-0000AH-NN; Mon, 06 May 2019 16:19:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgKn-00009k-67; Mon, 06 May 2019 16:19:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 77C1B490E;
 Mon,  6 May 2019 18:19:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c0e8cd04;
 Mon, 6 May 2019 18:19:17 +0200 (CEST)
Date: Mon, 6 May 2019 18:19:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
Message-ID: <20190506161917.GH81826@meh.true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
 <20190506083207.GG81826@meh.true.cz>
 <20190506164132.10342ef6@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506164132.10342ef6@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_091921_378530_F0546C1D 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, frowand.list@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiBbMjAxOS0w
NS0wNiAxNjo0MTozMl06CgpIaSBNYXhpbWUsCgo+IE9uIE1vbiwgNiBNYXkgMjAxOSAxMDozMjow
NyArMDIwMAo+IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+IAo+ID5EYXZp
ZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+IFsyMDE5LTA1LTA1IDIxOjQ3OjI3XToKPiA+
Cj4gPkhpIERhdmlkLAo+ID4KPiA+PiBTZXJpZXMgYXBwbGllZCwgdGhhbmsgeW91LiAgCj4gPgo+
ID5JIGRpZCBwcm9iYWJseSBzb21ldGhpbmcgdGVycmlibHkgd3JvbmcsIGJ1dCBwYXRjaCAiW1BB
VENIIHY0IDA1LzEwXSBuZXQ6Cj4gPmV0aGVybmV0OiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVz
cyBuZXcgRVJSX1BUUiBlcnJvciIgaGFzIG5vdCByZWFjaGVkIHRoZQo+ID5wYXRjaHdvcmssIGJ1
dCBJJ20gc3VyZSwgdGhhdCBpdCB3YXMgc2VudCBvdXQgYXMgSGF1a2UgTWVocnRlbnMgKG1haW50
YWluZXIKPiA+Zm9yIGV0aGVybmV0L2xhbnRpcV94cngyMDAuYykgaGFzIGNvbmZpcm1lZCB0byBt
ZSBvbiBJUkMsIHRoYXQgaGUgaGFzIHJlY2VpdmVkCj4gPml0Lgo+IAo+IEl0IHNlZW1zIGluZGVl
ZCB0aGF0IHRoZSA1dGggcGF0Y2ggaGFzbid0IGJlZWQgYXBwbGllZCwgd2hpY2ggZWZmZWN0aXZl
bHkKPiBicmVha3MgbXZuZXRhIG9uIG5ldC1uZXh0LCBhbmQgSSBndWVzcyBhIGxvdCBvZiBvdGhl
ciBkcml2ZXJzIHRoYXQgcmVseQo+IG9uIGhhbmRsaW5nIHRoZSBuZXcgcmV0dXJuIHZhbHVlcy4K
ClllcCwgc29ycnkgZm9yIHRoYXQuCgo+IEkgc2F3IHlvdSBzZW50IGEgZm9sbG93dXAgc2VyaWVz
IGZpeGluZyB0aGF0LCBidXQgb25seSBwYXRjaCAyLzMKPiBzaG93cy11cCBvbiBuZXRkZXYsIHNv
IHlvdSBtaWdodCBiZSBmYWNpbmcgYSBzaW1pbGFyIGlzc3VlIGhlcmUuCgpJbmRlZWQsIHNlZW1z
IGxpa2UgcGF0Y2h3b3JrIGhpY2N1cCB3aXRoIGEgbG9uZyBsaXN0IG9mIHJlY2VwaWVudHMgaW4g
dGhlClRvL0NjIGhlYWRlcnMsIHNvIEkndmUganVzdCByZXNlbmQgaXQgYWdhaW4gd2l0aCBvbmx5
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKaW4gdGhlIFRvOiBoZWFkZXIgYW5kIGl0IHdhcyBoYXBw
aWx5IHBpY2tlZCB1cFsxXS4KCjEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVj
dC9uZXRkZXYvbGlzdC8/c2VyaWVzPTEwNjM2OQoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
