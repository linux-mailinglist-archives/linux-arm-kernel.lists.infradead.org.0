Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EAC1DE7DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 15:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDS3vofY1umAnPkaHF7gFuKuTAiTn0A5x+RuA1nUFb0=; b=DHJWZCq4I8mbHf
	/Uz/X535vWGXYU44A3O3Zu87+4Acue4abJwmcoV5T8vNlRL8QZ9lmPd9VG49+Na8YuPzFCbwDPzRN
	LgaAa9hjSgCNao8Xod5u1si4zhJNQdvIusCYJuV2QhM0Opkp1l6MDOMpKWBpNoQEcKwojDfYNI5wS
	80HMcGE5EXDIVgLvpuHUKZ+/j/dLUptvFttwsQ8yIDHRaW8mW48S5GJi4VEzKBFUfzETIU8Ss6eSS
	FGtq+nd/wmrSdVXKCDq4GS1UezUb7U250mKSgvx2KdaQ7UY0DAFCfy9+BxtbbIsK+zCirOzrGqCbM
	swMrqP6SrMUDBxU0jvyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7Yt-0007LJ-Mm; Fri, 22 May 2020 13:18:07 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7Yi-0007Km-DL; Fri, 22 May 2020 13:17:58 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1DBE5FF804;
 Fri, 22 May 2020 13:17:51 +0000 (UTC)
Date: Fri, 22 May 2020 15:17:50 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200522151750.369dd4d9@xps13>
In-Reply-To: <CAK8P3a2Z-UxktGn+_aBVaaBTStT7f177V2ED2RfVCQS8QDBamg@mail.gmail.com>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
 <20200521071213.GI1118872@kernel.org>
 <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
 <20200521190158.GL1118872@kernel.org>
 <20200521211016.3ad62148@collabora.com>
 <20200522131818.3adbac78@xps13>
 <CAK8P3a2Z-UxktGn+_aBVaaBTStT7f177V2ED2RfVCQS8QDBamg@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_061756_722472_F1323D2B 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCkFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyb3RlIG9uIEZyaSwgMjIg
