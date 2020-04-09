Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED281A321F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=me/Kc1z4b7+cPe8yVgtcrHeAVJK7Lv9AdAF7xS6ZzQc=; b=IYljhn99652haGAKHdgiTb9i1
	ysM2yIozRgN1tatM0aLO5KeloGJ10jmYsdVPrkUFghm6pkWmlLDPSkJUBgg3N9dlhLbJ+aewciUlc
	e2Ax4jRq35iUodreclE35XxH8WeVYlrWPkFCbwclKQueAKep0nDDUJQS18dth5O75JxmZO/bQPNgG
	5GMngSbed9kFuaUWiMf0uo2QG3pFC1MJPKt5F/tktQIyLJSpLg8A55e+BegxRmJBzUQdPEGFhFLds
	gNQMztkJZnlROK/AMfdEuiq0AoQrj0ZM8OcvFxQKaSHh3Y9auudwLA2X8rtquiwDbeCG+nOaZQNyF
	2ggL99nwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTt9-0007qQ-2u; Thu, 09 Apr 2020 09:54:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTt2-0007pv-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:54:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6183431B;
 Thu,  9 Apr 2020 02:54:15 -0700 (PDT)
Received: from [10.57.55.221] (unknown [10.57.55.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 106B33F73D;
 Thu,  9 Apr 2020 02:54:13 -0700 (PDT)
Subject: Re: [RFC PATCH] perf/smmuv3: Fix shared interrupt handling
To: John Garry <john.garry@huawei.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
References: <d73dd8c3579fbf713d6215317404549aede8ad2d.1586363449.git.robin.murphy@arm.com>
 <34dd7c2e-b6db-684f-f0a2-73f2e6951308@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6bd103f2-1034-60f0-53a3-17162400a452@arm.com>
Date: Thu, 9 Apr 2020 10:54:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <34dd7c2e-b6db-684f-f0a2-73f2e6951308@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_025416_326821_D6E300E2 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "harb@amperecomputing.com" <harb@amperecomputing.com>,
 "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0wOSA4OjAyIGFtLCBKb2huIEdhcnJ5IHdyb3RlOgo+IE9uIDA4LzA0LzIwMjAg
MTc6NDksIFJvYmluIE11cnBoeSB3cm90ZToKPj4gSVJRRl9TSEFSRUQgaXMgZGFuZ2Vyb3VzLCBz
aW5jZSBpdCBhbGxvd3Mgb3RoZXIgYWdlbnRzIHRvIHJldGFyZ2V0IHRoZQo+PiBJUlEncyBhZmZp
bml0eSB3aXRob3V0IG1pZ3JhdGluZyBQTVUgY29udGV4dHMgdG8gbWF0Y2gsIGJyZWFraW5nIHRo
ZSB3YXkKPj4gaW4gd2hpY2ggcGVyZiBtYW5hZ2VzIG11dHVhbCBleGNsdXNpb24gZm9yIGFjY2Vz
c2luZyBldmVudHMuIEFsdGhvdWdoCj4+IHRoaXMgbWVhbnMgaXQncyBub3QgcmVhbGlzdGljYWxs
eSBwb3NzaWJsZSB0byBzdXBwb3J0IFBNVSBJUlFzIGJlaW5nCj4+IHNoYXJlZCB3aXRoIG90aGVy
IGRyaXZlcnMsIHdlICpjYW4qIGhhbmRsZSBzaGFyaW5nIGJldHdlZW4gbXVsdGlwbGUgUE1VCj4+
IGluc3RhbmNlcyB3aXRoIHNvbWUgZXhwbGljaXQgYWZmaW5pdHkgYm9va2tlZXBpbmcgYW5kIG1h
bnVhbCBpbnRlcnJ1cHQKPj4gbXVsdGlwbGV4aW5nLgo+IAo+IEhpIFJvYmluLAo+IAo+IE91dCBv
ZiBjdXJpb3NpdHksIGRvIHdlIGV2ZW4gbmVlZCB0byBzdXBwb3J0IHNoYXJlZCBpbnRlcnJ1cHRz
IGZvciBhbnkgCj4gaW1wbGVtZW50YXRpb25zIHRvZGF5PwoKTm90IHRoYXQgSSBrbm93IG9mLCBi
dXQgd2UgbmVlZCB0aGUgbWl0aWdhdGlvbiBpbiBnZW5lcmFsIGZvciBmdXR1cmUgCmRyaXZlcnNb
MV0sIGFuZCBzaW5jZSB0aGlzIG9uZSBhbHJlYWR5IGhhZCBhIHN1c3BpY2lvdXMgSVJRRl9TSEFS
RUQgaXQgCndhcyB0aGUgaWRlYWwgdmljdGltIGZvciBwcm90b3R5cGluZy4gSSBoYXZlbid0IGRh
cmVkIGFzayBhYm91dCBBbXBlcmUncyAKU01NVSBzdG9yeS4uLiA6KQoKPiBEMDYgYm9hcmQ6Cj4g
Cj4gam9obkB1YnVudHU6fiQgbW9yZSAvcHJvYy9pbnRlcnJ1cHRzIHwgZ3JlcCBzbW11djMtcG11
Cj4gCj4gIMKgOTg5OsKgIDDCoCAwwqAgMMKgIDDCoCBJVFMtcE1TSSAxMzMxMjAgRWRnZcKgIHNt
bXV2My1wbXUKPiAgwqA5OTA6wqAgMMKgIDDCoCAwwqAgMMKgIElUUy1wTVNJIDEzNTE2OCBFZGdl
wqAgc21tdXYzLXBtdQo+ICDCoDk5MTrCoCAwwqAgMMKgIDDCoCAwwqAgSVRTLXBNU0kgMTM3MjE2
IEVkZ2XCoCBzbW11djMtcG11Cj4gIMKgOTkyOsKgIDDCoCAwwqAgMMKgIDDCoCBJVFMtcE1TSSAx
MzkyNjQgRWRnZcKgIHNtbXV2My1wbXUKPiAgwqA5OTM6wqAgMMKgIDDCoCAwwqAgMMKgIElUUy1w
TVNJIDE0MTMxMiBFZGdlwqAgc21tdXYzLXBtdQo+ICDCoDk5NDrCoCAwwqAgMMKgIDDCoCAwwqAg
SVRTLXBNU0kgMTQzMzYwIEVkZ2XCoCBzbW11djMtcG11Cj4gIMKgOTk1OsKgIDDCoCAwwqAgMMKg
IDDCoCBJVFMtcE1TSSAxNDU0MDggRWRnZcKgIHNtbXV2My1wbXUKPiAgwqA5OTY6wqAgMMKgIDDC
oCAwwqAgMMKgIElUUy1wTVNJIDE0NzQ1NiBFZGdlwqAgc21tdXYzLXBtdQoKWWVhaCwgTVNJcyBh
cmUgdGhlIGJlc3Qgd2F5IHRvIGRlZmVhdCBhbnkgaW50ZXJydXB0IHdpcmluZyEKClJvYmluLgoK
WzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzNlZmExMThhLTVj
ODUtNmFmOS1lNjc2LTQ0MDg3ZjFkMzk4ZUBhcm0uY29tLwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
