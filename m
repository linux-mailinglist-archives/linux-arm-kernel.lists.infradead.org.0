Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88C1D4EBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgL6Kn9f85OBrW59U0jMo/WftroF2BKLsbAbp+YQ8Nk=; b=FiFoSKCx3rx3L6
	ZCxcADheY7tb4jDrPN24WaZ791JOn3gtXt5tnJO57/OevURyyhLTPGRCr0IW49Ar9A0Q4Mbz+4fEW
	gUw9ZtPYQ/GBVUE1s7GQbiVk1v7kUnATBu0ORA+6nFHOl37mGCnmN/tho5w3RqUcOwCfDO4EdiiGT
	AHGJyAmpaej4XkEMYe8X7F74jzU58Ae+r26W1973kbVpTshvw8M6DfofTLmPJvBYw4reK8NXzmXv1
	qsMNx5RfaC4h/SjLH+sDYt6gLEKJk4qzyqU+r6ysKfB67klGGY2MYh3+3dzHLcJLTkP0Dg0Z4mr+g
	SAun4w65Lx9+DhdRyRGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaBe-0002cZ-UB; Fri, 15 May 2020 13:15:38 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZaBM-0002a0-5V; Fri, 15 May 2020 13:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iWit2H79Tb0qaINFisbPojdkHSI5mJJzBhDaFk5Qr7E=; b=hhpHlRaYRjua1uzCeXxgDoEOCt
 lAV6E7I5b1M2C99iceVmPVZFIdm65z6dBzz+K5ZS0+rYbhvUQzuCN4x3V6Cwe5qMIXraMRRfRqBf4
 Iof8oT26KglqmqYzlByG4bgcwab347Pa/whj1QTLL/FUnXVS2KAEddTscechzQ91hxpg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jZaB1-002NcN-Fb; Fri, 15 May 2020 15:14:59 +0200
Date: Fri, 15 May 2020 15:14:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200515131459.GQ527401@lunn.ch>
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
 <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
 <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061520_244452_F90071C1 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 John Crispin <john@phrozen.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDk6MTE6MTRBTSArMDIwMCwgQmFydG9zeiBHb2xhc3pl
d3NraSB3cm90ZToKPiBjencuLCAxNCBtYWogMjAyMCBvIDE4OjE5IEFybmQgQmVyZ21hbm4gPGFy
bmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IE9uIFRodSwgTWF5IDE0LCAyMDIwIGF0
IDEwOjAwIEFNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUu
Y29tPgo+ID4gPgo+ID4gPiBUaGlzIGFkZHMgdGhlIGRyaXZlciBmb3IgdGhlIE1lZGlhVGVrIEV0
aGVybmV0IE1BQyB1c2VkIG9uIHRoZSBNVDgqIFNvQwo+ID4gPiBmYW1pbHkuIEZvciBub3cgd2Ug
b25seSBzdXBwb3J0IGZ1bGwtZHVwbGV4Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0
b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IExvb2tz
IHZlcnkgbmljZSBvdmVyYWxsLiBKdXN0IGEgZmV3IHRoaW5ncyBJIG5vdGljZWQsIGFuZCBzb21l
IGlkZWFzCj4gPiB0aGF0IG1heSBvciBtYXkgbm90IG1ha2Ugc2Vuc2U6Cj4gPgo+ID4gPiArLyog
VGhpcyBpcyBkZWZpbmVkIHRvIDAgb24gYXJtNjQgaW4gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9w
cm9jZXNzb3IuaCBidXQKPiA+ID4gKyAqIHRoaXMgSVAgZG9lc24ndCB3b3JrIHdpdGhvdXQgdGhp
cyBhbGlnbm1lbnQgYmVpbmcgZXF1YWwgdG8gMi4KPiA+ID4gKyAqLwo+ID4gPiArI2lmZGVmIE5F
VF9JUF9BTElHTgo+ID4gPiArI3VuZGVmIE5FVF9JUF9BTElHTgo+ID4gPiArI2VuZGlmCj4gPiA+
ICsjZGVmaW5lIE5FVF9JUF9BTElHTiAgICAgICAgICAgICAgICAgICAgICAgICAgIDIKPiA+Cj4g
PiBNYXliZSB5b3Ugc2hvdWxkIGp1c3QgZGVmaW5lIHlvdXIgb3duIG1hY3JvIGluc3RlYWQgb2Yg
cmVwbGFjaW5nCj4gPiB0aGUgbm9ybWFsIG9uZSB0aGVuPwo+ID4KPiAKPiBJIGRpZCBpbiBhbiBl
YXJsaWVyIHZlcnNpb24gYW5kIHdhcyB0b2xkIHRvIHVzZSBORVRfSVBfQUxJR04gYnV0IHRoZW4K
PiBmb3VuZCBvdXQgaXRzIHZhbHVlIG9uIGFybTY0IGRvZXNuJ3Qgd29yayBmb3IgbWUgc28gSSBk
aWQgdGhlIHRoaW5nCj4gdGhhdCB3b24ndCBtYWtlIGFueWJvZHkgaGFwcHkgLSByZWRlZmluZSB0
aGUgZXhpc3RpbmcgY29uc3RhbnQuIDopCgpIaSBCYXJ0b3N6CgpJIGRpZCBub3QgcmVhbGlzZSBB
Uk02NCBzZXQgaXQgdG8gMC4gQXMgQXJuZCBzdWdnZXN0ZWQsIHBsZWFzZSBkZWZpbmUKeW91ciBv
d24gbWFjcm8uCgogICAgQW5kcmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
