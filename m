Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F461E3C72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lPpwvtVfRRdRlb9m0UK2lEI3i0Ash965O774e1EUyw=; b=uwLzDyMo0i+1+J
	qIHugYTaAfhxY8AQXDFZjoBZJvASWmAwq01feXbGiZe3sWeScZk+eej0oYk36EcorD4jI+rINCF6q
	HacGxvbbPfqPgZx/RWzBuPe3r3/DSRwqBKyJ6myu808hoEDpL4Cl8BcOwSFsNDMr48YkAwxH3OOuZ
	DEVGGiLL5QnmIiC6FJgfEbA9Mr3u3/v/mUV+J4ocZk0gh/1rf1WYPt6dMhADseIicxw9ZuEJKcUep
	XYt3wDg3qsZKF/ijFeb5oC20LvhA+ST6KafeujUSzwMqvb5FS8KDUwtR37SxaHomVLHMf4NGQfPBG
	kBRnGz5gZ6OcWuow2ZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrgm-0000Ig-FP; Wed, 27 May 2020 08:45:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrgO-0000HH-IJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:45:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F0CF30E;
 Wed, 27 May 2020 01:45:02 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21F9B3F6C4;
 Wed, 27 May 2020 01:45:00 -0700 (PDT)
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data from
 struct kvm
To: Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <a7c8207c-9061-ad0e-c9f8-64c995e928b6@arm.com>
 <76d811eb-b304-c49f-1f21-fe9d95112a28@arm.com>
 <6518439c-65b7-1e87-a21d-a053d75c0514@arm.com>
 <ea603b3a7a51a597263e7c8152f4c795@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <91b6b062-e39d-a672-52e4-40532068a02e@arm.com>
