Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0E19CFA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hblDTDk+nF9CMOL0q8uleJG8qOwTTGRyyHRSXfNSJWA=; b=ef4yDSB2nHneog
	1/gd+bjryMEni8Mym86jFcrz/8d5zr4/aFw4ET85O4j7X8u1kL0coxTPtvfmAS3q//M3f+G2Ommuc
	HJzZvRrTqcnhn8oy6TU2YNshO1Li0mGukMBg/iTtOTWNSu8QQ3DBH9CTni8zhsyrUvGogRfMKJlri
	YtNQ4ZlxlzTCSonabSHJqAmuI4HXz+ViZpEZvneRj0+1Wkzx20MqsUO0VfWpMmVxfdmJ3xeImfuhv
	ZOy/yOFs+2OrWv0ffop4kP8qSkCIsSpyRJpYSuiv+66mDsA0ljlB4MC3pzpkqU3TprkFMORS1TcN8
	y06t81RSh4Ka9TytnSYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2E24-0006Ss-DN; Mon, 26 Aug 2019 12:23:36 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2E1x-0006SS-U7
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 12:23:31 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 355F4240095;
 Mon, 26 Aug 2019 12:23:24 +0000 (UTC)
Date: Mon, 26 Aug 2019 14:23:23 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
Message-ID: <20190826142323.5a434543@xps13>
In-Reply-To: <8c91e2e3-2a83-a6f0-c98a-d0dbfcddfee3@ti.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
 <20190824135414.5c490337@xps13>
 <8c91e2e3-2a83-a6f0-c98a-d0dbfcddfee3@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_052330_274419_714E381E 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
 Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Matt Pelland <mpelland@starry.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2lzaG9uLAoKS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4gd3JvdGUg
