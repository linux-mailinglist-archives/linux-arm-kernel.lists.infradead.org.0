Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EAE9BCFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 12:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YB1i3nTO5vhSvEpbs5nlPYVgM+5/jeaw7jnJKVzvQ6c=; b=aqYr4soTE42dTy
	umH/ImKlgfPTGqbzSMSE8KpQ2rlftgpA9vH72qxmwZSxZTlBWRZMDpD0OcM7/Kpu1sglgxGaBEZG/
	n7TO/io0eqZBcqVff1N4VgOpyG7X7heQt7F9DXBZFJa2QKywfGhRrIe/Y1Btt+ORw+4bcmfD/aezR
	F0ewFHrkSbesr7mYIuIacmIIyn9JLHeXNCHwD+Vg7dRKhNPn0w2xY3Gv8M9hDinYyCHE85CC+ujLP
	cR/1Z4HrBAN1KT61hRPB5HH5N/IS5e8wx6i42QaTliLjQHIHHRopniVkYrSmcgYg84r+LJ/t0CXMV
	r7H3tlkjI25g03a4Iq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1T5u-00087g-7r; Sat, 24 Aug 2019 10:16:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1T5l-00087V-64
 for linux-arm-kernel@bombadil.infradead.org; Sat, 24 Aug 2019 10:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uQXNVPXvRlv4xRZMdYz1WA/Q8ymqbN4EGx0W13uzAjQ=; b=UdU7hvtyFkiMN3XpJSxEtAdaoG
 AXWkMbxe7Z9Q+OPYT0mFViojXQPrjmkoe/oyjOnL615sSpJEBcmczYSu1LZJJgiYerYwm2mfd2cEF
 LkgRfHw41MUuacgxXFIxEv3WWCqWIIhdJ+etPr+nakNWFm/nmJGLLDGmYpLboE1Y1L6M38mAo4u+5
 89Dmhd0Oqo4d+Cf3uHnhVerCu0e3wmjT55uuaa0KhQf1ycferWqn/B6rpIDRffw2Qbgl7vKG9THYr
 8cgkIlv5DwsSHgYEtdBZRfHf61kRtQjMwxph3/JxxJhWQxS6bJYxRfN6EBViSTBby+QvrBbKUIYWP
 8tYoMtcw==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1T5g-000599-G1
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 10:16:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id C946260008;
 Sat, 24 Aug 2019 10:15:33 +0000 (UTC)
Date: Sat, 24 Aug 2019 12:15:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190824121531.3dda75bd@xps13>
In-Reply-To: <20190821182857.GA9660@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-15-miquel.raynal@bootlin.com>
 <20190821182857.GA9660@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gV2VkLCAyMSBB
dWcgMjAxOSAxMzoyODo1NyAtMDUwMDoKCj4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDI6MjE6
MjFQTSArMDIwMCwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IEFybWFkYSBDUDExMCBQQ0llIGNv
bnRyb2xsZXIgY2FuIGhhdmUgZnJvbSBvbmUgdG8gZm91ciBQSFlzIGZvcgo+ID4gY29uZmlndXJp
bmcgU0VSREVTIGxhbmVzIChQQ0llIHgxLCBQQ0llIHgyIG9yIFBDSWUgeDQpLiBEZXNjcmliZSB0
aGUKPiA+IHBoeXMgYW5kIHBoeS1uYW1lcyBwcm9wZXJ0aWVzIGluIHRoZSBiaW5kaW5ncy4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGlu
LmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cGNpLWFybWFkYThrLnR4dCB8IDYgKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9wY2ktYXJtYWRhOGsudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9wY2ktYXJtYWRhOGsudHh0Cj4gPiBpbmRleCA5ZTNmYzE1ZTFhZjguLjdjZjEy
MTYyYWE0ZSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9wY2kvcGNpLWFybWFkYThrLnR4dAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BjaS9wY2ktYXJtYWRhOGsudHh0Cj4gPiBAQCAtMTcsNiArMTcsMTIgQEAgUmVx
dWlyZWQgcHJvcGVydGllczoKPiA+ICAgICBuYW1lIG11c3QgYmUgImNvcmUiIGZvciB0aGUgZmly
c3QgY2xvY2sgYW5kICJyZWciIGZvciB0aGUgc2Vjb25kCj4gPiAgICAgb25lCj4gPiAgCj4gPiAr
T3B0aW9uYWwgcHJvcGVydGllczoKPiA+ICstIHBoeXM6IHBoYW5kbGUocykgdG8gUEhZIG5vZGUo
cykgZm9sbG93aW5nIHRoZSBnZW5lcmljIFBIWSBiaW5kaW5ncy4KPiA+ICsJRWl0aGVyIDEsIDIg
b3IgNCBQSFlzIG1pZ2h0IGJlIG5lZWRlZCBkZXBlbmRpbmcgb24gdGhlIG51bWJlciBvZgo+ID4g
KwlQQ0llIGxhbmVzLgo+ID4gKy0gcGh5LW5hbWVzOiBuYW1lcyBvZiB0aGUgUEhZcy4gIAo+IAo+
IFlvdSBuZWVkIHRvIGVudW1lcmF0ZSB3aGF0IHRoZSBuYW1lcyBhcmUuIEJhc2VkIG9uIHlvdXIg
ZXhhbXBsZSBpbiB2MiwgSSAKPiBkb24ndCB0aGluayB0aGUgbmFtZXMgYXJlIHJlYWxseSB2YWx1
YWJsZSB1bmxlc3MgeW91IGNhbiBza2lwIGxhbmVzLgoKSSBkb24ndCBrbm93IGFueSBzZXR1cCBk
b2luZyBpdCBidXQgeWVzLCBJIHN1cHBvc2UgeW91IGNvdWxkIHNraXAgbGFuZXMuCgpLaXNob24g
YXNrZWQgbWUgdG8gcmViYXNlIG9uIHBoeS1uZXh0LCBJJ2xsIGVudW1lcmF0ZSB0aGUgbmFtZXMg
d2hlbgpyZXNlbmRpbmcuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
