Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34B34807F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mISO3BGIYJoNlmK37Taj/2pVZU6VverJzSfUJz1pJw=; b=UPaGm81xv887T7
	+qP+3skcV2KnYn1gavwdBhujDCRSR92jRgbwFI/Lz1iANUwJC6qlJwRrEtzt6UL7T7ej7zIJ+wEY7
	ZosSImGDGyR/ZKUxo3AssPRroKQI650IJKtsJCPizDBDqJ7Xq7X3DKZFElUy5tGTrkao8S3Wao/qL
	K5tiusqa3jbQURVsnKb7mnxEAC+BNwr+aoAB1NEO9rDoxd2Mm9Uj8b0Voxh1JJwLRZNvzwF8iJhDD
	iCAtxY10Oabx4VEFXIQmRiYLCxgS82pUzXvaKT0simimxVaZiQP8v4XZ2AFVFS/316xWZ+d33/3oV
	M5Z3t9AKzsW+MzifjCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpfw-0007Hi-AK; Mon, 17 Jun 2019 11:19:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpfm-0007Gp-2O
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:19:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0179344;
 Mon, 17 Jun 2019 04:19:35 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78CB23F246;
 Mon, 17 Jun 2019 04:21:18 -0700 (PDT)
Subject: Re: [PATCH v1 2/5] KVM: arm/arm64: Adjust entry/exit and trap related
 tracepoints
To: Zenghui Yu <yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
 <1560330526-15468-3-git-send-email-yuzenghui@huawei.com>
 <977f8f8c-72b4-0287-4b1c-47a0d6f1fd6e@arm.com>
 <e78a9798-cce3-a360-37c3-0ad359944b85@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4d16d690-e93b-7b89-3251-aa4bd8489715@arm.com>
