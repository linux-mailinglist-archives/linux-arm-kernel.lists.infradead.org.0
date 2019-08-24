Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4812B9BD61
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 13:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7M8ywuxmxUkbvMAuuVynMYi1Q1NB6ZheJFB1ZK96OA=; b=tCC3f+rDjLzRYA
	WVqBb/lnfNhXlFN+dmnp29ckjkUveuHN8kYa2yClqH88W32YOWsNlBsJS8ldzp7wxVK46xqIR2AqH
	cHHG4ebkFnJhPmn8Xp7lxFqLdawhhpqHrsIYARd8GIR8S4pWsOmFCE8OeFB/QljrfVCGUUP25F4Ph
	kZNR6eeSmcVzexZeIFAyEE9BIn9s6O2jWKEvApupnwEbAAn+NjiOT6M1Ybl0hpsO858UkpDsX3lkE
	6dOsQ7iGY5C2Cegje4mOSFRmEznnu+Y8SjAA9Ng0AJA+RUGToACyS+rD8Cx4tbQgBra90nMgmvIko
	W8XfKEBFdWwI7X6YQHfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ucu-0006CS-Q8; Sat, 24 Aug 2019 11:54:36 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Ucn-0006C1-Eb
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 11:54:31 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 63E2D24000A;
 Sat, 24 Aug 2019 11:54:16 +0000 (UTC)
Date: Sat, 24 Aug 2019 13:54:14 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
Message-ID: <20190824135414.5c490337@xps13>
In-Reply-To: <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_045429_641803_67E8281E 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
 Nadav Haklai <nadavh@marvell.com>, Matt Pelland <mpelland@starry.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2lzaG9uLAoKKyBNYXR0IFBlbGxhbmQKCktpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hv
