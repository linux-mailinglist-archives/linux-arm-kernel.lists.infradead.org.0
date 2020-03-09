Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437D17DB4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2gVpzfacn8xfbfqHhFNtIygAdWcbEalLAtGxtRFoOPw=; b=QLP3hp7VCd9UT7R1WOLq+FRGy
	jJe9I5PbCaGHbD2OcnzcIiTT/LCbZcyObsEFcExaW3oOJR4OnGxPRsFFqpVbPrJMEpOBNGRSWnwhU
	fb0GKON822syD8YdfnWqxvxc8alefYqMj8vFzSU/WNQBgzavA5bvpXI5dTBKTrIaENS9qEUh7DM7o
	hYLG8T5dBGkiBRQRtiVPkQ2T7qlHqYUB6uhdkxMdYTVFL9KnRxdd7M8p1z/8TrJx1fXdK0f3mbLFI
	PZFemE1lmrzv0yJgnV4KXS/2TbNnqpDyuKlKaaaW50l4Ttbd5+t7cZ3GyTqA8HfxsYBpIe0hPdRLe
	9Cc4O3osw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDyO-0007sO-WA; Mon, 09 Mar 2020 08:41:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDyH-0007rM-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:41:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BEA11FB;
 Mon,  9 Mar 2020 01:41:05 -0700 (PDT)
Received: from [10.37.12.74] (unknown [10.37.12.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 454DD3F6CF;
 Mon,  9 Mar 2020 01:41:02 -0700 (PDT)
Subject: Re: [PATCH] drm/exynos: Fix memory leak and release IOMMU mapping
 structures
To: Inki Dae <inki.dae@samsung.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <CGME20200304220104epcas1p2d65f8ab31df6aa5373787b695b14f8ff@epcas1p2.samsung.com>
 <20200304220022.8003-1-lukasz.luba@arm.com>
 <c69c1163-a75b-6667-1979-f3aa356dc0b4@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <7962c9f2-e85d-9f9b-f442-c4a5b387ca44@arm.com>
Date: Mon, 9 Mar 2020 08:41:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c69c1163-a75b-6667-1979-f3aa356dc0b4@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_014109_388459_F14F826B 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: jy0922.shim@samsung.com, b.zolnierkie@samsung.com, airlied@linux.ie,
 sw0312.kim@samsung.com, krzk@kernel.org, a.hajda@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, daniel@ffwll.ch,
 Dietmar.Eggemann@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSW5raSwKCk9uIDMvOS8yMCAxMjo0NSBBTSwgSW5raSBEYWUgd3JvdGU6Cj4gSGkgTHVrYXN6
LAo+IAo+IDIwLiAzLiA1LiDsmKTsoIQgNzowMOyXkCBMdWthc3ogTHViYSDsnbQo6rCAKSDsk7Qg
6riAOgo+PiBUaGVyZSBpcyBhIG1lbW9yeSBsZWFrIHdoaWNoIGxlZnQgc29tZSBvYmplY3RzIG5v
dCBmcmVlZC4gVGhlIHJlZmVyZW5jZQo+PiBjb3VudGVyIG9mIG1hcHBpbmc6ICdtYXBwaW5nLT5r
cmVmJyB3YXMgMiB3aGVuIGNhbGxpbmcKPj4gYXJtX2lvbW11X2RldGFjaF9kZXZpY2UoKSwgc28g
dGhlIHJlbGVhc2VfaW9tbXVfbWFwcGluZygpIHdvbid0IGJlIGNhbGxlZC4KPj4gU2luY2UgdGhl
IG9sZCBtYXBwaW5nIHN0cnVjdHVyZSBpcyBub3QgZ29pbmcgdG8gYmUgdXNlZCBhbnkgbW9yZSAo
YmVjYXVzZQo+PiBpdCBpcyBkZXRhY2hlZCBhbmQgbmV3IG9uZSBhdHRhY2hlZCksIGNhbGwgYXJt
X2lvbW11X3JlbGVhc2VfbWFwcGluZygpCj4+IHRvIHRyaWdnZXIgY2xlYW51cC4KPj4KPj4gRm91
bmQgdXNpbmcga21lbWxlYWsgZGV0ZWN0b3IsIHRoZSBvdXRwdXQ6Cj4+Cgpbc25pcF0KCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsdWthc3oubHViYUBhcm0uY29tPgo+PiAtLS0K
Pj4KPj4gSGkgYWxsLAo+Pgo+PiBJIGhhdmUgZGlzY292ZXJlZCB0aGlzIGlzc3VlIG9uIE9kcm9p
ZFhVNCB3aGlsZSBydW5uaW5nIHNvbWUgc3RyZXNzIHRlc3RzCj4+IGZvciB1cGNvbWluZyBFbmVy
Z3kgTW9kZWwuIFRvIHJlcHJvZHVjZSBpdCwga2VybmVsIG11c3QgYmUgY29tcGlsZWQgd2l0aAo+
PiBERUJVR19LTUVNTEVBSy4gV2hlbiB0aGUgYm9vdCBoYXMgZmluaXNoZWQsIHR5cGU6Cj4+ICMg
ZWNobyBzY2FuID4gL3N5cy9rZXJuZWwvZGVidWcva21lbWxlYWsKPj4gIyBjYXQgL3N5cy9rZXJu
ZWwvZGVidWcva21lbWxlYWsKPj4gWW91IHNob3VsZCBleHBlY3Qgc2ltaWxhciBvdXRwdXQgdG8g
dGhlIG9uZSBmcm9tIHRoZSBjb21taXQgbWVzc2FnZS4KPj4KPj4gSSBkb24ndCBrbm93IGlmIGl0
IHNob3VsZCBnbyB2aWEgc3RhYmxlIHRyZWUgYXMgd2VsbC4gSSBjYW4gcmVzZW5kIHdpdGggQ0MK
Pj4gc3RhYmxlLCBpZiB0aGVyZSBpcyBhIG5lZWQuCj4gCj4gVGhhbmtzIGZvciBmaXh1cC4gQlRX
LCBhcyB5b3UgY29tbWVudGVkIG9uIE1hcmVrJ3MgcGF0Y2ggdGhyZWFkLCB3aXRoIE1hcmVrJ3Mg
cGF0Y2ggdGhlIG1lbW9yeSBsZWFrIHdpbGwgYmUgc29sdmVkLgo+IERvIHlvdSB3YW50IE1hcmVr
IHRvIHJld29yayBoaXMgcGF0Y2ggb24gdG9wIG9mIHlvdXIgcGF0Y2ggb3IgYXJlIHlvdSBvayBt
ZSB0byBwaWNrIHVwIG9ubHkgTWFyZWsncyBvbmU/CgpQbGVhc2UgZHJvcCB0aGlzIG9uZSBhbmQg
YXBwbHkgb25seSBNYXJlaydzIHBhdGNoLCBpdCBmaXhlcyB0aGUgaXNzdWUuCkkgZGlkbid0IGtu
b3cgdGhhdCBoZSB3YXMgd29ya2luZyBvbiBzaW1pbGFyIHN0dWZmLgoKPiAKPiBNYXJlaydzIHBh
dGNoIGlzIGNvbmZsaWN0ZWQgd2l0aCB5b3VyIG9uZS4KPiAKPiBUaGFua3MsCj4gSW5raSBEYWUK
ClJlZ2FyZHMsCkx1a2FzegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