TWF5IDIwMjAgMTU6MTQ6NDMgKzAyMDA6Cgo+IE9uIEZyaSwgTWF5IDIyLCAyMDIwIGF0IDE6MTgg
UE0gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZSBvbiBU
aHUsIDIxIE1heQo+ID4gMjAyMCAyMToxMDoxNiArMDIwMDoKPiA+ICAKPiA+ID4gT24gVGh1LCAy
MSBNYXkgMjAyMCAyMjowMTo1OCArMDMwMAo+ID4gPiBNaWtlIFJhcG9wb3J0IDxycHB0QGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gPiAgCj4gPiA+ID4gT24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMDk6
MjY6MTBBTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3cm90ZTogIAo+ID4gPiA+ID4gT24gVGh1LCBN
YXkgMjEsIDIwMjAgYXQgOToxMiBBTSBNaWtlIFJhcG9wb3J0IDxycHB0QGtlcm5lbC5vcmc+IHdy
b3RlOiAgCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDA1
OjIxOjUxUE0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6ICAKPiA+ID4gPiA+ID4gPiBPbiBX
ZWQsIE1heSAyMCwgMjAyMCBhdCAxMjoyMSBQTSBSb2JlcnQgSmFyem1payA8cm9iZXJ0Lmphcnpt
aWtAZnJlZS5mcj4gd3JvdGU6ICAKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBBcyB0
aGVzZSBib2FyZHMgaGF2ZSBubyBtb3JlIHVzZXJzIG5vciB0ZXN0ZXJzLCBhbmQgcGF0Y2hpbmcg
dGhlbSBoYXMKPiA+ID4gPiA+ID4gPiA+IGJlY29tZSBhIGJ1cmRlbiwgYmUgdGhhdCBiZWNhdXNl
IG9mIHRoZSBQQ0kgcGFydCBvciB0aGUgTVREIE5BTkQKPiA+ID4gPiA+ID4gPiA+IHN1cHBvcnQs
IGxldCdzIHJlbW92ZSB0aGVtLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IFRoZSBj
bS14MzAwIHdpbGwgZm9yIG5vdyByZW1haW4gYW5kIHJlcHJlc2VudCBDb21wdWxhYiBib2FyZHMg
YXQgaXRzCj4gPiA+ID4gPiA+ID4gPiBiZXN0IGluIHRoZSBQWEEgZGVwYXJ0bWVudC4gIAo+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiBJIHRoaW5rIHRoaXMgc2VyaWVzIG1pc3NlZCB0aGUgY20teDI3
MCBOQU5EIGRyaXZlciwgc28gdGhpcyBjb3VsZCBiZQo+ID4gPiA+ID4gPiBQQVRDSCA0LzMgKG5v
dCBldmVuIGNvbXBpbGUgdGVzdGVkKS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gRnJvbSA1NmEx
MTk4N2Y4MmVmOGIzMmIyNWRmYzE3Yjg0OWY5YmJiZjAzZTRkIE1vbiBTZXAgMTcgMDA6MDA6MDAg
MjAwMQo+ID4gPiA+ID4gPiBGcm9tOiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+
Cj4gPiA+ID4gPiA+IERhdGU6IFRodSwgMjEgTWF5IDIwMjAgMTA6MDk6NDcgKzAzMDAKPiA+ID4g
PiA+ID4gU3ViamVjdDogW1BBVENIXSBtdGQ6IHJhd25hbmQ6IHJlbW92ZSBDTS1YMjcwIE5BTkQg
ZHJpdmVyCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBjbS14MjcwIGJvYXJkIGhhdmUgYmVl
biByZW1vdmVkIGFuZCB0aGVyZXMgaXMgbm8gcG9pbnQgdG8ga2VlcCB0aGlzCj4gPiA+ID4gPiA+
IGRyaXZlci4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrZSBSYXBv
cG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPiAgCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhhbmtzISBS
ZW1vdmluZyB0aGF0IGRyaXZlciB3YXMgYWN0dWFsbHkgaG93IHRoZSBkaXNjdXNzaW9uIHN0YXJ0
ZWQsCj4gPiA+ID4gPiBzbyB3ZSBkZWZpbml0ZWx5IHdhbnQgdG8gZG8gdGhhdC4gQm9yaXMgZWFy
bGllciBwYXRjaCAibXRkOiByYXduYW5kOiBHZXQKPiA+ID4gPiA+IHJpZCBvZiB0aGUgY214Mjcw
IGRyaXZlciIgZGlkIGl0IGJ5IGNoYW5naW5nIHRoZSBib2FyZCBmaWxlLCBub3cgeW91cgo+ID4g
PiA+ID4gcGF0Y2ggaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLCBhbmQgd2Ugc2hvdWxkIHJlbWVt
YmVyIHRvIGRvIHRoZSBzYW1lCj4gPiA+ID4gPiBmb3IgbWJ4ZmIuICAKPiA+ID4gPgo+ID4gPiA+
IEFybmQsIHdpbGwgeW91IHBpY2sgdGhpcyB0byB0aGUgU29DIHRyZWUgb3Igc2hvdWxkIEkgcmVz
ZW5kPyAgCj4gPiA+Cj4gPiA+IEFjdHVhbGx5IEkgc2VudCBhIHYyIHJlbW92aW5nIG9ubHkgdGhl
IE1URCBkcml2ZXIuIFlvdSBzaG91bGQgcHJvYmFibHkKPiA+ID4gc3luYyB3aXRoIE1pcXVlbCB0
byBtYWtlIHN1cmUgdGhlIHNhbWUgcGF0Y2ggaXMgbm90IGFwcGxpZWQgdHdpY2UuICAKPiA+Cj4g
PiBBY3R1YWxseSBJIHdhcyBhYm91dCB0aGUgbWVyZ2UgdGhpcyBwYXRjaCBpbiB0aGUgTVREIHRy
ZWUgYmVjYXVzZSBJCj4gPiBoYXZlIGEgYmlnIGNsZWFudXAgc2VyaWVzIHdoaWNoIGRlcGVuZHMg
b24gaXQuIEFybmQgY291bGQgeW91IGNvbmZpcm0KPiA+IHRoYXQgaXQncyBva2F5IGZvciB5b3U/
ICAKPiAKPiBZZXMsIHRoYXQgc291bmRzIGdvb2QuIEkgYXNzdW1lIHRoZSBwYXRjaCBpcyBiYXNp
Y2FsbHkgaWRlbnRpY2FsIHRvIHRoZSBvbmUKPiB0aGF0IE1pa2UganVzdCBzZW50LCByaWdodD8g
SWYgdGhlcmUgYXJlIGNoYW5nZXMgdG8gYXJjaC9hcm0sIEkgZ3Vlc3MgdGhvc2UgY2FuCj4gYmUg
ZHJvcHBlZCBub3cgYXMgSSdtIG1lcmdpbmcgUm9iZXJ0J3MgcGF0Y2hlcyB0byByZW1vdmUgdGhv
c2UgYm9hcmQKPiBmaWxlcy4KPiAKPiAgICAgICBBcm5kCgpIZXJlIGlzIHRoZSBkaWZmc3RhdDoK
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9LY29uZmlnICAgICAgIHwgICA0IC0KIGRyaXZlcnMvbXRk
L25hbmQvcmF3L01ha2VmaWxlICAgICAgfCAgIDEgLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvY214
MjcwX25hbmQuYyB8IDIzNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCAyNDEgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tdGQv
bmFuZC9yYXcvY214MjcwX25hbmQuYwoKU28gaXQgc2hvdWxkIGJlIGZpbmUuCgpUaGFua3MsCk1p
cXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