bkB0aS5jb20+IHdyb3RlIG9uIEZyaSwgMjMgQXVnIDIwMTkKMDg6NDY6MTQgKzA1MzA6Cgo+IE9u
IDMxLzA3LzE5IDU6NTEgUE0sIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBBcm1hZGEgQ1AxMTAg
aGF2ZSBhIENPTVBIWSBJUCB3aGljaCBzdXBwb3J0cyBjb25maWd1cmluZyBTRVJERVMgbGFuZXMK
PiA+IGluIG9uZSBtb2RlLCBlaXRoZXI6Cj4gPiAtIFNBVEEKPiA+IC0gVVNCMyBob3N0Cj4gPiAt
IFBDSWUgKHNldmVyYWwgd2lkdGgpCj4gPiAtIEV0aGVybmV0IChzZXZlcmFsIG1vZGVzKQo+ID4g
Cj4gPiBBcyBvZiB0b2RheSwgb25seSBhIGZldyBFdGhlcm5ldCBtb2RlcyBhcmUgc3VwcG9ydGVk
IGFuZCB0aGUgY29kZSBpcwo+ID4gZW1iZWRkZWQgaW4gdGhlIExpbnV4IGRyaXZlci4gQSBtb3Jl
IGNvbXBsZXRlIENPTVBIWSBkcml2ZXIgdGhhdCBjYW4KPiA+IGJlIHVzZWQgYnkgYm90aCBMaW51
eCBhbmQgVS1Cb290IGlzIGVtYmVkZGVkIGluIHRoZSBmaXJtd2FyZSBhbmQgY2FuCj4gPiBiZSBy
dW4gdGhyb3VnaCBTTUMgY2FsbHMuCj4gPiAKPiA+IEZpcnN0IHRoZSBjdXJyZW50IENPTVBIWSBk
cml2ZXIgaXMgdXBkYXRlZCB0byB1c2UgU01DIGNhbGxzIGJ1dAo+ID4gZmFsbGJhY2tzIHRvIHRo
ZSBhbHJlYWR5IGV4aXN0aW5nIGZ1bmN0aW9ucyBpZiB0aGUgZmlybXdhcmUgaXMgbm90Cj4gPiB1
cC10by1kYXRlLiBUaGVuLCBtb3JlIEV0aGVybmV0IG1vZGVzIGFyZSBhZGRlZCAodGhyb3VnaCBT
TUMgY2FsbHMKPiA+IG9ubHkpLiBTQVRBLCBVU0IzSCBhbmQgUENJZSBtb2RlcyBhcmUgYWxzbyBz
dXBwb3J0ZWQgb25lIGJ5IG9uZS4KPiA+IAo+ID4gVGhlcmUgaXMgb25lIHN1YnRsZSBkaWZmZXJl
bmNlIHdpdGggdGhlIFBDSWUgZnVuY3Rpb25zOiB3ZSBtdXN0IHRlbGwKPiA+IHRoZSBmaXJtd2Fy
ZSB0aGUgbnVtYmVyIG9mIGxhbmVzIHRvIGNvbmZpZ3VyZSAoeDEsIHgyIG9yIHg0KS4gVGhpcwo+
ID4gcGFyYW1ldGVyIGRlcGVuZHMgb24gdGhlIG51bWJlciBvZiBlbnRyaWVzIGluIHRoZSAncGh5
cycgcHJvcGVydHkKPiA+IGRlc2NyaWJpbmcgdGhlIFBDSWUgUEhZLiBXZSB1c2UgdGhlICJzdWJt
b2RlIiBwYXJhbWV0ZXIgb2YgdGhlIGdlbmVyaWMKPiA+IFBIWSBBUEkgdG8gY2FycnkgdGhpcyB2
YWx1ZS4gVGhlIEFybWFkYS04ayBQQ0llIGRyaXZlciBoYXMgYmVlbgo+ID4gdXBkYXRlZCB0byBm
b2xsb3cgdGhpcyBpZGVhIGFuZCB0aGlzIGNoYW5nZSBoYXMgYmVlbiBtZXJnZWQgYWxyZWFkeToK
PiA+IGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMDcyNzYzLyAgCj4gCj4gU29t
ZSBvZiB0aGUgcGF0Y2hlcyBhcmUgbm90IGFwcGx5aW5nIGNsZWFubHkuIENhcmUgdG8gcmVzZW5k
IHRoZSBzZXJpZXMgYWZ0ZXIKPiByZWJhc2luZyB0byBwaHkgLW5leHQ/CgpCZXNpZGVzIHR3byBj
b25mbGljdHMgdGhhdCBJIGNhbiBmaXggdmVyeSBlYXNpbHkgYWJvdXQgbWlzc2luZwpvZl9ub2Rl
X3B1dCgpIGNhbGxzLCB5b3UganVzdCBtZXJnZWQgaW4gcGh5LW5leHQgdGhpcyBwYXRjaDoKCnBo
eTogbWFydmVsbDogcGh5LW12ZWJ1LWNwMTEwLWNvbXBoeTogaW1wbGVtZW50IFJYQVVJIHN1cHBv
cnQKCldoaWNoIHRvdGFsbHkgY29uZmxpY3RzIHdpdGggbXkgc2VyaWVzIHdoaWxlIEkgYWxzbyBh
ZGQgUlhBVUkgc3VwcG9ydAppbiBwYXRjaCA1LiBQbGVhc2Ugbm90ZSB0aGF0IGV2ZW4gdGhlIHRo
aXJkIHZlcnNpb24gb2YgbXkgc2VyaWVzCndhcyBjb250cmlidXRlZCBiZWZvcmUgdGhpcyBwYXRj
aC4KClRoZXJlIGlzIG9uZSBkaWZmZXJlbmNlIHRvIG5vdGUgdGhvdWdoOiBpbiB0aGUgcGF0Y2gg
ZnJvbSBNYXR0IFBlbGFuZCwKUlhBVUkgc3VwcG9ydCBpcyBlbWJlZGRlZCBpbiB0aGUgZHJpdmVy
IHdoaWxlIEkgZG8gU01DIGNhbGxzLgoKQW55d2F5LCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byBj
aGFuZ2UgdGhlIG9yZGVyIG9mIGFwcGxpY2F0aW9uIGlmCnlvdSB3YW50IGJvdGggbWV0aG9kcyBp
biB0aGUgZHJpdmVyIGJlY2F1c2UgaXQgd2lsbCBiZSBtdWNoIGVhc2llcgp0byBhZGQgTWF0dCdz
IHBhdGNoIG9uIHRvcCBvZiBteSBzZXJpZXMgdGhhbiB0aGUgb3Bwb3NpdGUuIEkgY2FuCmV2ZW4g
ZG8gaXQgbXlzZWxmIGlmIHlvdSB3aXNoLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
