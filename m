Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B90673336
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 17:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUaiQ/oI0vTbao+TKeHsJzAySEtteFG9PbK2zApuywY=; b=tzjQf4efanvyxR
	Lrqg30D+HIxh/uOOaRtv106w+8sJeEeOKGY5rTQHvf/vhz6BflZWuRY9OGpGs6IDzTb0Z5vsxmgVG
	Bc43W9c5e6T3THgpjQAIegFrMQk0cKK8gAmfg/xE1SU3djRmdeOFQLZK+3v3PsnLdMarYWx83mm3Y
	DHVEm1d/15OtDNg6z/2hz1oO9H5UcZhXEYwojs/lw+UmUrFgNWu7ZVrtqxdanfy5eMauCR1Eh5mQY
	WoJVFj0C9572xk2vLyg2jXRnVpdVnXWtrw2zy76Xp0OQhTxatwP6H9upAmvqwsSvu+bgzE3EdfpWR
	8dyhwrRCWrhLLGYstZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJdd-0003iP-J5; Wed, 24 Jul 2019 15:57:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJdV-0003i1-BQ
 for linux-arm-kernel@bombadil.infradead.org; Wed, 24 Jul 2019 15:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QZ7sX5s64oclczJiSkkKok1D2A00PRksNgZn7ISaupY=; b=S6pfYEVJtJ3IwvS1naob4OEUOa
 SjT2apZfbJCndIC3e20x/LvLwxnxhefbMQXi33P3Q8WzDl83g3mFz8+yAPEzE/iUT9BBUh4fR1aWh
 fpuuumgNK2qD+HAl4fQHKjjxXwLsuTeCzBmc1qlI1L5uPtnXHBTXt1l99+Oq4f3Kd3tjhuuPVDnqa
 zq+FeEXCTVd0gddr93nFXNchRYzA1Rb+eAQ/6vpSBV9ygEay4uEY2aih62f87VpB9y1TX4OC4IOr4
 QcV/TXUH0G64fdrgD/AhpjIJ8UCfdDnjer7xIR9GDaQm5Z4kQpxvTmKHRErWV4TBm9J+Ak9Njrimf
 xDh1DqQg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJda-0003q9-Ri
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 15:57:08 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id CBEAEE0008;
 Wed, 24 Jul 2019 15:56:16 +0000 (UTC)
Date: Wed, 24 Jul 2019 17:56:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190724175615.2fe46a8e@xps13>
In-Reply-To: <20190722175225.GA13801@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-2-miquel.raynal@bootlin.com>
 <20190722175225.GA13801@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_165706_947535_A9E1DF4E 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gTW9uLCAyMiBK
dWwgMjAxOSAxMTo1MjoyNSAtMDYwMDoKCj4gT24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDI6MjU6
MDBQTSArMDIwMCwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IEFybWFkYSBDUDExMCBQQ0llIGNv
bnRyb2xsZXIgY2FuIGhhdmUgYSBQSFkgKGZvciBjb25maWd1cmluZyBTRVJERVMKPiA+IGxhbmVz
KS4gRGVzY3JpYmUgdGhlc2UgdHdvIHByb3BlcnRpZXMgaW4gdGhlIGJpbmRpbmdzLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29t
Pgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9wY2kt
YXJtYWRhOGsudHh0IHwgNCArKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9wY2ktYXJtYWRhOGsudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9wY2ktYXJtYWRhOGsudHh0Cj4gPiBpbmRleCA5ZTNmYzE1ZTFhZjguLmEzNzNhODA1MjRk
YiAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cGNpLWFybWFkYThrLnR4dAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BjaS9wY2ktYXJtYWRhOGsudHh0Cj4gPiBAQCAtMTcsNiArMTcsMTAgQEAgUmVxdWlyZWQg
cHJvcGVydGllczoKPiA+ICAgICBuYW1lIG11c3QgYmUgImNvcmUiIGZvciB0aGUgZmlyc3QgY2xv
Y2sgYW5kICJyZWciIGZvciB0aGUgc2Vjb25kCj4gPiAgICAgb25lCj4gPiAgCj4gPiArT3B0aW9u
YWwgcHJvcGVydGllczoKPiA+ICstIHBoeXM6IHBoYW5kbGUgdG8gdGhlIFBIWSBub2RlIChnZW5l
cmljIFBIWSBiaW5kaW5ncykuCj4gPiArLSBwaHktbmFtZXM6IG5hbWVzIG9mIHRoZSBQSFlzLiAg
Cj4gCj4gSG93IG1hbnk/IElmIG9ubHkgMSwgeW91IGRvbid0IHJlYWxseSBuZWVkIHBoeS1uYW1l
cy4KCkFjdHVhbGx5IGl0IGRlcGVuZHMgb24gdGhlIGJvYXJkLiBGb3IgaW5zdGFuY2UsIHRoZSBN
YWNjaGlhdG9CaW4gaGFzCmZvdXIgb2YgdGhlbToKCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtODA0MC1tY2Jpbi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtODA0MC1tY2Jpbi5kdHNpCkBAIC0xODYsNiArMTg2LDEwIEBACiAgICAg
ICAgcmVzZXQtZ3Bpb3MgPSA8JmNwMF9ncGlvMiAyMCBHUElPX0FDVElWRV9MT1c+OwogICAgICAg
IHJhbmdlcyA9IDwweDgxMDAwMDAwIDB4MCAweGY5MDEwMDAwIDB4MCAweGY5MDEwMDAwIDB4MCAw
eDEwMDAwCiAgICAgICAgICAgICAgICAgIDB4ODIwMDAwMDAgMHgwIDB4YzAwMDAwMDAgMHgwIDB4
YzAwMDAwMDAgMHgwIDB4MjAwMDAwMDA+OworICAgICAgIHBoeXMgPSA8JmNwMF9jb21waHkwIDA+
LCA8JmNwMF9jb21waHkxIDA+LAorICAgICAgICAgICAgICA8JmNwMF9jb21waHkyIDA+LCA8JmNw
MF9jb21waHkzIDA+OworICAgICAgIHBoeS1uYW1lcyA9ICJjcDAtcGNpZTAteDQtbGFuZTAtcGh5
IiwgImNwMC1wY2llMC14NC1sYW5lMS1waHkiLAorICAgICAgICAgICAgICAgICAgICJjcDAtcGNp
ZTAteDQtbGFuZTItcGh5IiwgImNwMC1wY2llMC14NC1sYW5lMy1waHkiOwogICAgICAgIHN0YXR1
cyA9ICJva2F5IjsKIH07CgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
