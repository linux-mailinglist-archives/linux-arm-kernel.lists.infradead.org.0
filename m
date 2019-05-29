Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEACA2DC85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6tlWeB5FND46ie5Lvmjwkpd3ECVgXSe+Wwq81xWK1o=; b=uDeobuHTbsQwsx
	BNdvEhqLoofg+cvAlD2Cp0WqTRVN9LPx2g+WVEJfi1GjrU0Pcbiv4DTZlZqir6gpaU1X3vL48kYQZ
	Rd1J7B8kKQV5FS2ZcRUeV8t4WYlVV7f3JU+NrC7E3D8aQtYBzXstk+7GG995OYBELYmAF4E9ee/WG
	QfOxmbRVwRLZdwvIFLaE/n86UJ9lddyECc7WU96ulMjPQba2MiTuITcq8c25Eq0h4If1b47SCNkhx
	ohBCq1DGmarBP6tU1WyjppElAzxgkU7Crp1eQgye6wXmSTjdI23akYkes3kqOEWqTw/e0+LjTe04M
	E/3D/ST12VzVE0Lz07og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxTt-0007mg-KZ; Wed, 29 May 2019 12:14:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxTn-0007mK-4U
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 12:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xPnwzUoV/LFZZIDiiiqU25DniWbH5Yu2IVr8H5l8ebU=; b=vhaHDKsnl7hsJVxTEZcvXS9nV9
 4I/9GLn04pg2f/xsT/RAHF+jd6VhPFkDBFHETnrsbe8y2XnwSWcAWEeM36uARQPCvarJwsF7bUIgt
 0zids+k80jnO35GqLB0lJCojK89f1QaTuX0wTTKsrABAmUgu9pyJ7zKKWVs2Wd7OG/VWM7jj55FSl
 zYxh/YIBJ8njketwaS603xA7ogX3FwKb0vRROy/U51rkXM4Z0MVyrEjZaBe6+2MP96dX9T1XoIiFP
 75Ve4DklnsEbIZldGpEd8YXR45CDfE2sqqs4aeJSJGK/VUUW61u37D5MRxxkxDWAp5zlTOv2fJqHu
 ASp/oOUw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxTj-0004Jv-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:14:49 +0000
Received: from xps13 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 83FC020000B;
 Wed, 29 May 2019 12:13:57 +0000 (UTC)
Date: Wed, 29 May 2019 14:13:56 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v4 01/10] ata: libahci: Ensure the host interrupt status
 bits are cleared
Message-ID: <20190529141356.1d9f03f3@xps13>
In-Reply-To: <409ea2c5-c31a-fb6a-22c6-98b45e767809@arm.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-2-miquel.raynal@bootlin.com>
 <CAHG4imNxsdzjzRpFWnL+PuznjdOU4hsp2E-g1bt4WVJeokfT3w@mail.gmail.com>
 <53ce8c5b-46fc-c969-5168-18e4bcc62cde@arm.com>
 <20190529120833.29334c70@xps13>
 <409ea2c5-c31a-fb6a-22c6-98b45e767809@arm.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_081448_081267_67A67EE2 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 raymond pang <raymondpangxd@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Nadav Haklai <nadavh@marvell.com>, devicetree@vger.kernel.org,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-ide@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+IHdyb3RlIG9uIFdl
