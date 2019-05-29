Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134742E36A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 19:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ovdLIQgQLBZxFIig2ZRFWh3R99Trt4gCJ9BTYvL01so=; b=ZkZDyH4KmJM4NrBgHgWH8OxkW
	/dMZHHNmrW/5AazwkC/e5HbzEzJE6wVSRjadCKel10jAbQ+JnIeEeZkbXGg91kMVPlw060jJoAqjd
	Rffe0IJiRWiBpjVOHqKrZJBavRfViVUeYNTPJPgA6oZXoINoGMOPfdko1meEcuvyKrgmz69RZSGwS
	3j3DFtSA9YiY5TOg2U2Xj76q6U7KE68dQmnBfAoQILPAhJOmZmLCNBNNZDxyzhj7MATgJ2dGE43BR
	jiTiedAR8yAbE+BiC0sFN4rcKxpFfGbpA6n/SkvhZS7WOzGjHwXDTVnG45+AH9h4VotY0aqw/quv3
	DCom0eX0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2XB-0004ft-63; Wed, 29 May 2019 17:38:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2X4-0004fL-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 17:38:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A0CF341;
 Wed, 29 May 2019 10:38:33 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8DAC3F5AF;
 Wed, 29 May 2019 10:38:30 -0700 (PDT)
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4ff02295-6c34-791b-49f4-6558a92ad7a3@arm.com>
Date: Wed, 29 May 2019 18:38:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_103834_440547_63E09302 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDUvMjAxOSAxNjowOSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+IE9uIFR1ZSwgMjEgTWF5
IDIwMTkgYXQgMTg6MTEsIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdy
b3RlOgo+Pgo+IFtzbmlwXQo+PiBbICAzNDUuMjA0ODEzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
bW11IGlycSBzdGF0dXM9MQo+PiBbICAzNDUuMjA5NjE3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
VW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4+IDB4MDAwMDAwMDAwMjQwMDQwMAo+
IAo+ICBGcm9tIHdoYXQgSSBjYW4gc2VlIGhlcmUsIDB4MDAwMDAwMDAwMjQwMDQwMCBwb2ludHMg
dG8gdGhlIGZpcnN0IGJ5dGUKPiBvZiB0aGUgZmlyc3Qgc3VibWl0dGVkIGpvYiBkZXNjcmlwdG9y
Lgo+IAo+IFNvIG1hcHBpbmcgYnVmZmVycyBmb3IgdGhlIEdQVSBkb2Vzbid0IHNlZW0gdG8gYmUg
d29ya2luZyBhdCBhbGwgb24KPiA2NC1iaXQgVC03NjAuCj4gCj4gU3RldmVuLCBSb2JpbiwgZG8g
eW91IGhhdmUgYW55IGlkZWEgb2Ygd2h5IHRoaXMgY291bGQgYmU/CgpJIHRyaWVkIHJvbGxpbmcg
YmFjayB0byB0aGUgb2xkIHBhbmZyb3N0L25vbmRybSBzaGltLCBhbmQgaXQgd29ya3MgZmluZSAK
d2l0aCBrYmFzZSwgYW5kIEkgYWxzbyBmb3VuZCB0aGF0IFQtODIwIGZhbGxzIG92ZXIgaW4gdGhl
IGV4YWN0IHNhbWUgCm1hbm5lciwgc28gdGhlIGZhY3QgdGhhdCBpdCBzZWVtZWQgdG8gYmUgY29t
bW9uIHRvIHRoZSBzbWFsbGVyIDMzLWJpdCAKZGVzaWducyByYXRoZXIgdGhhbiBhbnl0aGluZyB0
byBkbyB3aXRoIHRoZSBvdGhlciAKam9iX2Rlc2NyaXB0b3Jfc2l6ZS92NC92NSBjb21wbGljYXRp
b24gdHVybmVkIG91dCB0byBiZSB0ZWxsaW5nLgoKWyBhcyBhbiBhc2lkZSwgYXJlIDY0LWJpdCBq
b2JzIGFjdHVhbGx5IGtub3duIG5vdCB0byB3b3JrIG9uIHY0IEdQVXMsIG9yIAppcyBpdCBqdXN0
IHRoYXQgbm9ib2R5J3MgeWV0IG9ic2VydmVkIGEgNjQtYml0IGJsb2IgZHJpdmluZyBvbmU/IF0K
Ckxvbmcgc3Rvcnkgc2hvcnQsIGl0IGFwcGVhcnMgdGhhdCAnTWFsaSBMUEFFJyBpcyBhbHNvIGxh
Y2tpbmcgdGhlIHN0YXJ0IApsZXZlbCBub3Rpb24gb2YgVk1TQSwgYW5kIGV4cGVjdHMgYSBmdWxs
IDQtbGV2ZWwgdGFibGUgZXZlbiBmb3IgPDQwIGJpdHMgCndoZW4gbGV2ZWwgMCBlZmZlY3RpdmVs
eSByZWR1bmRhbnQuIFRodXMgd2Fsa2luZyB0aGUgMy1sZXZlbCB0YWJsZSB0aGF0IAppby1wZ3Rh
YmxlIGNvbWVzIGJhY2sgd2l0aCBlbmRzIHVwIGdvaW5nIHdpbGRseSB3cm9uZy4gVGhlIGhhY2sg
YmVsb3cgCnNlZW1zIHRvIGRvIHRoZSBqb2IgZm9yIG1lOyBpZiBDbMOpbWVudCBjYW4gY29uZmly
bSAob24gVC03MjAgeW91J2xsIApzdGlsbCBuZWVkIHRoZSB1c2Vyc3BhY2UgaGFjayB0byBmb3Jj
ZSAzMi1iaXQgam9icyBhcyB3ZWxsKSB0aGVuIEkgdGhpbmsgCkknbGwgY29vayB1cCBhIHByb3Bl
ciByZWZhY3RvcmluZyBvZiB0aGUgYWxsb2NhdG9yIHRvIHB1dCB0aGluZ3MgcmlnaHQuCgpSb2Jp
bi4KCgotLS0tLT44LS0tLS0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1h
cm0uYyBiL2RyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYwppbmRleCA1NDY5NjhkOGEzNDku
LmYyOWRhNmU4ZGMwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9pb21tdS9pby1wZ3RhYmxlLWFybS5j
CisrKyBiL2RyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYwpAQCAtMTAyMywxMiArMTAyMywx
NCBAQCBhcm1fbWFsaV9scGFlX2FsbG9jX3BndGFibGUoc3RydWN0IAppb19wZ3RhYmxlX2NmZyAq
Y2ZnLCB2b2lkICpjb29raWUpCiAgCWlvcCA9IGFybV82NF9scGFlX2FsbG9jX3BndGFibGVfczEo
Y2ZnLCBjb29raWUpOwogIAlpZiAoaW9wKSB7CiAgCQl1NjQgbWFpciwgdHRicjsKKwkJc3RydWN0
IGFybV9scGFlX2lvX3BndGFibGUgKmRhdGEgPSBpb19wZ3RhYmxlX29wc190b19kYXRhKCZpb3At
Pm9wcyk7CgorCQlkYXRhLT5sZXZlbHMgPSA0OwogIAkJLyogQ29weSB2YWx1ZXMgYXMgdW5pb24g
ZmllbGRzIG92ZXJsYXAgKi8KICAJCW1haXIgPSBjZmctPmFybV9scGFlX3MxX2NmZy5tYWlyWzBd
OwogIAkJdHRiciA9IGNmZy0+YXJtX2xwYWVfczFfY2ZnLnR0YnJbMF07CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
