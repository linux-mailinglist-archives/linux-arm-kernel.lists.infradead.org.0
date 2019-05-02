Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F94C1147B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WgEmX6aNhUxlud+l3UNncNfGWleq9A0mfv+IvEGpGQ=; b=UxhzOL7MRvGN/a
	vhI8UQBfREQXu/bhMydIkOQ6FRO2RbTsSh76yRdHch0ax6hizb8gx6CvW+LTAPLBBgF/DkCV2pXWl
	SpkGDJkUyHAhpyjFr361sUL7yd9GHvbruUWyZ7HNSgnB/tiymJLNBbz/MR30dctkd752WGLxVTtWj
	0EvKiARg439odxBAHmMxW/6ury0PQ8ROSe4b4JWRMGq3TBarMg4p6Fm9cHDGiLkN1ZOUeTgU1d4fg
	eddPhvdF9RGf57Qzzf42DrKhcilpHvD973b9z0xWgtX1JwnO1G7YX/01cuVqWZG9TEKWWl5ON2BlY
	GoDGEvgLO+atF/SMN6KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6Qb-0007Vm-Hy; Thu, 02 May 2019 07:46:49 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6QV-0007VK-7x
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:46:44 +0000
Received: from [199.195.250.187] (port=59952 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <icenowy@aosc.io>)
 id 1hM6QO-0004Xs-IK; Thu, 02 May 2019 08:46:41 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 8DC4721C48E;
 Thu,  2 May 2019 07:46:24 +0000 (UTC)
Date: Thu, 02 May 2019 15:46:17 +0800
In-Reply-To: <20190502074303.g3px63n4v4o7xade@flea>
References: <20190424062543.61852-1-icenowy@aosc.io>
 <20190502074303.g3px63n4v4o7xade@flea>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: allwinner: h6: add PIO VCC bank supplies for
 Pine H64
To: linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <8CB1EDA4-E4B7-486D-8BCD-884E0025C6EA@aosc.io>
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_004643_283981_520C1699 
X-CRM114-Status: GOOD (  13.99  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDXmnIgy5pelIEdNVCswODowMCDkuIvljYgzOjQzOjAzLCBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiDlhpnliLA6Cj5IaSwKPgo+T24gV2VkLCBB
cHIgMjQsIDIwMTkgYXQgMDI6MjU6NDNQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPj4g
VGhlIEFsbHdpbm5lciBINiBTb0MgZmVhdHVyZXMgdHdlYWthYmxlIFZDQyBmb3IgUEMsIFBELCBQ
RywgUEwgYW5kIFBNCj4+IGJhbmtzLgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgc3VwcGxpZXMgZm9y
IFBDIGFuZCBQRCBiYW5rcyBvbiBQaW5lIEg2NCBib2FyZC4gUEcKPmFuZAo+PiBQTSBiYW5rcyBh
cmUgdXNlZCBmb3IgV2ktRmkgYW5kIHNob3VsZCBiZSBhZGRlZCB3aGVuIFdpLUZpIGlzIGFkZGVk
Cj4KPk5vdCByZWFsbHkuIFRoZSByZWd1bGF0b3IgaXMgc3RpbGwgdGhlcmUsIHdoZXRoZXIgd2Ug
dXNlIGl0IG9yIG5vdC4gSWYKPml0J3Mgbm90IHVzZWQsIHRoZW4gaXQgd2lsbCBiZSBsZWZ0IGRp
c2FibGVkIHNvIGl0IGRvZXNuJ3QgcmVhbGx5Cj5jaGFuZ2UgYW55dGhpbmcuCgpPa2F5LCBJIHdp
bGwgaW5jbHVkZSB0aGVtIGluIHRoZSBuZXh0IHJldmlzaW9uLgoKPgo+PiBQTCBiYW5rIGlzIHdo
ZXJlIFBNSUMgaXMgYXR0YWNoZWQsIGFuZCBjdXJyZW50bHkgaWYgYSBQTUlDIHJlZ3VsYXRvcgo+
PiBpcyBhZGRlZCBmb3IgaXQgYSBkZXBlbmRlbmN5IGxvb3Agd2lsbCBoYXBwZW4uCj4KPkkgZ3Vl
c3Mgd2Ugc2hvdWxkIGZpeCB0aGF0IHNvbWVob3cKCkJ1dCB0aGlzIHBhdGNoIGlzIG5lZWRlZCBm
b3IgZU1NQyB0byBiZSBmdW5jdGlvbmFsIGFnYWluIGluIEhTMjAwIG1vZGUsIHNvIEkgaG9wZQpp
dCBjYW4gZ2V0IGFwcGxpZWQgYmVmb3JlIHRoaXMgZ2V0IGZpeGVkLgoKPgo+TWF4aW1lCj4KPi0t
Cj5NYXhpbWUgUmlwYXJkLCBCb290bGluCj5FbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCj5odHRwczovL2Jvb3RsaW4uY29tCgotLSAK5L2/55SoIEstOSBNYWlsIOWPkemAgeiH
quaIkeeahEFuZHJvaWTorr7lpIfjgIIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