ZCwgMjkgTWF5IDIwMTkgMTE6Mzc6NTgKKzAxMDA6Cgo+IE9uIDI5LzA1LzIwMTkgMTE6MDgsIE1p
cXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBIaSBNYXJjICYgUmF5bW9uZCwKPiA+IAo+ID4gTWFyYyBa
eW5naWVyIDxtYXJjLnp5bmdpZXJAYXJtLmNvbT4gd3JvdGUgb24gVGh1LCAyMyBNYXkgMjAxOSAx
MDoyNjowMQo+ID4gKzAxMDA6Cj4gPiAgIAo+ID4+IE9uIDIzLzA1LzIwMTkgMDQ6MTEsIHJheW1v
bmQgcGFuZyB3cm90ZTogIAo+ID4+PiBIaSBNaXF1ZWwsCj4gPj4+Cj4gPj4+IFRoaXMgcGF0Y2gg
YWRkcyBjbGVhcmluZyBHSEMuSVMgaW50byBob3QgcGF0aCwgY291bGQgeW91IGV4cGxhaW4gaG93
Cj4gPj4+IGlycSBzdG9ybSBpcyBnZW5lcmF0ZWQ/IHRoYW5rcwo+ID4+PiBBY2NvcmRpbmcgdG8g
QUhDSSBTcGVjLCBIQkEgc2hvdWxkIG5vdCByZWZlciB0byBHSEMuSVMgdG8gZ2VuZXJhdGUKPiA+
Pj4gTVNJIHdoZW4gYXBwbHlpbmcgbXVsdGlwbGUgTVNJcy4gICAgCj4gPj4KPiA+PiBXZWxsIHNw
b3R0ZWQuCj4gPj4KPiA+PiBJIGhhdmUgdGhlIHVnbHkgZmVlbGluZyB0aGF0IHRoaXMgaXMgYmVj
YXVzZSB0aGUgTWFydmVsbCBBSENJCj4gPj4gaW1wbGVtZW50YXRpb24gaXMgbm90IHVzaW5nIE1T
SXMgYXQgYWxsLCBidXQgaW5zdGVhZCBhIHBhaXIgb2Ygd2lyZWQKPiA+PiBpbnRlcnJ1cHRzICh3
aGljaCBhcmUgbGV2ZWwgdHJpZ2dlcmVkIGluc3RlYWQgb2YgZWRnZSwgaGVuY2UgdGhlCj4gPj4g
c2NyZWFtaW5nIGludGVycnVwdHMpLgo+ID4+Cj4gPj4gVGhlIGNoYW5nZXMgaW4gdGhlIGZvbGxv
d2luZyBwYXRjaGVzIGFidXNlIHRoZSByZXN0IG9mIHRoZSBkcml2ZXIgYnkKPiA+PiBwcmV0ZW5k
aW5nIHRoaXMgaXMgYSBhIG11bHRpLU1TSSBzZXR1cCwgd2hpbGUgaXQgY2xlYXJseSBkb2Vzbid0
IG1hdGNoCj4gPj4gdGhlIGV4cGVjdGF0aW9uIG9mIHRoZSBBSENJIHNwZWMgZm9yIE1TSXMuCj4g
Pj4KPiA+PiBJdCBsb29rcyBsaWtlIHRoaXMgc2hvdWxkbid0IGJlIGltcG9zZWQgb24gb3RoZXIg
dW5zdXNwZWN0aW5nCj4gPj4gaW1wbGVtZW50YXRpb25zIHdoaWNoIGNvcnJlY3RseSB1c2UgZWRn
ZS10cmlnZ2VyZWQgTVNJcyBhbmQgZG8gbm90Cj4gPj4gcmVxdWlyZSBzdWNoIGFuIE1NSU8gYWNj
ZXNzLiAgCj4gPiAKPiA+IEkgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4sIGxldCBtZSBhZGQgYSBB
SENJX0hGTEFHX0xFVkVMX01TSSBpbgo+ID4gaHByaXYtPmZsYWdzIHdoaWNoIHdpbGwgYmUgdXNl
ZCBieSB0aGUgbXZlYnVfYWhjaS5jIGRyaXZlciB0byByZXF1ZXN0Cj4gPiBmb3IgdGhpcyBNTUlP
IGFjY2Vzcy4gVGhpcyB3YXksIHRoZSBob3QgcGF0aCByZW1haW5zIHRoZSBzYW1lLiAgCj4gCj4g
SSdtIG5vdCBjb252aW5jZWQgdGhhdCdzIGEgZ29vZCBpZGVhLCBpZiBvbmx5IGJlY2F1c2UgZnJv
bSB0aGUgUG9WIG9mCj4gdGhlIEFIQ0kgZGV2aWNlIGl0c2VsZiwgdGhlc2UgYXJlIG5vdCBNU0lz
IGF0IGFsbCwgYnV0IHdpcmVkIGludGVycnVwdHMuCj4gVGhlIGZhY3QgdGhhdCB0aGVyZSBpcyBz
b21lIGdsdWUgbG9naWMgaW4gdGhlIG1pZGRsZSB0aGF0IHR1cm5zIGl0IGludG8KPiBhIG1lc3Nh
Z2UgKGFuZCB0aGVuIGJhY2sgaW50byBhIHdpcmUpIGlzIGEgcmVncmV0dGFibGUgaW1wbGVtZW50
YXRpb24KPiBkZXRhaWwuCj4gCj4gSSdkIHJhdGhlciB5b3Ugc3RpY2sgdG8gdGhlIG5vcm1hbCBp
bnRlcnJ1cHQgaGFuZGxlciwgb3IgcHJvdmlkZSB5b3VyCj4gb3duLCB3aGljaCB3b3VsZCBzb2x2
ZSBtb3N0IHByb2JsZW1zLgoKVW5sZXNzIEkgZG9uJ3QgdW5kZXJzdGFuZCB5b3VyIHByb3Bvc2Fs
LCAic3RpY2sgdG8gdGhlIG5vcm1hbCBpbnRlcnJ1cHQKaGFuZGxlciIgaXMgbm90IHBvc3NpYmxl
IGFzIEkgbmVlZCB0aGlzIHJlZ2lzdGVyIHdyaXRlIHRvIGhhcHBlbiBhdAp0aGlzIHRpbWUsIG5v
dCBhdCBhbnkgb3RoZXIgbW9tZW50LgoKSG93ZXZlciwgb24gdGhlIHBvc3NpYmlsaXR5IG9mIGhh
dmluZyBhIHNlcGFyYXRlIGludGVycnVwdCBoYW5kbGVyLCBJCm1heSB1c2UgdGhlIG5ldyBBSENJ
X0hGQUxHX0xFVkVMX01TSSBmbGFnIHRvIGNoYW5nZSB0aGUKZGV2bV9yZXF1ZXN0X2lycSBjYWxs
IGhlcmUgWzFdIGFuZCB1c2UgbXkgb3duIGF0IHRoaXMgbW9tZW50LiBUaGUKaGFuZGxlciB3aWxs
IGJlIGluIGxpYmFoY2kuYyB0aG91Z2guCgpXb3VsZCB0aGlzIGJlIGEgYmV0dGVyIGFwcHJvYWNo
PwoKClRoYW5rcywKTWlxdcOobAoKWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y1LjItcmMyL3NvdXJjZS9kcml2ZXJzL2F0YS9saWJhaGNpLmMjTDI1NTcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
