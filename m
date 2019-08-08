Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA2785C37
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liQhHOcm9uPsyVHuc584FZA0+nC35RD2OXZV+rh7LwM=; b=MLMr6f+V5oFFyS
	kUbgwRm6AmTGERMy8c0Ul+sB+0Ha5VEv//1eYE9o64jkkHTPfJnhEv81+wYNnUMGrk2EVU5lm54rA
	WgtOSnf7hgUC1QbGQlxIuRF2MEepmZd6iel5EiR1Zh0gONvtrmkHd87JUNV3DQisM3p1uQw3Kba+L
	aU1z4ZYgKA9Oi3yldjKfNZgrfGtBnFLJrHIqG1HwOpzI6MSTPPyVYz/ytqJH7ax5eMQ1jgxA12wsQ
	1ac+PProYFX7QX4FFZXhB/LStnVTblTlqOH0UD8eKhjO6UhQCxv+dtg7vmdH8/skpPDz2A5tSONA0
	h1w+07Lln+KDic1/vHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdK2-0004sU-3r; Thu, 08 Aug 2019 07:58:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdJf-0004s4-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:58:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3D39168B02; Thu,  8 Aug 2019 09:58:27 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:58:27 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808075827.GD30308@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807164958.GA44765@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005831_636476_6FEFBD2F 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDU6NDk6NTlQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IEknbSBmYWlybHkgY29uZmlkZW50IHRoYXQgdGhlIGxpbmVhci9kaXJlY3QgbWFwIGNh
Y2hlYWJsZSBhbGlhcyBpcyBub3QKPiB0b3JuIGRvd24gd2hlbiBwYWdlcyBhcmUgYWxsb2NhdGVk
LiBUaGUgZ25lZXJpYyBwYWdlIGFsbG9jYXRpb24gY29kZQo+IGRvZXNuJ3QgZG8gc28sIGFuZCBJ
IHNlZSBub3RoaW5nIHRoZSBzaG1lbSBjb2RlIHRvIGRvIHNvLgoKSXQgaXMgbm90IHRvcm4gZG93
biBhbnl3aGVyZS4KCj4gRm9yIGFybTY0LCB3ZSBjYW4gdGVhciBkb3duIHBvcnRpb25zIG9mIHRo
ZSBsaW5lYXIgbWFwLCBidXQgdGhhdCBoYXMgdG8KPiBiZSBkb25lIGV4cGxpY2l0bHksIGFuZCB0
aGlzIGlzIG9ubHkgcG9zc2libGUgd2hlbiB1c2luZyByb2RhdGFfZnVsbC4gSWYKPiBub3QgdXNp
bmcgcm9kYXRhX2Z1bGwsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkeW5hbWljYWxseSB0ZWFyIGRv
d24gdGhlCj4gY2FjaGVhYmxlIGFsaWFzLgoKSW50ZXJlc3RpbmcuICBGb3IgdGhpcyBvciBuZXh0
IG1lcmdlIHdpbmRvdyBJIHBsYW4gdG8gYWRkIHN1cHBvcnQgdG8gdGhlCmdlbmVyaWMgRE1BIGNv
ZGUgdG8gcmVtYXAgcGFnZXMgYXMgdW5jYWNoYWJsZSBpbiBwbGFjZSBiYXNlZCBvbiB0aGUKb3Bl
bnJpc2MgY29kZS4gIEHRlSBmYXIgYXMgSSBjYW4gdGVsbCB0aGUgcmVxdWlyZW1lbnQgZm9yIHRo
YXQgaXMKYmFzaWNhbGx5IGp1c3QgdGhhdCB0aGUga2VybmVsIGRpcmVjdCBtYXBwaW5nIGRvZXNu
J3QgdXNlIFBNRCBvciBiaWdnZXIKbWFwcGluZyBzbyB0aGF0IGl0IHN1cHBvcnRzIGNoYW5naW5n
IHByb3RlY3Rpb24gYml0cyBvbiBhIHBlci1QVEUgYmFzaXMuCklzIHRoYXQgdGhlIGNhc2Ugd2l0
aCBhcm02NCArIHJvZGF0YV9mdWxsPwoKPiA+IE15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBhIGNh
Y2hlYWJsZSBhbGlhcyBpcyAib2siLCB3aXRoIHNvbWUKPiA+IGNhdmVhdHMuLiBpZS4gdGhhdCB0
aGUgY2FjaGVhYmxlIGFsaWFzIGlzIG5vdCBhY2Nlc3NlZC4gIAo+IAo+IFVuZm9ydHVuYXRlbHks
IHRoYXQgaXMgbm90IHRydWUuIFlvdSdsbCBvZnRlbiBnZXQgYXdheSB3aXRoIGl0IGluCj4gcHJh
Y3RpY2UsIGJ1dCB0aGF0J3MgYSBtYXR0ZXIgb2YgcHJvYmFiaWxpdHkgcmF0aGVyIHRoYW4gYSBn
dWFyYW50ZWUuCj4gCj4gWW91ICBjYW5ub3QgcHJldmVudCBhIENQVSBmcm9tIGFjY2Vzc2luZyBh
IFZBIGFyYml0cmFyaWx5IChlLmcuIGFzIHRoZQo+IHJlc3VsdCBvZiB3aWxkIHNwZWN1bGF0aW9u
KS4gVGhlIEFSTSBBUk0gKEFSTSBEREkgMDQ4N0UuYSkgcG9pbnRzIHRoaXMKPiBvdXQgZXhwbGlj
aXRseToKCldlbGwsIGlmIHdlIHdhbnQgdG8gZml4IHRoaXMgcHJvcGVybHkgd2UnbGwgaGF2ZSB0
byByZW1hcCBpbiBwbGFjZQpmb3IgZG1hX2FsbG9jX2NvaGVyZW50IGFuZCBmcmllbmRzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
