Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D94F468E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6fqerAnvptQbVMuG7Og8oFTYdNMn191Kbvm/Q/KpIg=; b=ovEAy3zcEYkjXx
	xP8iU6TexuUMUy74vym66tsT0Cp0CjT8abChfntc6CnbzAFPnttebh2ID2bY8cKsnPW8z2KAYw7c2
	9rqTZpUDCBYc4EeZhpRGByi59mL50NJgJJQNLTjKUWf421gajIY5zhzAR1k+vnsZsywi0rrhYnR22
	eEZTcF5GLE0dweIQscjYp89RUVQT64LSyAcLOftomhGRMpkC9nLCw/NWbdGzB9u61v6WFhuQTmOMI
	qpW8GdAE6C1c1ST56CbUWOwx69eXLIZzq5PDApZDIiPq0ZpISr+61yEguR4nCnCRgOzLs8d8i+Cqb
	bXOeAi0dA0+022e8uuGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2fZ-00030u-Q7; Fri, 08 Nov 2019 11:43:13 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2fP-0002yh-4e
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1573213381; bh=lE0IEyhRZdzSCV11eufQ/7MoeNiErKeSnathaLA1lNU=;
 h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
 b=N02473gjGfoh4FNolyioo32WH6IieZfnLJyQNsMA0nPAvDQkTSDPisLlvb3n3SXHO
 7AVe8qFjWddBloPUZwFm5DUw3VMc4Aqy730ScMHIW1+8dTjaChczSKoMoNEdUB//M4
 Lb5+/V0MW/FyCAzq0khvPJrtjxUGzimQera7k3vI=
Date: Fri, 8 Nov 2019 12:43:01 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Icenowy Zheng <icenowy@aosc.io>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 mark.rutland@arm.com, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, robh+dt@kernel.org,
 tglx@linutronix.de, wens@csie.org
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191108114301.v3663hs5ftjsoec3@core.my.home>
Mail-Followup-To: Icenowy Zheng <icenowy@aosc.io>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 mark.rutland@arm.com, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, robh+dt@kernel.org,
 tglx@linutronix.de, wens@csie.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
 <20191107214514.kcz42mcehyrrif4o@core.my.home>
 <F563E52E-72BF-4297-A14F-DDE2B490DADB@aosc.io>
 <20191108114138.snghk5n7kwuw7zz3@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108114138.snghk5n7kwuw7zz3@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034303_351415_87300037 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMTI6NDE6MzlQTSArMDEwMCwgbWVnb3VzIGhsYXZuaSB3