b24gTW9uLCAyNiBBdWcgMjAxOQoxNzoyMTo1NSArMDUzMDoKCj4gSGksCj4gCj4gT24gMjQvMDgv
MTkgNToyNCBQTSwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IEhpIEtpc2hvbiwKPiA+IAo+ID4g
KyBNYXR0IFBlbGxhbmQKPiA+IAo+ID4gS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRp
LmNvbT4gd3JvdGUgb24gRnJpLCAyMyBBdWcgMjAxOQo+ID4gMDg6NDY6MTQgKzA1MzA6Cj4gPiAg
IAo+ID4+IE9uIDMxLzA3LzE5IDU6NTEgUE0sIE1pcXVlbCBSYXluYWwgd3JvdGU6ICAKPiA+Pj4g
QXJtYWRhIENQMTEwIGhhdmUgYSBDT01QSFkgSVAgd2hpY2ggc3VwcG9ydHMgY29uZmlndXJpbmcg
U0VSREVTIGxhbmVzCj4gPj4+IGluIG9uZSBtb2RlLCBlaXRoZXI6Cj4gPj4+IC0gU0FUQQo+ID4+
PiAtIFVTQjMgaG9zdAo+ID4+PiAtIFBDSWUgKHNldmVyYWwgd2lkdGgpCj4gPj4+IC0gRXRoZXJu
ZXQgKHNldmVyYWwgbW9kZXMpCj4gPj4+Cj4gPj4+IEFzIG9mIHRvZGF5LCBvbmx5IGEgZmV3IEV0
aGVybmV0IG1vZGVzIGFyZSBzdXBwb3J0ZWQgYW5kIHRoZSBjb2RlIGlzCj4gPj4+IGVtYmVkZGVk
IGluIHRoZSBMaW51eCBkcml2ZXIuIEEgbW9yZSBjb21wbGV0ZSBDT01QSFkgZHJpdmVyIHRoYXQg
Y2FuCj4gPj4+IGJlIHVzZWQgYnkgYm90aCBMaW51eCBhbmQgVS1Cb290IGlzIGVtYmVkZGVkIGlu
IHRoZSBmaXJtd2FyZSBhbmQgY2FuCj4gPj4+IGJlIHJ1biB0aHJvdWdoIFNNQyBjYWxscy4KPiA+
Pj4KPiA+Pj4gRmlyc3QgdGhlIGN1cnJlbnQgQ09NUEhZIGRyaXZlciBpcyB1cGRhdGVkIHRvIHVz
ZSBTTUMgY2FsbHMgYnV0Cj4gPj4+IGZhbGxiYWNrcyB0byB0aGUgYWxyZWFkeSBleGlzdGluZyBm
dW5jdGlvbnMgaWYgdGhlIGZpcm13YXJlIGlzIG5vdAo+ID4+PiB1cC10by1kYXRlLiBUaGVuLCBt
b3JlIEV0aGVybmV0IG1vZGVzIGFyZSBhZGRlZCAodGhyb3VnaCBTTUMgY2FsbHMKPiA+Pj4gb25s
eSkuIFNBVEEsIFVTQjNIIGFuZCBQQ0llIG1vZGVzIGFyZSBhbHNvIHN1cHBvcnRlZCBvbmUgYnkg
b25lLgo+ID4+Pgo+ID4+PiBUaGVyZSBpcyBvbmUgc3VidGxlIGRpZmZlcmVuY2Ugd2l0aCB0aGUg
UENJZSBmdW5jdGlvbnM6IHdlIG11c3QgdGVsbAo+ID4+PiB0aGUgZmlybXdhcmUgdGhlIG51bWJl
ciBvZiBsYW5lcyB0byBjb25maWd1cmUgKHgxLCB4MiBvciB4NCkuIFRoaXMKPiA+Pj4gcGFyYW1l
dGVyIGRlcGVuZHMgb24gdGhlIG51bWJlciBvZiBlbnRyaWVzIGluIHRoZSAncGh5cycgcHJvcGVy
dHkKPiA+Pj4gZGVzY3JpYmluZyB0aGUgUENJZSBQSFkuIFdlIHVzZSB0aGUgInN1Ym1vZGUiIHBh
cmFtZXRlciBvZiB0aGUgZ2VuZXJpYwo+ID4+PiBQSFkgQVBJIHRvIGNhcnJ5IHRoaXMgdmFsdWUu
IFRoZSBBcm1hZGEtOGsgUENJZSBkcml2ZXIgaGFzIGJlZW4KPiA+Pj4gdXBkYXRlZCB0byBmb2xs
b3cgdGhpcyBpZGVhIGFuZCB0aGlzIGNoYW5nZSBoYXMgYmVlbiBtZXJnZWQgYWxyZWFkeToKPiA+
Pj4gaHR0cDovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEwNzI3NjMvICAgIAo+ID4+Cj4g
Pj4gU29tZSBvZiB0aGUgcGF0Y2hlcyBhcmUgbm90IGFwcGx5aW5nIGNsZWFubHkuIENhcmUgdG8g
cmVzZW5kIHRoZSBzZXJpZXMgYWZ0ZXIKPiA+PiByZWJhc2luZyB0byBwaHkgLW5leHQ/ICAKPiA+
IAo+ID4gQmVzaWRlcyB0d28gY29uZmxpY3RzIHRoYXQgSSBjYW4gZml4IHZlcnkgZWFzaWx5IGFi
b3V0IG1pc3NpbmcKPiA+IG9mX25vZGVfcHV0KCkgY2FsbHMsIHlvdSBqdXN0IG1lcmdlZCBpbiBw
aHktbmV4dCB0aGlzIHBhdGNoOgo+ID4gCj4gPiBwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1jcDEx
MC1jb21waHk6IGltcGxlbWVudCBSWEFVSSBzdXBwb3J0Cj4gPiAKPiA+IFdoaWNoIHRvdGFsbHkg
Y29uZmxpY3RzIHdpdGggbXkgc2VyaWVzIHdoaWxlIEkgYWxzbyBhZGQgUlhBVUkgc3VwcG9ydAo+
ID4gaW4gcGF0Y2ggNS4gUGxlYXNlIG5vdGUgdGhhdCBldmVuIHRoZSB0aGlyZCB2ZXJzaW9uIG9m
IG15IHNlcmllcwo+ID4gd2FzIGNvbnRyaWJ1dGVkIGJlZm9yZSB0aGlzIHBhdGNoLgo+ID4gCj4g
PiBUaGVyZSBpcyBvbmUgZGlmZmVyZW5jZSB0byBub3RlIHRob3VnaDogaW4gdGhlIHBhdGNoIGZy
b20gTWF0dCBQZWxhbmQsCj4gPiBSWEFVSSBzdXBwb3J0IGlzIGVtYmVkZGVkIGluIHRoZSBkcml2
ZXIgd2hpbGUgSSBkbyBTTUMgY2FsbHMuCj4gPiAKPiA+IEFueXdheSwgd291bGQgaXQgYmUgcG9z
c2libGUgdG8gY2hhbmdlIHRoZSBvcmRlciBvZiBhcHBsaWNhdGlvbiBpZgo+ID4geW91IHdhbnQg
Ym90aCBtZXRob2RzIGluIHRoZSBkcml2ZXIgYmVjYXVzZSBpdCB3aWxsIGJlIG11Y2ggZWFzaWVy
Cj4gPiB0byBhZGQgTWF0dCdzIHBhdGNoIG9uIHRvcCBvZiBteSBzZXJpZXMgdGhhbiB0aGUgb3Bw
b3NpdGUuIEkgY2FuCj4gPiBldmVuIGRvIGl0IG15c2VsZiBpZiB5b3Ugd2lzaC4gIAo+IAo+IEkn
dmUgcmVzb2x2ZWQgdGhpcy4gQ2FuIHlvdSByZXZpZXcgaW4gcGh5IC1uZXh0IGlmIHRoZSBjaGFu
Z2VzIGxvb2tzIG9rYXk/CgpHcmVhdCEgVGhhbmtzIGZvciBkb2luZyBpdCB5b3Vyc2VsZiEKCkkg
aGFkIGEgbG9vayBhbmQgZXZlcnl0aGluZyBsb29rcyBmaW5lIGJ5IG1lLgoKQ2hlZXJzLApNaXF1
w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
