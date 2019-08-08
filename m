Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C7385F6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIEiKimuCYGIiDuJnlmMDQW6OI4O3BrwMSW4ZwykJ1k=; b=XISLhZcvJ0gaVx
	d5bRuXrlykjrJi3HEIdjaWc11eDkIahZvBF+FPbf/oGoXzfRsfSo3xe+KS/pxVVcFqi+KI8QJ7oTs
	aBHJqQrRf49SuUXtnzAh3fmljgb5MMI35izmQtQphwZSE4nPof+K2qVmKAa5VLS5XQ38xoXhAfmrS
	GAGJ0JGVcYMwPTgVRE7HbMf+7yapx06GVEDT5+1PIq70TfGfBse23eIs6H1b1gSCEJhgTCOFNG86f
	hD/FNtmPl4MXo2dDaaBTGi/OFpqtdidEoCUG2a3MAqYibtgEJChtsMLDBTq3z+ICJE2SQcI6XcA6R
	SRxWb+/NT0BIKkcPUZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfYB-0007Ye-5G; Thu, 08 Aug 2019 10:21:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfXZ-0007YG-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:21:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EF2428;
 Thu,  8 Aug 2019 03:21:00 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37F123F694;
 Thu,  8 Aug 2019 03:20:58 -0700 (PDT)
Date: Thu, 8 Aug 2019 11:20:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808102053.GA46901@lakrids.cambridge.arm.com>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
 <20190808075827.GD30308@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808075827.GD30308@lst.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_032101_433201_49B7019F 
X-CRM114-Status: GOOD (  16.14  )
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

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDk6NTg6MjdBTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDU6NDk6NTlQTSArMDEwMCwgTWFy
ayBSdXRsYW5kIHdyb3RlOgo+ID4gRm9yIGFybTY0LCB3ZSBjYW4gdGVhciBkb3duIHBvcnRpb25z
IG9mIHRoZSBsaW5lYXIgbWFwLCBidXQgdGhhdCBoYXMgdG8KPiA+IGJlIGRvbmUgZXhwbGljaXRs
eSwgYW5kIHRoaXMgaXMgb25seSBwb3NzaWJsZSB3aGVuIHVzaW5nIHJvZGF0YV9mdWxsLiBJZgo+
ID4gbm90IHVzaW5nIHJvZGF0YV9mdWxsLCBpdCBpcyBub3QgcG9zc2libGUgdG8gZHluYW1pY2Fs
bHkgdGVhciBkb3duIHRoZQo+ID4gY2FjaGVhYmxlIGFsaWFzLgo+IAo+IEludGVyZXN0aW5nLiAg
Rm9yIHRoaXMgb3IgbmV4dCBtZXJnZSB3aW5kb3cgSSBwbGFuIHRvIGFkZCBzdXBwb3J0IHRvIHRo
ZQo+IGdlbmVyaWMgRE1BIGNvZGUgdG8gcmVtYXAgcGFnZXMgYXMgdW5jYWNoYWJsZSBpbiBwbGFj
ZSBiYXNlZCBvbiB0aGUKPiBvcGVucmlzYyBjb2RlLiAgQdGVIGZhciBhcyBJIGNhbiB0ZWxsIHRo
ZSByZXF1aXJlbWVudCBmb3IgdGhhdCBpcwo+IGJhc2ljYWxseSBqdXN0IHRoYXQgdGhlIGtlcm5l
bCBkaXJlY3QgbWFwcGluZyBkb2Vzbid0IHVzZSBQTUQgb3IgYmlnZ2VyCj4gbWFwcGluZyBzbyB0
aGF0IGl0IHN1cHBvcnRzIGNoYW5naW5nIHByb3RlY3Rpb24gYml0cyBvbiBhIHBlci1QVEUgYmFz
aXMuCj4gSXMgdGhhdCB0aGUgY2FzZSB3aXRoIGFybTY0ICsgcm9kYXRhX2Z1bGw/CgpZZXMsIHdp
dGggdGhlIGFkZGVkIGNhc2UgdGhhdCBvbiBhcm02NCB3ZSBjYW4gYWxzbyBoYXZlIGNvbnRpZ3Vv
dXMKZW50cmllcyBhdCB0aGUgUFRFIGxldmVsLCB3aGljaCB3ZSBhbHNvIGhhdmUgdG8gZGlzYWJs
ZS4KCk91ciBrZXJuZWwgcGFnZSB0YWJsZSBjcmVhdGlvbiBjb2RlIGRvZXMgdGhhdCBmb3Igcm9k
YXRhX2Z1bGwgb3IKREVCVUdfUEFHRUFMTE9DLiBTZWUgYXJjaC9hcm02NC9tbXUuYywgaW4gbWFw
X21lbSgpLCB3aGVyZSB3ZSBwYXNzCk5PX3tCTE9DSyxDT05UfV9NQVBQSU5HUyBkb3duIHRvIG91
ciBwYWdldGFibGUgY3JlYXRpb24gY29kZS4KClRoYW5rcywKTWFyay4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
