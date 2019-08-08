Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF4B85F79
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCeGOzNArNyL/NA/aUbS+/58KESMc8WouhZCWWiC3KQ=; b=oB4+ryP4g/6mnk
	DPuL5A8Fo3++E0ZOGwB9qAQXi6TNGc0iJWz19La42WKj1ES/xm7TupGNnQZTNRmc68GR+1vUfRd9P
	fJeEAt9J6NxSOo2TattHaO92wyTh+usD/05KcCQ6YNjIMLaDS+vwdM+3OToVfcdLVr/a4kFjS4zqO
	+7TjHHlMfIEatanIldF9JmAG1LHLvFwvUuqgq95QgyIJd2+gefJ7EBFKxaCZCxkE0/fzH+cOEVkgJ
	FKI2xEkC21XFs53PBRRJx+XYV6LKU8Ue8QpjvcyysHXkhraYZuzNuPS/h1pjMKKDoJs42CabJZLaj
	sBMudknBc5LjVOb3Eubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfb4-00088b-HQ; Thu, 08 Aug 2019 10:24:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfah-00088G-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:24:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E5E628;
 Thu,  8 Aug 2019 03:24:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C27C3F694;
 Thu,  8 Aug 2019 03:24:12 -0700 (PDT)
Date: Thu, 8 Aug 2019 11:24:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808102410.GB46901@lakrids.cambridge.arm.com>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
 <20190808075827.GD30308@lst.de>
 <20190808102053.GA46901@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808102053.GA46901@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_032415_169703_01711665 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMTE6MjA6NTNBTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIFRodSwgQXVnIDA4LCAyMDE5IGF0IDA5OjU4OjI3QU0gKzAyMDAsIENocmlzdG9w
aCBIZWxsd2lnIHdyb3RlOgo+ID4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDU6NDk6NTlQTSAr
MDEwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+ID4gPiBGb3IgYXJtNjQsIHdlIGNhbiB0ZWFyIGRv
d24gcG9ydGlvbnMgb2YgdGhlIGxpbmVhciBtYXAsIGJ1dCB0aGF0IGhhcyB0bwo+ID4gPiBiZSBk
b25lIGV4cGxpY2l0bHksIGFuZCB0aGlzIGlzIG9ubHkgcG9zc2libGUgd2hlbiB1c2luZyByb2Rh
dGFfZnVsbC4gSWYKPiA+ID4gbm90IHVzaW5nIHJvZGF0YV9mdWxsLCBpdCBpcyBub3QgcG9zc2li
bGUgdG8gZHluYW1pY2FsbHkgdGVhciBkb3duIHRoZQo+ID4gPiBjYWNoZWFibGUgYWxpYXMuCj4g
PiAKPiA+IEludGVyZXN0aW5nLiAgRm9yIHRoaXMgb3IgbmV4dCBtZXJnZSB3aW5kb3cgSSBwbGFu
IHRvIGFkZCBzdXBwb3J0IHRvIHRoZQo+ID4gZ2VuZXJpYyBETUEgY29kZSB0byByZW1hcCBwYWdl
cyBhcyB1bmNhY2hhYmxlIGluIHBsYWNlIGJhc2VkIG9uIHRoZQo+ID4gb3BlbnJpc2MgY29kZS4g
IEHRlSBmYXIgYXMgSSBjYW4gdGVsbCB0aGUgcmVxdWlyZW1lbnQgZm9yIHRoYXQgaXMKPiA+IGJh
c2ljYWxseSBqdXN0IHRoYXQgdGhlIGtlcm5lbCBkaXJlY3QgbWFwcGluZyBkb2Vzbid0IHVzZSBQ
TUQgb3IgYmlnZ2VyCj4gPiBtYXBwaW5nIHNvIHRoYXQgaXQgc3VwcG9ydHMgY2hhbmdpbmcgcHJv
dGVjdGlvbiBiaXRzIG9uIGEgcGVyLVBURSBiYXNpcy4KPiA+IElzIHRoYXQgdGhlIGNhc2Ugd2l0
aCBhcm02NCArIHJvZGF0YV9mdWxsPwo+IAo+IFllcywgd2l0aCB0aGUgYWRkZWQgY2FzZSB0aGF0
IG9uIGFybTY0IHdlIGNhbiBhbHNvIGhhdmUgY29udGlndW91cwo+IGVudHJpZXMgYXQgdGhlIFBU
RSBsZXZlbCwgd2hpY2ggd2UgYWxzbyBoYXZlIHRvIGRpc2FibGUuCj4gCj4gT3VyIGtlcm5lbCBw
YWdlIHRhYmxlIGNyZWF0aW9uIGNvZGUgZG9lcyB0aGF0IGZvciByb2RhdGFfZnVsbCBvcgo+IERF
QlVHX1BBR0VBTExPQy4gU2VlIGFyY2gvYXJtNjQvbW11LmMsIGluIG1hcF9tZW0oKSwgd2hlcmUg
d2UgcGFzcwo+IE5PX3tCTE9DSyxDT05UfV9NQVBQSU5HUyBkb3duIHRvIG91ciBwYWdldGFibGUg
Y3JlYXRpb24gY29kZS4KCldob29wcywgdGhhdCBzaG91bGQgYmU6IGFyY2gvYXJtNjQvbW0vbW11
LmMuCgpNYXJrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
