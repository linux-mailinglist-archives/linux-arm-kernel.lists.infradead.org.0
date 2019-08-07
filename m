Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A417F84453
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia76rnXJkgUo/1fo4aLn0aY8jPUMp7H1VmOT1BSptko=; b=b3SVnvkikKQtMB
	6ZyJZWzLWy4DcdXe2kw8v7+CIAcSKUyTiELQ6QVaA21acVsAV7xXQilRbSOpaM+Vc5HlNDEKnni1W
	hrvSenN/QP8q+ewxnHRACGdUlOoKTm1EG4pU4mn1z9tNU78au1Xd5E3bOxpIF/F8RrEmr95SmA7kD
	+kj7hceD/fvI+kLQ4TUy09l9ru2wIPJY4XWgbp+ZbgPc8WldlzTUPjEZk5ZOK+yt/M6NiJo3KVIje
	RBBFgkW5sfFICT92MpFjgv9rssosvcqcPUDX5dbz0wmZlxUhOLQU3u6FLorOxpjg/PNuMMY2u1pbE
	1e2BRCtdU/Iq4aGtpyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFDG-0006A3-JR; Wed, 07 Aug 2019 06:14:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFD3-00069i-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 06:14:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 55DB268B05; Wed,  7 Aug 2019 08:14:02 +0200 (CEST)
Date: Wed, 7 Aug 2019 08:14:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190807061402.GE6627@lst.de>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
 <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
 <20190803064812.GA29746@lst.de>
 <20190806160854.htk67msiyadlrl4m@willie-the-truck>
 <20190806164503.GD1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806164503.GD1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_231406_251793_6B3A7CFB 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Shawn Anastasio <shawn@anastas.io>,
 Catalin Marinas <catalin.marinas@arm.com>, linuxppc-dev@lists.ozlabs.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Michael Ellerman <mpe@ellerman.id.au>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDU6NDU6MDNQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IFdlIGNvdWxkIGhhdmUgdXNlZCBhIGRpZmZlcmVudCBh
