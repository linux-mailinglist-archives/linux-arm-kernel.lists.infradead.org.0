Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708769A8E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu7I1ybAiZhOCXqNqX0aFpU4JEEBPEbiEdTBBRantwM=; b=gHOB/52UWOTGfq
	qf0l0xy1t906XW0sf6M0bB1Nwz+ZvFens3/65GVBxY3+Zug5m7TQmMd1IaLLYKrsMm76jO5WxdBos
	KR67rVK3sMupO9aRiVdk5GLLudGf1AIDzyKuF32H/FWpPWiewz4/Gk/ryipThcr0z9AOyqPXr99Y6
	NQ1OnI0OqqXBvjiAKlYu/WvVG0f82sXHlX+ZP9a5zaKp6DxT6vXzFKh4qvFO+ULgpkZ8GSAUcvBcb
	nuMUnIPhUjaysAOVBVqOUQoNgbf9z3+MvM7nFon0nSvXT4ydqTV7OacZcLDNCor0zVzwKShEfI0CM
	ab6N2mfT2SUTSsD7h3Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1459-0004Cz-NQ; Fri, 23 Aug 2019 07:33:59 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i144v-0003qf-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:33:47 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id CE0A61C000B;
 Fri, 23 Aug 2019 07:33:25 +0000 (UTC)
Date: Fri, 23 Aug 2019 09:33:24 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
Message-ID: <20190823093324.2d7da1f4@xps13>
In-Reply-To: <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_003345_714076_66AA3054 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2lzaG9uLAoKS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4gd3JvdGUg
b24gRnJpLCAyMyBBdWcgMjAxOQowODo0NjoxNCArMDUzMDoKCj4gT24gMzEvMDcvMTkgNTo1MSBQ
TSwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IEFybWFkYSBDUDExMCBoYXZlIGEgQ09NUEhZIElQ
IHdoaWNoIHN1cHBvcnRzIGNvbmZpZ3VyaW5nIFNFUkRFUyBsYW5lcwo+ID4gaW4gb25lIG1vZGUs
IGVpdGhlcjoKPiA+IC0gU0FUQQo+ID4gLSBVU0IzIGhvc3QKPiA+IC0gUENJZSAoc2V2ZXJhbCB3
aWR0aCkKPiA+IC0gRXRoZXJuZXQgKHNldmVyYWwgbW9kZXMpCj4gPiAKPiA+IEFzIG9mIHRvZGF5
LCBvbmx5IGEgZmV3IEV0aGVybmV0IG1vZGVzIGFyZSBzdXBwb3J0ZWQgYW5kIHRoZSBjb2RlIGlz
Cj4gPiBlbWJlZGRlZCBpbiB0aGUgTGludXggZHJpdmVyLiBBIG1vcmUgY29tcGxldGUgQ09NUEhZ
IGRyaXZlciB0aGF0IGNhbgo+ID4gYmUgdXNlZCBieSBib3RoIExpbnV4IGFuZCBVLUJvb3QgaXMg
ZW1iZWRkZWQgaW4gdGhlIGZpcm13YXJlIGFuZCBjYW4KPiA+IGJlIHJ1biB0aHJvdWdoIFNNQyBj
YWxscy4KPiA+IAo+ID4gRmlyc3QgdGhlIGN1cnJlbnQgQ09NUEhZIGRyaXZlciBpcyB1cGRhdGVk
IHRvIHVzZSBTTUMgY2FsbHMgYnV0Cj4gPiBmYWxsYmFja3MgdG8gdGhlIGFscmVhZHkgZXhpc3Rp
bmcgZnVuY3Rpb25zIGlmIHRoZSBmaXJtd2FyZSBpcyBub3QKPiA+IHVwLXRvLWRhdGUuIFRoZW4s
IG1vcmUgRXRoZXJuZXQgbW9kZXMgYXJlIGFkZGVkICh0aHJvdWdoIFNNQyBjYWxscwo+ID4gb25s
eSkuIFNBVEEsIFVTQjNIIGFuZCBQQ0llIG1vZGVzIGFyZSBhbHNvIHN1cHBvcnRlZCBvbmUgYnkg
b25lLgo+ID4gCj4gPiBUaGVyZSBpcyBvbmUgc3VidGxlIGRpZmZlcmVuY2Ugd2l0aCB0aGUgUENJ
ZSBmdW5jdGlvbnM6IHdlIG11c3QgdGVsbAo+ID4gdGhlIGZpcm13YXJlIHRoZSBudW1iZXIgb2Yg
bGFuZXMgdG8gY29uZmlndXJlICh4MSwgeDIgb3IgeDQpLiBUaGlzCj4gPiBwYXJhbWV0ZXIgZGVw
ZW5kcyBvbiB0aGUgbnVtYmVyIG9mIGVudHJpZXMgaW4gdGhlICdwaHlzJyBwcm9wZXJ0eQo+ID4g
ZGVzY3JpYmluZyB0aGUgUENJZSBQSFkuIFdlIHVzZSB0aGUgInN1Ym1vZGUiIHBhcmFtZXRlciBv
ZiB0aGUgZ2VuZXJpYwo+ID4gUEhZIEFQSSB0byBjYXJyeSB0aGlzIHZhbHVlLiBUaGUgQXJtYWRh
LThrIFBDSWUgZHJpdmVyIGhhcyBiZWVuCj4gPiB1cGRhdGVkIHRvIGZvbGxvdyB0aGlzIGlkZWEg
YW5kIHRoaXMgY2hhbmdlIGhhcyBiZWVuIG1lcmdlZCBhbHJlYWR5Ogo+ID4gaHR0cDovL3BhdGNo
d29yay5vemxhYnMub3JnL3BhdGNoLzEwNzI3NjMvICAKPiAKPiBTb21lIG9mIHRoZSBwYXRjaGVz
IGFyZSBub3QgYXBwbHlpbmcgY2xlYW5seS4gQ2FyZSB0byByZXNlbmQgdGhlIHNlcmllcyBhZnRl
cgo+IHJlYmFzaW5nIHRvIHBoeSAtbmV4dD8KClN1cmUsIEknbGwgZG8gaXQgYXNhcC4KClRoYW5r
cyEKTWlxdcOobAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
