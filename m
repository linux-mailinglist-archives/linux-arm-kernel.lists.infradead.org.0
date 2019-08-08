Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC5885FB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UuvP8NjQy1rvfGI8UWBNvFwoGDaQK92hVgoVnyy5ZU=; b=upeuFGCo6+HmkD
	zrSkim96iSiQKl79MLeEMXBVghC8meqZHd5Pu/2bB3RhsfoBiAMTWJBQX54eBqUR9I/bwvfRiJDf8
	Ce39Kyk2/ajdm50w7qGuXjTMTx6ldFXRqHxf2tsfADFzY/iiJzobcDQ1xwX9PqWB4DmBHMvQ/4VD9
	6NzhFMIk+/XIe3zJE6cvVhCnIHx/bjrHhtnU5ihrqkvSecrnc4y7jQcRZBOOLBBq+TR7iVxXZkbsG
	1sqsRYuvkXdyvdByi94J7OBbuHoOiROsSAmzofXtFp+aDy53P8U8a7t/UWDyCAlZRCYLv+tlp9YkS
	sahhByB2pNvdJHk6xC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfjZ-00048c-Ca; Thu, 08 Aug 2019 10:33:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfjE-00048G-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:33:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DB142173E;
 Thu,  8 Aug 2019 10:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565260383;
 bh=FQ6+FsASdUdEGiZDnohQHtyEdIqjQg4sf53ogeYronU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i0cpkV6yxp9rMymSHvxjKf0jsHk3h+WHG95kn4WWQPwZZAhvUGd7+TO3nZ23eheGH
 A1Bc1VB+y4plVRkxLuTagWC3CwLI59ZuuyCt8w7z6tlpdftzRnlxyD9l5Azt8tFrEI
 fWGfWW3kB9p8pDXuOdw6q+Z0Q4YvrTZy9VrwpRPc=
Date: Thu, 8 Aug 2019 11:32:57 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808103257.4tqpip7ty4gf7eqf@willie-the-truck>
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
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033304_091386_6EE2BB93 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
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
Y3JlYXRpb24gY29kZS4KCkZXSVcsIHdlIG1hZGUgcm9kYXRhX2Z1bGwgdGhlIGRlZmF1bHQgYSBj
b3VwbGUgb2YgcmVsZWFzZXMgYWdvLCBzbyBpZgpzb2x2aW5nIHRoZSBjYWNoZWFibGUgYWxpYXMg
Zm9yIG5vbi1jYWNoZWFibGUgRE1BIGJ1ZmZlcnMgcmVxdWlyZXMgdGhpcwp0byBiZSBwcmVzZW50
LCB0aGVuIHdlIGNvdWxkIHByb2JhYmx5IGp1c3QgcmVmdXNlIHRvIHByb2JlIG5vbi1jb2hlcmVu
dApETUEtY2FwYWJsZSBkZXZpY2VzIG9uIHN5c3RlbXMgd2hlcmUgcm9kYXRhX2Z1bGwgaGFzIGJl
ZW4gZGlzYWJsZWQuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