cHByb2FjaCwgbWFraW5nIGFsbCBJTyB3cml0ZXMgY29udGFpbgo+IGEgImRyYWluIHdyaXRlIGJ1
ZmZlciIgaW5zdHJ1Y3Rpb24sIGFuZCBtYXAgRE1BIG1lbW9yeSBhcyAiYnVmZmVyZWQiLAo+IGJ1
dCBhcyB0aGVyZSB3ZXJlIG5vIExpbnV4IGJhcnJpZXJzIGRlZmluZWQgdG8gb3JkZXIgbWVtb3J5
IGFjY2Vzc2VzCj4gdG8gRE1BIG1lbW9yeSAoc28sIGZvciBleGFtcGxlLCByaW5nIGJ1ZmZlcnMg
Y2FuIGJlIHVwZGF0ZWQgaW4gdGhlCj4gY29ycmVjdCBvcmRlcikgYmFjayBpbiB0aG9zZSBkYXlz
LCB1c2luZyB0aGUgdW5jYWNoZWQvdW5idWZmZXJlZCBtb2RlCj4gd2FzIHRoZSBzYW5lc3QgYW5k
IG1vc3QgcmVsaWFibGUgc29sdXRpb24uCgpBYnNvbHV0ZWx5IG1ha2VzIHNlbnNlIHNvIGZhci4K
Cj4gPiA+IFRoZSBvdGhlciByZWFsbHkgd2VpcmQgdGhpbmdzIGlzIHRoYXQgaW4gYXJtMzIKPiA+
ID4gcGdwcm90X2RtYWNvaGVyZW50IGluY3VkZXMgdGhlIExfUFRFX1hOIGJpdCwgd2hpY2ggZnJv
bSBteSB1bmRlcnN0YW5kaW5nCj4gPiA+IGlzIHRoZSBuby1leGVjdHVyZSBiaXQsIGJ1dCBwZ3By
b3Rfd3JpdGVjb21iaW5lIGRvZXMgbm90LiAgVGhpcyBzZWVtcyB0bwo+ID4gPiBub3QgdmVyeSB1
bmludGVudGlvbmFsLiAgU28gbWludXMgdGhhdCB0aGUgd2hvbGUgRE1BX0FUVFJfV1JJVEVfQ09N
QtCGTkUKPiA+ID4gc2VlbXMgdG8gYmUgYWJvdXQgZmxhZ2dpbmcgb2xkIGFybSBzcGVjaWZpYyBk
cml2ZXJzIGFzIGhhdmluZyB0aGUgcHJvcGVyCj4gPiA+IGJhcnJpZXJzIGluIHBsYWNlcyBhbmQg
b3RoZXJ3aXNlIGlzIGEgbm8tb3AuCj4gPiAKPiA+IEkgdGhpbmsgaXQgb25seSBtYXR0ZXJzIGZv
ciBBcm12NyBDUFVzLCBidXQgeWVzLCB3ZSBzaG91bGQgcHJvYmFibHkgYmUKPiA+IHNldHRpbmcg
TF9QVEVfWE4gZm9yIGJvdGggb2YgdGhlc2UgbWVtb3J5IHR5cGVzLgo+IAo+IENvbnZlbnRpb25h
bGx5LCBwZ3Byb3Rfd3JpdGVjb21iaW5lKCkgaGFzIG9ubHkgYmVlbiB1c2VkIHRvIGNoYW5nZQo+
IHRoZSBtZW1vcnkgdHlwZSBhbmQgbm90IHRoZSBwZXJtaXNzaW9ucy4gIFNpbmNlIHdyaXRlY29t
YmluZSBtZW1vcnkKPiBpcyBzdGlsbCBjYXBhYmxlIG9mIGJlaW5nIGV4ZWN1dGVkLCBJIGRvbid0
IHNlZSBhbnkgcmVhc29uIHRvIHNldCBYTgo+IGZvciBpdC4KPiAKPiBJZiB0aGUgdXNlciB3aXNo
ZXMgdG8gbW1hcCgpIHVzaW5nIFBST1RfUkVBRHxQUk9UX0VYRUMsIHRoZW4gaXMgdGhlcmUKPiBy
ZWFsbHkgYSByZWFzb24gZm9yIHdyaXRlY29tYmluZSB0byBzZXQgWE4gb3ZlcnJpZGluZyB0aGUg
dXNlcj8KPiAKPiBUaGF0IHNhaWQsIHBncHJvdF93cml0ZWNvbWJpbmUoKSBpcyBtb3N0bHkgdXNl
ZCBmb3IgZnJhbWVidWZmZXJzLCB3aGljaAo+IGFyZ3VhYmx5IHNob3VsZG4ndCBiZSBleGVjdXRh
YmxlIGFueXdheSAtIGJ1dCB3aG8nZCB3YW50IHRvIG1tYXAoKSB0aGUKPiBmcmFtZWJ1ZmZlciB3
aXRoIFBST1RfRVhFQz8KCldlbGwsIEkgd2FzIG1vc3RseSB0YWtpbmcgYWJvdXQgRE1BX0FUVFJf
V1JJVEVfQ09NQklORSwgd2hpY2ggcmVhbGx5CnNob3VsZCBpbmNsdWRlIHRoZSBOWCBiaXQgZXZl
biBpZiBwZ3Byb3Rfd3JpdGVjb21iaW5lIGRvZXNuJ3QsIHJpZ2h0PwoKPiA+ID4gIC0gbWFrZSBE
TUFfQVRUUl9XUklURV9DT01CSU5FIGEgbm8tb3AgYW5kIHNjaGVkdWxlIGl0IGZvciByZW1vdmFs
LAo+ID4gPiAgICB0aHVzIHJlbW92aW5nIHRoZSBsYXN0IGluc3RhbmNlcyBvZiBhcmNoX2RtYV9t
bWFwX3BncHJvdAo+ID4gCj4gPiBBbGwgc291bmRzIGdvb2QgdG8gbWUsIGFsdGhvdWdoIEkgc3Vw
cG9zZSAzMi1iaXQgQXJtIHBsYXRmb3JtcyB3aXRob3V0Cj4gPiBDT05GSUdfQVJNX0RNQV9NRU1f
QlVGRkVSQUJMRSBtYXkgcnVuIGludG8gaXNzdWVzIGlmIERNQV9BVFRSX1dSSVRFX0NPTUJJTkUK
PiA+IGRpc2FwcGVhcnMuIE9ubHkgb25lIHdheSB0byBmaW5kIG91dC4uLgo+IAo+IExvb2tpbmcg
YXQgdGhlIHJlc3VsdHMgb2YgZ3JlcCwgSSB0aGluayBvbmx5IE9NQVAyKyBhbmQgRXh5bm9zIG1h
eSBiZQo+IGFmZmVjdGVkLgoKQXMgeW91IG1lbnRpb25lZCBsYXRlciB3ZSBhbHNvIGhhdmUgdGhl
IGRtYV9hbGxvY193YyB3cmFwcGVyLCBhbmQgYQpzaW5nbGUgaW5zdGFuY2Ugb2YgZG1hX2FsbG9j
X3dyaXRlY29tYmluZS4KCkV4eW5vcyBsb29rcyBsaWtlIHB1cmVseSBBUk0gdjcgZnJvbSBLY29u
ZmlnLCBzbyBpdCBzaG91bGRuJ3QgZXZlbiBiZQphZmZlY3RlZC4KCj4gSG93ZXZlciwgcmVtb3Zp
bmcgd3JpdGVjb21iaW5lIHN1cHBvcnQgZnJvbSB0aGUgRE1BIEFQSSBpcyBnb2luZyB0bwo+IGhh
dmUgYSBodWdlIGltcGFjdCBmb3IgZnJhbWVidWZmZXJzIG9uIGVhcmxpZXIgQVJNcyAtIHRoYXQn
cyB3aGVyZSB3ZQo+IGRvIGV4cGVjdCBmcmFtZWJ1ZmZlcnMgdG8gYmUgbWFwcGVkICJ1bmNhY2hl
ZC9idWZmZXJlZCIgZm9yIHBlcmZvcm1hbmNlCj4gcmVhc29ucyBhbmQgbm90ICJ1bmNhY2hlZC91
bmJ1ZmZlcmVkIi4gIEl0J3MgcXVpdGUgbGl0ZXJhbGx5IHRoZQo+IGRpZmZlcmVuY2UgYmV0d2Vl
biBjb25zb2xlIHNjcm9sbGluZyBiZWluZyB1c2FibGUgYW5kIHRvdGFsbHkgdW51c2FibGUuCj4g
Cj4gR2l2ZW4gd2hhdCBJJ3ZlIHNhaWQgYWJvdmUsIHN3aXRjaGluZyB0byB1c2luZyBidWZmZXJl
ZCBtb2RlIGZvciBub3JtYWwKPiBETUEgbWFwcGluZ3MgaXMgZGF0YS1jb3JydXB0aW5nIHJpc2t5
IC0gYXMgaW4geW91ciBmaWxlc3lzdGVtIGNvdWxkIGdldAo+IGZyaWVkLiAgSSBkb24ndCB0aGlu
ayB3ZSBzaG91bGQgcGxheSBmYXN0IGFuZCBsb29zZSB3aXRoIHBlb3BsZSdzIGRhdGEKPiBieSBy
YW5kb21seSBjaGFuZ2luZyB0aGF0ICJiZWNhdXNlIHdlJ2QgbGlrZSB0byIsIGFuZCBJIGRvbid0
IHNlZSB0aGF0Cj4gc2NyZXdpbmcgdGhlIGNvbnNvbGUgaXMgcmVhbGx5IGFuIG9wdGlvbiBlaXRo
ZXIuCgpPaCB3ZWxsLiAgIElmIHdlIGNhbid0IG1ha2UgZG1hX2FsbG9jX3djIGdlbmVyYWxseSBz
YWZlIEkgZmVhciB3ZSdsbApoYXZlIHRvIGtlZXAgaXQsIGJ1dCBtYXliZSBsaXRlcmFsbHkgbGlt
aXQgaXQgdG8gdGhlIHByZSBBUk0gdjYKcGxhdGZvcm1zLiAgV2hpbGUgcHJldHR5IG11Y2ggYWxs
IGNhbGxlcnMgc2VlbXMgcGxhdGZvcm0gc3BlY2lmaWMsCnRoZXJlIGFjdHVhbGx5IGFyZSBhIGRl
Y2VudCBudW1iZXIgdGhhdCBjYW4gb25seSB3b3JrIG9uIEFSTSB2NyBvcgphcm02NC4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