cm90ZToKPiBPbiBGcmksIE5vdiAwOCwgMjAxOSBhdCAwNzoyOToyMVBNICswODAwLCBJY2Vub3d5
IFpoZW5nIHdyb3RlOgo+ID4gCj4gPiAKPiA+IOS6jiAyMDE55bm0MTHmnIg45pelIEdNVCswODow
MCDkuIrljYg1OjQ1OjE0LCAiT25kxZllaiBKaXJtYW4iIDxtZWdvdXNAbWVnb3VzLmNvbT4g5YaZ
5YiwOgo+ID4gPkhlbGxvIFJpa2FyZCwKPiA+ID4KPiA+ID5PbiBUaHUsIE5vdiAwNywgMjAxOSBh
dCAwOTo0Njo0NVBNICswMTAwLCBSaWthcmQgRmFsa2Vib3JuIHdyb3RlOgo+ID4gPj4gQXJndW1l
bnRzIGFyZSBzdXBwb3NlZCB0byBiZSBvcmRlcmVkIGhpZ2ggdGhlbiBsb3cuCj4gPiA+PiAKPiA+
ID4+IFNpZ25lZC1vZmYtYnk6IFJpa2FyZCBGYWxrZWJvcm4gPHJpa2FyZC5mYWxrZWJvcm5AZ21h
aWwuY29tPgo+ID4gPj4gLS0tCj4gPiA+PiBTcG90dGVkIHdoaWxlIHRyeWluZyB0byBhZGQgY29t
cGlsZSB0aW1lIGNoZWNrcyBvZiBHRU5NQVNLIGFyZ3VtZW50cy4KPiA+ID4+IFBhdGNoIGhhcyBv
bmx5IGJlZW4gY29tcGlsZSB0ZXN0ZWQuCj4gPiA+Cj4gPiA+dGhhbmsgeW91IQo+ID4gPgo+ID4g
PlRlc3RlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiAKPiA+IERv
ZXMgaXQgYWZmZWN0IG9yIGZpeCB0aGUgcGVyZm9ybWFuY2U/Cj4gCj4gU2VlIGhlcmU6IGh0dHBz
Oi8vZm9ydW0uYXJtYmlhbi5jb20vdG9waWMvMTAxMzEtb3JhbmdlLXBpLWxpdGUyLXVzYjMtbm93
LXdvcmtpbmcvP2RvPWZpbmRDb21tZW50JmNvbW1lbnQ9ODg5MDQKPiAKPiBRdW90ZToKPiAKPiA+
IEl0IG1heSBvciBtYXkgbm90IGhlbHAuIE9uIE9waTMgSSBzZWUgbm8gY2hhbmdlLCBwcm9iYWJs
eSBiZWNhdXNlIEhVQiBpcwo+ID4gcmVhbGx5IGNsb3NlIHRvIHRoZSBTb0MsIGJ1dCBvbiBib2Fy
ZHMgd2l0aG91dCBhIEhVQiwgU29DJ3MgVVNCMyBwaHkgd2lsbAo+ID4gaGF2ZSB0byBkcml2ZSB0
aGUgc2lnbmFsIG92ZXIgdGhlIGxvbmdlciBjYWJsZSBhbmQgdGhpcyBwYXRjaCBtaWdodCBiZW5l
Zml0Cj4gPiB0aG9zZSBib2FyZHMuIAo+IAo+IE1heWJlIHNvbWVvbmUgd2l0aCBib2FyZHMgd2l0
aG91dCBQSFkgd2lsbCB0ZXN0IGl0IG1vcmUuCgpFaCwgb24gYm9hcmRzIHdpdGhvdXQgYSBVU0Iz
IEhVQi4KCj4gcmVnYXJkcywKPiAJby4KPiAKPiA+ID4KPiA+ID5yZWdhcmRzLAo+ID4gPglvLgo+
ID4gPgo+ID4gPj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMuYyB8IDIg
Ky0KPiA+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+ID4+IAo+ID4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3Vu
NTBpLXVzYjMuYwo+ID4gPmIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW41MGktdXNiMy5j
Cj4gPiA+PiBpbmRleCAxMTY5ZjNlODNhNmYuLmIxYzA0ZjcxYTMxZCAxMDA2NDQKPiA+ID4+IC0t
LSBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMuYwo+ID4gPj4gKysrIGIv
ZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW41MGktdXNiMy5jCj4gPiA+PiBAQCAtNDksNyAr
NDksNyBAQAo+ID4gPj4gICNkZWZpbmUgU1VOWElfTE9TX0JJQVMobikJCSgobikgPDwgMykKPiA+
ID4+ICAjZGVmaW5lIFNVTlhJX0xPU19CSUFTX01BU0sJCUdFTk1BU0soNSwgMykKPiA+ID4+ICAj
ZGVmaW5lIFNVTlhJX1RYVkJPT1NUTFZMKG4pCQkoKG4pIDw8IDApCj4gPiA+PiAtI2RlZmluZSBT
VU5YSV9UWFZCT09TVExWTF9NQVNLCQlHRU5NQVNLKDAsIDIpCj4gPiA+PiArI2RlZmluZSBTVU5Y
SV9UWFZCT09TVExWTF9NQVNLCQlHRU5NQVNLKDIsIDApCj4gPiA+PiAgCj4gPiA+PiAgc3RydWN0
IHN1bjUwaV91c2IzX3BoeSB7Cj4gPiA+PiAgCXN0cnVjdCBwaHkgKnBoeTsKPiA+ID4+IC0tIAo+
ID4gPj4gMi4yNC4wCj4gPiA+PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
