Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A9C47EA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrp74Iyfqmj17qzr8DLheyfc6L2yaqZhavKjsy7hsjY=; b=mCKgsbJ7x4eU06
	C7a5p3x1RTLUKAAko0IzccuJ1QSiYJDUOfq0I4YNrl1GwWtVWWDd+6otTBDuUAU1pjuyoX6AyPKKR
	eHFCwbHMBSTo3rMFRZ4WVVeNkZaZLOSZR3xqriQTb187TXQmXZa8+/tGHMpsgf/Vlx3tZHYGrgq0P
	6gc5q426idQTx2hxf3p2QxDgQlYQuOes0Mr47ekWS+ljUhyMZPxqSIq/sxP12shnmE7hXhnhKIAI6
	dOQRhZ9rJbvxUM9UJx1ZUkwUO/bREd51ijuhCezuN+4PUfX145KkW+hNiJkkqiHA/pLq4Y5NQYsWY
	QOiiZda3+alxj8dlCvoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hco7u-0001cy-U7; Mon, 17 Jun 2019 09:40:34 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hco7f-0001cH-Bd
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:40:20 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 47A171BF212;
 Mon, 17 Jun 2019 09:40:17 +0000 (UTC)
Date: Mon, 17 Jun 2019 11:40:16 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190617114016.10fb9e03@xps13>
In-Reply-To: <20190617113841.60032387@xps13>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
 <20190617113841.60032387@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_024019_561541_9898C8DB 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGltb3RoeSwKCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdy
b3RlIG9uIE1vbiwgMTcgSnVuIDIwMTkKMTE6Mzg6NDEgKzAyMDA6Cgo+IEhpIFRpbW90aHksCj4g
Cj4gUGxlYXNlIGtlZXAgdGhlIExpbnV4IEFSTSBrZXJuZWwgTUwgaW4gY29weS4KPiAKPiAiVGlt
b3RoeSBLcmFudHoiIDx0a3JhbnR6QHN0YWh1cmFicmVubmVyLmNvbT4gd3JvdGUgb24gU2F0LCAx
NSBKdW4gMjAxOQo+IDE4OjU2OjAwIC0wNDAwOgo+IAo+ID4gSGVsbG8sCj4gPiBJIGFtIHN0aWxs
IHVuYWJsZSB0byBnZXQgNS4xIG9yIDUuMnJjIGtlcm5lbHMgdG8gYm9vdCB3aXRoIHRoZSBhc3Nv
Y2lhdGVkIGR0Yi4gIFRoZXkgYWxsIHNlZW0gdG8gd29yayBmaW5lIHdpdGggdGhlIG9sZGVyIGR0
Yi4KPiA+IAo+ID4gSSBhbSBjZXJ0YWluIHRoYXQgaXQgaXMgc29tZXRoaW5nIGluIG15IC5jb25m
aWcgdGhhdCBpcyBub3QgcHJvcGVybHkgc2V0Lgo+ID4gCj4gPiBJIGRvbid0IHN1cHBvc2UgeW91
IGNhbiBzZW5kIG1lIGEgY29weSBvZiB5b3VyIC5jb25maWcgdGhhdCB3b3JrcyBzbyB0aGF0IEkg
Y2FuIHRyeSB3aXRoIHRoYXQ/ICAKPiAKPiBNeUhlcmUgaXMgbXkgY29uZmlndXJhdGlvbiBmb3Ig
YSA1LjItcmMxIGtlcm5lbC4KCkhlcmUgaXQgaXMgLT4gaHR0cDovL2NvZGUuYnVsaXgub3JnL25n
ZHI4ei03NzQwNzEKClNBVEEgcG9ydCBpcyB3b3JraW5nIHdpdGggdGhpcyBzZXR1cC4KClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