Date: Mon, 17 Jun 2019 12:19:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e78a9798-cce3-a360-37c3-0ad359944b85@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041938_196469_F25ECADC 
X-CRM114-Status: GOOD (  28.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, acme@redhat.com, kvm@vger.kernel.org,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, christoffer.dall@arm.com,
 linux-perf-users@vger.kernel.org, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, linuxarm@huawei.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 namhyung@kernel.org, jolsa@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDEzLzA2LzIwMTkgMTI6MjgsIFplbmdodWkgWXUgd3JvdGU6Cj4gT24g
MjAxOS82LzEyIDIwOjQ5LCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gT24gMTIvMDYvMjAxOSAxMDow
OCwgWmVuZ2h1aSBZdSB3cm90ZToKPj4+IEN1cnJlbnRseSwgd2UgdXNlIHRyYWNlX2t2bV9leGl0
KCkgdG8gcmVwb3J0IGV4Y2VwdGlvbiB0eXBlIChlLmcuLAo+Pj4gIklSUSIsICJUUkFQIikgYW5k
IGV4Y2VwdGlvbiBjbGFzcyAoRVNSX0VMeCdzIGJpdFszMToyNl0pIHRvZ2V0aGVyLgo+Pj4gQnV0
IGhhcmR3YXJlIG9ubHkgc2F2ZXMgdGhlIGV4aXQgY2xhc3MgdG8gRVNSX0VMeCBvbiBzeW5jaHJv
bm91cwo+Pj4gZXhjZXB0aW9ucywgbm90IG9uIGFzeW5jaHJvbm91cyBleGNlcHRpb25zLiBXaGVu
IHRoZSBndWVzdCBleGl0cwo+Pj4gZHVlIHRvIGV4dGVybmFsIGludGVycnVwdHMsIHdlIHdpbGwg
Z2V0IHRyYWNpbmcgb3V0cHV0IGxpa2U6Cj4+Pgo+Pj4gwqDCoMKgwqAia3ZtX2V4aXQ6IElSUTog
SFNSX0VDOiAweDAwMDAgKFVOS05PV04pLCBQQzogMHhmZmZmODcyNTllMzAiCj4+Pgo+Pj4gT2J2
aW91c2x5LCAiSFNSX0VDIiBoZXJlIGlzIG1lYW5pbmdsZXNzLgoKPj4gSSBhc3N1bWUgd2UgZG8g
aXQgdGhpcyB3YXkgc28gdGhlcmUgaXMgb25seSBvbmUgZ3Vlc3QtZXhpdCB0cmFjZXBvaW50IHRo
YXQgY2F0Y2hlcyBhbGwKPj4gZXhpdHMuCj4+IEkgZG9uJ3QgdGhpbmsgaXRzIGEgcHJvYmxlbSBp
ZiB1c2VyLXNwYWNlIGhhcyB0byBrbm93IHRoZSBFQyBpc24ndCBzZXQgZm9yIGFzeW5jaHJvbm91
cwo+PiBleGNlcHRpb25zLCB0aGlzIGlzIGEgcHJvcGVydHkgb2YgdGhlIGFyY2hpdGVjdHVyZSBh
bmQgYW55dGhpbmcgdXNpbmcgdGhlc2UgdHJhY2UtcG9pbnRzCj4+IGlzIGFscmVhZHkgYXJjaCBz
cGVjaWZpYy4KCj4gQWN0dWFsbHksICpubyogcHJvYmxlbSBpbiBjdXJyZW50IGltcGxlbWVudGF0
aW9uLCBhbmQgSSdtIE9LIHRvIHN0aWxsCj4ga2VlcCB0aGUgRUMgaW4gdHJhY2Vfa3ZtX2V4aXQo
KS7CoCBXaGF0IEkgcmVhbGx5IHdhbnQgdG8gZG8gaXMgYWRkaW5nIHRoZQo+IEVDIGluIHRyYWNl
X3RyYXBfZW50ZXIgKHRoZSBuZXcgdHJhY2Vwb2ludCksIHdpbGwgZXhwbGFpbiBpdCBsYXRlci4K
Cgo+Pj4gVGhpcyBwYXRjaCBzcGxpdHMgImV4aXQiIGFuZCAidHJhcCIgZXZlbnRzIGJ5IGFkZGlu
ZyB0d28gdHJhY2Vwb2ludHMKPj4+IGV4cGxpY2l0bHkgaW4gaGFuZGxlX3RyYXBfZXhjZXB0aW9u
cygpLiBMZXQgdHJhY2Vfa3ZtX2V4aXQoKSByZXBvcnQgVk0KPj4+IGV4aXQgZXZlbnRzLCBhbmQg
dHJhY2Vfa3ZtX3RyYXBfZXhpdCgpIHJlcG9ydCBWTSB0cmFwIGV2ZW50cy4KPj4+Cj4+PiBUaGVz
ZSB0cmFjZXBvaW50cyBhcmUgYWRqdXN0ZWQgYWxzbyBpbiBwcmVwYXJhdGlvbiBmb3Igc3VwcG9y
dGluZwo+Pj4gJ3BlcmYga3ZtIHN0YXQnIG9uIGFybTY0Lgo+Pgo+PiBCZWNhdXNlIHRoZSBleGlz
dGluZyB0cmFjZXBvaW50cyBhcmUgQUJJLCBJIGRvbid0IHRoaW5rIHdlIGNhbiBjaGFuZ2UgdGhl
bS4KPj4KPj4gV2UgY2FuIGFkZCBuZXcgb25lcyBpZiB0aGVyZSBpcyBzb21ldGhpbmcgdGhhdCBh
IHVzZXIgcmVhc29uYWJseSBuZWVkcyB0byB0cmFjZSwgYW5kIGNhbid0Cj4+IGJlIGRvbmUgYW55
IG90aGVyIHdheS4KPj4KPj4gV2hhdCBjYW4ndCAncGVyZiBrdm0gc3RhdCcgZG8gd2l0aCB0aGUg
ZXhpc3RpbmcgdHJhY2UgcG9pbnRzPwoKPiBGaXJzdCwgaG93IGRvZXMgJ3BlcmYga3ZtIHN0YXQn
IGludGVyYWN0IHdpdGggdHJhY2Vwb2ludHM/CgpTdGFydCBhdCB0aGUgYmVnaW5uaW5nLCBnb29k
IGlkZWEuIChJJ3ZlIG5ldmVyIHVzZWQgdGhpcyB0aGluZyEpCgoKPiBXZSBoYXZlIHRocmVlIGhh
bmRsZXJzIGZvciBhIHNwZWNpZmljIGV2ZW50IChlLmcuLCAiVk0tRVhJVCIpIC0tCj4gImlzX2Jl
Z2luX2V2ZW50IiwgImlzX2VuZF9ldmVudCIsICJkZWNvZGVfa2V5Ii4gVGhlIGZpcnN0IHR3byBo
YW5kbGVycwo+IG1ha2UgdXNlIG9mIHR3byBleGlzdGluZyB0cmFjZXBvaW50cyAoImt2bTprdm1f
ZXhpdCIgJiAia3ZtOmt2bV9lbnRyeSIpCj4gdG8gY2hlY2sgd2hlbiB0aGUgVk0tRVhJVCBldmVu
dHMgc3RhcnRlZC9lbmRlZCwgdGh1cyB0aGUgdGltZSBkaWZmZXJlbmNlCj4gc3RhdHMsIGV2ZW50
IHN0YXJ0L2VuZCB0aW1lIGV0Yy4gY2FuIGJlIGNhbGN1bGF0ZWQuCgo+ICJpc19iZWdpbl9ldmVu
dCIgaGFuZGxlciBnZXRzIGEgKmtleSogZnJvbSB0aGUgInJldCIgZmllbGQgKGV4aXRfY29kZSkK
PiBvZiAia3ZtOmt2bV9leGl0IiBwYXlsb2FkLCBhbmQgImRlY29kZV9rZXkiIGhhbmRsZXIgbWFr
ZXMgdXNlIG9mIHRoZQo+ICprZXkqIHRvIGZpbmQgb3V0IHRoZSByZWFzb24gZm9yIHRoZSBWTS1F
WElUIGV2ZW50LiBPZiBjb3Vyc2Ugd2Ugc2hvdWxkCj4gbWFpbnRhaW4gdGhlIG1hcHBpbmcgYmV0
d2VlbiBleGl0X2NvZGUgYW5kIGV4aXRfcmVhc29uIGluIHVzZXJzcGFjZS4KCkludGVycHJldGlu
ZyAncmV0JyBpcyBnb2luZyB0byBnZXQgdHJpY2t5IGlmIHdlIGNoYW5nZSB0aG9zZSB2YWx1ZXMg
b24gYSB3aGltLiBJdHMKaW50ZXJuYWwgdG8gdGhlIEtWTSBhcmNoIGNvZGUuCgoKPiBUaGVzZSBh
cmUgYWxsIHdoYXQgKnBhdGNoICM0KiBoYWQgZG9uZSwgIzQgaXMgYSBzaW1wbGUgcGF0Y2ggdG8g
cmV2aWV3IQoKPiBPaCwgd2UgY2FuIGFsc28gc2V0ICJ2Y3B1X2lkX3N0ciIgdG8gYWNoaWV2ZSBw
ZXIgdmNwdSBldmVudCByZWNvcmQsIGJ1dAo+IGN1cnJlbnRseSwgd2Ugb25seSBoYXZlIHRoZSAi
dmNwdV9wYyIgZmllbGQgaW4gImt2bTprdm1fZW50cnkiLCB3aXRob3V0Cj4gc29tZXRoaW5nIGxp
a2UgInZjcHVfaWQiLgoKSGVoLCBzbyBmcm9tIHRoZSB0cmFjZS1wb2ludCBkYXRhLCB5b3UgY2Fu
J3Qga25vdyB3aGljaCBvbiBpcyB2Y3B1LTAgYW5kIHdoaWNoIGlzIHZjcHUtMS4KCgo+IE9LLCBu
ZXh0IGNvbWVzIHRoZSBtb3JlIGltcG9ydGFudCBxdWVzdGlvbiAtIHdoYXQgc2hvdWxkL2NhbiB3
ZSBkbyB0bwo+IHRoZSB0cmFjZXBvaW50cyBpbiBwcmVwYXJhdGlvbiBvZiAncGVyZiBrdm0gc3Rh
dCcgb24gYXJtNjQ/Cj4gCj4gRnJvbSB0aGUgYXJ0aWNsZSB5b3UndmUgcHJvdmlkZWQsIGl0J3Mg
Y2xlYXIgdGhhdCB3ZSBjYW4ndCByZW1vdmUgdGhlIEVDCj4gZnJvbSB0cmFjZV9rdm1fZXhpdCgp
LiBCdXQgY2FuIHdlIGFkZCBzb21ldGhpbmcgbGlrZSAidmNwdV9pZCIgaW50bwo+IChhdCBsZWFz
dCkgdHJhY2Vfa3ZtX2VudHJ5KCksIGp1c3QgbGlrZSB3aGF0IHRoaXMgcGF0Y2ggaGFzIGRvbmU/
CgpBZGRpbmcgc29tZXRoaW5nIGlzIHN0aWxsIGxpa2VseSB0byBicmVhayBhIGJhZGx5IHdyaXR0
ZW4gdXNlci1zcGFjZSB0aGF0IGlzIHRyeWluZyB0bwpwYXJzZSB0aGUgdHJhY2UgaW5mb3JtYXRp
b24uIEEgcmVnZXggcGlja2luZyBvdXQgdGhlIGxhc3QgYXJndW1lbnQgd2lsbCBub3cgZ2V0IGEK
ZGlmZmVyZW50IHZhbHVlLgoKCj4gSWYgbm90LCB3aGljaCBtZWFucyB3ZSBoYXZlIHRvIGtlZXAg
dGhlIGV4aXN0aW5nIHRyYWNlcG9pbnRzIHRvdGFsbHkKPiB1bmNoYW5nZWQsIHRoZW4gJ3BlcmYg
a3ZtIHN0YXQnIHdpbGwgaGF2ZSBubyB3YXkgdG8gcmVjb3JkL3JlcG9ydCBwZXIKPiB2Y3B1IFZN
LUVYSVQgZXZlbnRzIChvdGhlciBhcmNoIGxpa2UgWDg2LCBwb3dlcnBjLCBzMzkwIGV0Yy4gaGF2
ZSB0aGlzCj4gY2FwYWJpbGl0eSwgaWYgSSB1bmRlcnN0YW5kIGl0IGNvcnJlY3RseSkuCgpXZWxs
LCB5b3UgZ2V0IHRoZSBldmVudHMsIGJ1dCB5b3UgZG9uJ3Qga25vdyB3aGljaCB2Q1BVIGlzIHdo
aWNoLiBZb3UgY2FuIG1hcCB0aGlzIGJhY2sgdG8KdGhlIHBpZCBvZiB0aGUgaG9zdCB0aHJlYWQg
YXNzdW1pbmcgdXNlci1zcGFjZSBpc24ndCBtb3ZpbmcgdmNwdSBiZXR3ZWVuIGhvc3QgdGhyZWFk
cy4KCklmIHdlJ3JlIHJlYWxseSBzdHVjazogQWRkaW5nIHRyYWNlcG9pbnRzIHRvIEtWTS1jb3Jl
J3MgdmNwdSBnZXQvcHV0LCB0aGF0IGV4cG9ydCB0aGUKdmNwdV9pZCB3b3VsZCBsZXQgeW91IG1h
cCBwaWQtPnZjcHVfaWQsIHdoaWNoIHlvdSBjYW4gdGhlbiB1c2UgZm9yIHRoZSBiYXRjaCBvZiBl
bnRlci9leGl0CmV2ZW50cyB0aGF0IGNvbWUgYmVmb3JlIGEgZmluYWwgdmNwdSBwdXQuCmdyZXBw
aW5nICJ2cHVfaWQiIHNob3dzIHBlcmYgaGFzIGEgbWFwcGluZyBmb3Igd2hpY2ggYXJjaC1zcGVj
aWZpYyBhcmd1bWVudCBpbiBlbnRlci9leGl0CmlzIHRoZSB2Y3B1LWlkLiBEb25lIHdpdGggdGhp
cyBjb3JlLWNvZGUgbWFwcGluZywgeW91IGNvdWxkIGRyb3AgdGhhdCBjb2RlLi4uCgpCdXQgSSdk
IGJlIGEgbGl0dGxlIG5lcnZvdXMgYWRkaW5nIGEgbmV3IHRyYWNlLXBvaW50IHRvIHdvcmsgYXJv
dW5kIGFuIEFCSSBwcm9ibGVtLCBhcyB3ZQptYXkgaGF2ZSBqdXN0IG1vdmVkIHRoZSBBQkkgcHJv
YmxlbSEgKFdoYXQgZG9lcyBhIHVzZXIgb2YgYSB2Y3B1X3B1dCB0cmFjZXBvaW50IHJlYWxseSBu
ZWVkPykKCgo+IEFzIGZvciBUUkFQIGV2ZW50cywgc2hvdWxkIHdlIGNvbnNpZGVyIGFkZGluZyB0
d28gbmV3IHRyYWNlcG9pbnRzIC0tCj4gImt2bV90cmFwX2VudGVyIiBhbmQgImt2bV90cmFwX2V4
aXQiLCB0byBrZWVwIHRyYWNraW5nIG9mIHRoZSB0cmFwCj4gaGFuZGxpbmcgcHJvY2Vzcz8gV2Ug
c2hvdWxkIGFsc28gcmVjb3JkIHRoZSBFQyBpbiAia3ZtX3RyYXBfZW50ZXIiLCB3aGljaCB3aWxs
IGJlIHVzZWQgYXMKPiAqa2V5KiBpbiBUUkFQIGV2ZW50J3MgImlzX2JlZ2luX2V2ZW50IiBoYW5k
bGVyLgoKVGhlIEVDIGNhbid0IGNoYW5nZSBiZXR3ZWVuIHRyYWNlX2t2bV9leGl0KCkgYW5kIGhh
bmRsZV9leGl0KCksIHNvIHlvdSBhbHJlYWR5IGhhdmUgdGhpcy4KCldoYXQgYXJlIHRoZSAndHJh
cCcgdHJhY2UgcG9pbnRzIG5lZWRlZCBmb3I/IFlvdSBnZXQgdGhlIHRpbWluZyBhbmQgJ2V4Y2Vw
dGlvbiBjbGFzcycgZnJvbQp0aGUgZ3Vlc3QgZW50ZXIvZXhpdCB0cmFjZXBvaW50cy4gV2hhdCBh
Ym91dCBoYW5kbGVfZXhpdCgpIGNhbid0IHlvdSB3b3JrIG91dCBmcm9tIHRoaXM/CgoKPiBQYXRj
aCAjNSB0ZWxscyB1cyB0aGUgd2hvbGUgc3RvcnksIGl0J3Mgc2ltcGxlIHRvby4KCihJIG9ubHkg
c2tpbW1lZCB0aGUgcGVyZiBwYXRjaGVzLCBJJ2xsIGdvIGJhY2sgbm93IHRoYXQgSSBrbm93IGEg
bGl0dGxlIG1vcmUgYWJvdXQgd2hhdAp5b3UncmUgZG9pbmcpCgoKPiBXaGF0IGRvIHlvdSBzdWdn
ZXN0PwoKV2UgY2FuIGV4cGxvcmUgdGhlIHZjcHVfbG9hZCgpL3ZjcHVfcHV0KCkgdHJhY2UgaWRl
YSwgKGl0IG1heSBub3Qgd29yayBmb3Igc29tZSBvdGhlcgpyZWFzb24pLiBJJ2QgbGlrZSB0byB1
bmRlcnN0YW5kIHdoYXQgdGhlICd0cmFwJyB0cmFjZXBvaW50cyBhcmUgbmVlZGVkIGZvci4KCgpU
aGFua3MsCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