Date: Wed, 27 May 2020 09:45:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <ea603b3a7a51a597263e7c8152f4c795@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014504_692236_EB661D1C 
X-CRM114-Status: GOOD (  17.81  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDUvMjcvMjAgOTo0MSBBTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEFs
ZXgsCj4KPiBPbiAyMDIwLTA1LTEyIDE3OjUzLCBBbGV4YW5kcnUgRWxpc2VpIHdyb3RlOgo+PiBI
aSwKPj4KPj4gT24gNS8xMi8yMCAxMjoxNyBQTSwgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4+PiBIaSBB
bGV4LCBNYXJjLAo+Pj4KPj4+IChqdXN0IG9uIHRoaXMgbGFzdF92Y3B1X3JhbiB0aGluZy4uLikK
Pj4+Cj4+PiBPbiAxMS8wNS8yMDIwIDE3OjM4LCBBbGV4YW5kcnUgRWxpc2VpIHdyb3RlOgo+Pj4+
IE9uIDQvMjIvMjAgMTowMCBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+PiBGcm9tOiBDaHJp
c3RvZmZlciBEYWxsIDxjaHJpc3RvZmZlci5kYWxsQGFybS5jb20+Cj4+Pj4+Cj4+Pj4+IEFzIHdl
IGFyZSBhYm91dCB0byByZXVzZSBvdXIgc3RhZ2UgMiBwYWdlIHRhYmxlIG1hbmlwdWxhdGlvbiBj
b2RlIGZvcgo+Pj4+PiBzaGFkb3cgc3RhZ2UgMiBwYWdlIHRhYmxlcyBpbiB0aGUgY29udGV4dCBv
ZiBuZXN0ZWQgdmlydHVhbGl6YXRpb24sIHdlCj4+Pj4+IGFyZSBnb2luZyB0byBtYW5hZ2UgbXVs
dGlwbGUgc3RhZ2UgMiBwYWdlIHRhYmxlcyBmb3IgYSBzaW5nbGUgVk0uCj4+Pj4+Cj4+Pj4+IFRo
aXMgcmVxdWlyZXMgc29tZSBwcmV0dHkgaW52YXNpdmUgY2hhbmdlcyB0byBvdXIgZGF0YSBzdHJ1
Y3R1cmVzLAo+Pj4+PiB3aGljaCBtb3ZlcyB0aGUgdm1pZCBhbmQgcGdkIHBvaW50ZXJzIGludG8g
YSBzZXBhcmF0ZSBzdHJ1Y3R1cmUgYW5kCj4+Pj4+IGNoYW5nZSBwcmV0dHkgbXVjaCBhbGwgb2Yg
b3VyIG1tdSBjb2RlIHRvIG9wZXJhdGUgb24gdGhpcyBzdHJ1Y3R1cmUKPj4+Pj4gaW5zdGVhZC4K
Pj4+Pj4KPj4+Pj4gVGhlIG5ldyBzdHJ1Y3R1cmUgaXMgY2FsbGVkIHN0cnVjdCBrdm1fczJfbW11
Lgo+Pj4+Pgo+Pj4+PiBUaGVyZSBpcyBubyBpbnRlbmRlZCBmdW5jdGlvbmFsIGNoYW5nZSBieSB0
aGlzIHBhdGNoIGFsb25lLgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9rdm1faG9zdC5oCj4+Pj4+IGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oCj4+
Pj4+IGluZGV4IDdkZDhmZWZhNmFlY2QuLjY2NGE1ZDkyYWU5YjggMTAwNjQ0Cj4+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20va3ZtX2hvc3QuaAo+Pj4+PiArKysgYi9hcmNoL2FybTY0
L2luY2x1ZGUvYXNtL2t2bV9ob3N0LmgKPj4+Pj4gQEAgLTYzLDE5ICs2MywzMiBAQCBzdHJ1Y3Qg
a3ZtX3ZtaWQgewo+Pj4+PiDCoMKgwqDCoCB1MzLCoMKgwqAgdm1pZDsKPj4+Pj4gwqB9Owo+Pj4+
Pgo+Pj4+PiAtc3RydWN0IGt2bV9hcmNoIHsKPj4+Pj4gK3N0cnVjdCBrdm1fczJfbW11IHsKPj4+
Pj4gwqDCoMKgwqAgc3RydWN0IGt2bV92bWlkIHZtaWQ7Cj4+Pj4+Cj4+Pj4+IC3CoMKgwqAgLyog
c3RhZ2UyIGVudHJ5IGxldmVsIHRhYmxlICovCj4+Pj4+IC3CoMKgwqAgcGdkX3QgKnBnZDsKPj4+
Pj4gLcKgwqDCoCBwaHlzX2FkZHJfdCBwZ2RfcGh5czsKPj4+Pj4gLQo+Pj4+PiAtwqDCoMKgIC8q
IFZUQ1JfRUwyIHZhbHVlIGZvciB0aGlzIFZNICovCj4+Pj4+IC3CoMKgwqAgdTY0wqDCoMKgIHZ0
Y3I7Cj4+Pj4+ICvCoMKgwqAgLyoKPj4+Pj4gK8KgwqDCoMKgICogc3RhZ2UyIGVudHJ5IGxldmVs
IHRhYmxlCj4+Pj4+ICvCoMKgwqDCoCAqCj4+Pj4+ICvCoMKgwqDCoCAqIFR3byBrdm1fczJfbW11
IHN0cnVjdHVyZXMgaW4gdGhlIHNhbWUgVk0gY2FuIHBvaW50IHRvIHRoZSBzYW1lIHBnZAo+Pj4+
PiArwqDCoMKgwqAgKiBoZXJlLsKgIFRoaXMgaGFwcGVucyB3aGVuIHJ1bm5pbmcgYSBub24tVkhF
IGd1ZXN0IGh5cGVydmlzb3Igd2hpY2gKPj4+Pj4gK8KgwqDCoMKgICogdXNlcyB0aGUgY2Fub25p
Y2FsIHN0YWdlIDIgcGFnZSB0YWJsZSBmb3IgYm90aCB2RUwyIGFuZCBmb3IgdkVMMS8wCj4+Pj4+
ICvCoMKgwqDCoCAqIHdpdGggdkhDUl9FTDIuVk0gPT0gMC4KPj4+PiBJdCBtYWtlcyBtb3JlIHNl
bnNlIHRvIG1lIHRvIHNheSB0aGF0IGEgbm9uLVZIRSBndWVzdCBoeXBlcnZpc29yIHdpbGwgdXNl
IHRoZQo+Pj4+IGNhbm9uaWNhbCBzdGFnZSAqMSogcGFnZSB0YWJsZSB3aGVuIHJ1bm5pbmcgYXQg
RUwyCj4+PiBDYW4gS1ZNIHNheSBhbnl0aGluZyBhYm91dCBzdGFnZTE/IEl0cyB0b3RhbGx5IHVu
ZGVyIHRoZSB0aGUgZ3Vlc3RzIGNvbnRyb2wKPj4+IGV2ZW4gYXQgdkVMMi4uLgo+Pgo+PiBJdCBq
dXN0IG9jY3VycmVkIHRvIG1lIHRoYXQgImNhbm9uaWNhbCBzdGFnZSAyIHBhZ2UgdGFibGUiIHJl
ZmVycyB0byB0aGUgTDAKPj4gaHlwZXJ2aXNvciBzdGFnZSAyLCBub3QgdG8gdGhlIEwxIGh5cGVy
dmlzb3Igc3RhZ2UgMi4gSWYgeW91IGRvbid0IG1pbmQgbXkKPj4gc3VnZ2VzdGlvbiwgcGVyaGFw
cyB0aGUgY29tbWVudCBjYW4gYmUgc2xpZ2h0bHkgaW1wcm92ZWQgdG8gYXZvaWQgYW55IGNvbmZ1
c2lvbj8KPj4gTWF5YmUgc29tZXRoaW5nIGFsb25nIHRoZSBsaW5lcyBvZiAiWy4uXSBUaGlzIGhh
cHBlbnMgd2hlbiBydW5uaW5nIGEKPj4gbm9uLVZIRSBndWVzdAo+PiBoeXBlcnZpc29yLCBpbiB3
aGljaCBjYXNlIHdlIHVzZSB0aGUgY2Fub25pY2FsIHN0YWdlIDIgcGFnZSB0YWJsZSBmb3IgYm90
aCB2RUwyCj4+IGFuZCBmb3IgdkVMMS8wIHdpdGggdkhDUl9FTDIuVk0gPT0gMCIuCj4KPiBJZiB0
aGUgY29uZnVzaW9uIHN0ZW1zIGZyb20gdGhlIGxhY2sgb2YgZ3Vlc3Qgc3RhZ2UtMiwgaG93IGFi
b3V0Ogo+Cj4gIlRoaXMgaGFwcGVucyB3aGVuIHJ1bm5pbmcgYSBndWVzdCB1c2luZyBhIHRyYW5z
bGF0aW9uIHJlZ2ltZSB0aGF0IGlzbid0Cj4gwqBhZmZlY3RlZCBieSBpdHMgb3duIHN0YWdlLTIg
dHJhbnNsYXRpb24sIHN1Y2ggYXMgYSBub24tVkhFIGh5cGVydmlzb3IKPiDCoHJ1bm5pbmcgYXQg
dkVMMiwgb3IgZm9yIHZFTDEvRUwwIHdpdGggdkhDUl9FTDIuVk0gPT0gMC4gSW4gdGhhdCBjYXNl
LAo+IMKgd2UgdXNlIHRoZSBjYW5vbmljYWwgc3RhZ2UtMiBwYWdlIHRhYmxlcy4iCj4KPiBpbnN0
ZWFkPyBEb2VzIHRoaXMgbGlmdCB0aGUgYW1iaWd1aXR5PwoKWWVzLCB0aGF0J3MgcGVyZmVjdC4K
ClRoYW5rcywKQWxleAo+Cj4gVGhhbmtzLAo+Cj4gwqDCoMKgwqDCoMKgwqAgTS4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
