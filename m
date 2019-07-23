Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAAA71410
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BekBmDvjd9v+V5llXo9KBqRuZQygYQY/XK30E78VFOY=; b=SKD4TriZsXYQoJ
	TfNOlAB8aQ65zPh1zmYU2mE7vDfzVnrY6Th7cyZerB0xE4dypTjU/sohq3ByW+n0fH33JHZLMysM8
	3KBnglLeGlPK0P7xr5kUJ1nyxvsNxDFqIoTqx5ffFj5UBRiyYrNzXvEciKtfYYSDBrEPij2ieoYjS
	kSLcuAmmR/8VYZ47vevGLwqJdIRYHz6jREoKzht/+UI8o7+d2EUFtdqTOhKJxYLZmgVUWRd2owQVh
	XdpqK/99DX0wYc/5ZuEzdnNIEQswlkYVzZHe1D7YWiv56Z05K5QNVRBBEzOAP8+dB/fXelXeZj2kW
	4UPtiFsols5kI+Edmjfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqHT-0004h2-Rr; Tue, 23 Jul 2019 08:36:20 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqHA-0004gM-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:36:06 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 861C020010;
 Tue, 23 Jul 2019 08:35:49 +0000 (UTC)
Date: Tue, 23 Jul 2019 10:35:48 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190723103548.59d1a652@xps13>
In-Reply-To: <20190722175225.GA13801@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-2-miquel.raynal@bootlin.com>
 <20190722175225.GA13801@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_013604_400882_4DA79B0E 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
cy4KCkkgdGhvdWdodCBpdCB3YXMgcHJlZmVycmVkIHRvIGFsd2F5cyBhZGQgcGh5LW5hbWVzLCBi
dXQgb2ssIEknbGwgZHJvcAp0aGUgcHJvcGVydHkuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
