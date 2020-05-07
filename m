Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945E81C8766
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8UL7sePT60sHIiQD3j2QOYDFWonT5hlzRvHG1kecaFw=; b=QUb0qgMHO9XSL8f3AKD/7Ju49
	ntXLMKR/rsqgynOQlU/yDM7052c60KuV0o725uPqe3MchlcxIvSAWj8k5QD2P9W0YsZCaqlIr+mTQ
	AHGHTSilAivNxTgMjs2QCuqp7bMkfztInyLTfgOF6JME0lwt+zx3aDLl15nh3lMPMDyAzPNSOlB2x
	w42Jg9qiEwCnS70H2kN6GeK3eh9nFnKdZs6AfYAlFJL0Ibhoo6NPEMtLT1DQcQzh2xxfxkUfLW/eQ
	0Z6B6Xrs1s0GOwlZ5BcvRuusJIpNs5g9mhiU5MWfWXBP/nzMQTpFf9ac6Dn65euquKkVfAGnfwrPV
	99nwrecnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeCu-0001RC-RJ; Thu, 07 May 2020 10:56:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeC5-0000nx-GA
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:55:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CB411FB;
 Thu,  7 May 2020 03:55:56 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAC833F68F;
 Thu,  7 May 2020 03:55:54 -0700 (PDT)
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Rob Clark <robdclark@gmail.com>, Jordan Crouse <jcrouse@codeaurora.org>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
Date: Thu, 7 May 2020 11:55:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035557_643263_E6F1703A 
X-CRM114-Status: GOOD (  20.75  )
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
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNyAxMToxNCBhbSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIFdp
bGwsIFJvYmluCj4gCj4gT24gMjAyMC0wNC0yMiAwMTo1MCwgU2FpIFByYWthc2ggUmFuamFuIHdy
b3RlOgo+PiBBZGQgc3RhbGwgaW1wbGVtZW50YXRpb24gaG9vayB0byBlbmFibGUgc3RhbGxpbmcK
Pj4gZmF1bHRzIG9uIFFDT00gcGxhdGZvcm1zIHdoaWNoIHN1cHBvcnRzIGl0IHdpdGhvdXQKPj4g
Y2F1c2luZyBhbnkga2luZCBvZiBoYXJkd2FyZSBtaXNoYXBzLiBXaXRob3V0IHRoaXMKPj4gb24g
UUNPTSBwbGF0Zm9ybXMsIEdQVSBmYXVsdHMgY2FuIGNhdXNlIHVucmVsYXRlZAo+PiBHUFUgbWVt
b3J5IGFjY2Vzc2VzIHRvIHJldHVybiB6ZXJvZXMuIFRoaXMgaGFzIHRoZQo+PiB1bmZvcnR1bmF0
ZSByZXN1bHQgb2YgY29tbWFuZC1zdHJlYW0gcmVhZHMgZnJvbSBDUAo+PiBnZXR0aW5nIGludmFs
aWQgZGF0YSwgY2F1c2luZyBhIGNhc2NhZGUgb2YgZmFpbC4KCkkgdGhpbmsgdGhpcyBjYW1lIHVw
IGJlZm9yZSwgYnV0IHNvbWV0aGluZyBhYm91dCB0aGlzIHJhdGlvbmFsZSBkb2Vzbid0IAphZGQg
dXAgLSB3ZSdyZSBub3QgKnVzaW5nKiBzdGFsbHMgYXQgYWxsLCB3ZSdyZSBzdGlsbCB0ZXJtaW5h
dGluZyAKZmF1bHRpbmcgdHJhbnNhY3Rpb25zIHVuY29uZGl0aW9uYWxseTsgd2UncmUganVzdCB1
c2luZyBDRkNGRyB0byAKdGVybWluYXRlIHRoZW0gd2l0aCBhIHNsaWdodCBkZWxheSwgcmF0aGVy
IHRoYW4gaW1tZWRpYXRlbHkuIEl0J3MgcmVhbGx5IApub3QgY2xlYXIgaG93IG9yIHdoeSB0aGF0
IG1ha2VzIGEgZGlmZmVyZW5jZS4gSXMgaXQgYSBHUFUgYnVnPyBPciBhbiAKU01NVSBidWc/IElz
IHRoaXMgcmVsaWFibGUgKG9yIGV2ZW4gYSBkb2N1bWVudGVkIHdvcmthcm91bmQgZm9yIApzb21l
dGhpbmcpLCBvciBtaWdodCB0aGluZ3Mgc3RhcnQgYmxvd2luZyB1cCBhZ2FpbiBpZiBhbnkgb3Ro
ZXIgCmJlaGF2aW91ciBzdWJ0bHkgY2hhbmdlcz8gSSdtIG5vdCBkZWFkIHNldCBhZ2FpbnN0IGFk
ZGluZyB0aGlzLCBidXQgSSdkIAoqcmVhbGx5KiBsaWtlIHRvIGhhdmUgYSBsb3QgbW9yZSBjb25m
aWRlbmNlIGluIGl0LgoKPj4gU3VnZ2VzdGVkLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFp
bC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8c2FpcHJha2FzaC5y
YW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+IC0tLQo+PiBUaGlzIGhhcyBiZWVuIGF0dGVtcHRlZCBw
cmV2aW91c2x5IGJ5IFJvYiBDbGFyayBpbiAyMDE3LCAyMDE4Lgo+PiBIb3BlZnVsbHkgd2UgY2Fu
IGdldCBzb21ldGhpbmcgY29uY2x1ZGVkIGluIDIwMjAuCj4+IMKgKiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzk5NTM4MDMvCj4+IMKgKiBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzEwNjE4NzEzLwo+PiAtLS0KPj4gwqBkcml2ZXJzL2lvbW11L2FybS1zbW11
LXFjb20uYyB8IDEgKwo+PiDCoGRyaXZlcnMvaW9tbXUvYXJtLXNtbXUuY8KgwqDCoMKgwqAgfCA3
ICsrKysrKysKPj4gwqBkcml2ZXJzL2lvbW11L2FybS1zbW11LmjCoMKgwqDCoMKgIHwgMSArCj4+
IMKgMyBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaW9tbXUvYXJtLXNtbXUtcWNvbS5jIAo+PiBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUt
cWNvbS5jCj4+IGluZGV4IDI0YzA3MWMxZDhiMC4uYTEzYjIyOTM4OWQ0IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2lvbW11L2FybS1zbW11LXFjb20uYwo+PiArKysgYi9kcml2ZXJzL2lvbW11L2Fy
bS1zbW11LXFjb20uYwo+PiBAQCAtMzIsNiArMzIsNyBAQCBzdGF0aWMgaW50IHFjb21fc2RtODQ1
X3NtbXU1MDBfcmVzZXQoc3RydWN0Cj4+IGFybV9zbW11X2RldmljZSAqc21tdSkKPj4KPj4gwqBz
dGF0aWMgY29uc3Qgc3RydWN0IGFybV9zbW11X2ltcGwgcWNvbV9zbW11X2ltcGwgPSB7Cj4+IMKg
wqDCoMKgIC5yZXNldCA9IHFjb21fc2RtODQ1X3NtbXU1MDBfcmVzZXQsCj4+ICvCoMKgwqAgLnN0
YWxsID0gdHJ1ZSwKPj4gwqB9Owo+Pgo+PiDCoHN0cnVjdCBhcm1fc21tdV9kZXZpY2UgKnFjb21f
c21tdV9pbXBsX2luaXQoc3RydWN0IGFybV9zbW11X2RldmljZSAKPj4gKnNtbXUpCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11
LmMKPj4gaW5kZXggZTYyMmY0ZTMzMzc5Li4xNmIwM2ZjYTk5NjYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvaW9tbXUvYXJtLXNtbXUuYwo+PiArKysgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMK
Pj4gQEAgLTQ4OCw2ICs0ODgsMTEgQEAgc3RhdGljIGlycXJldHVybl90IGFybV9zbW11X2NvbnRl
eHRfZmF1bHQoaW50Cj4+IGlycSwgdm9pZCAqZGV2KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBmc3IsIGlvdmEsIGZzeW5yLCBjYmZyc3lucmEsIGlkeCk7Cj4+Cj4+IMKgwqDC
oMKgIGFybV9zbW11X2NiX3dyaXRlKHNtbXUsIGlkeCwgQVJNX1NNTVVfQ0JfRlNSLCBmc3IpOwo+
PiArCj4+ICvCoMKgwqAgaWYgKHNtbXUtPmltcGwgJiYgc21tdS0+aW1wbC0+c3RhbGwgJiYgKGZz
ciAmIEFSTV9TTU1VX0ZTUl9TUykpCj4+ICvCoMKgwqDCoMKgwqDCoCBhcm1fc21tdV9jYl93cml0
ZShzbW11LCBpZHgsIEFSTV9TTU1VX0NCX1JFU1VNRSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgQVJNX1NNTVVfUkVTVU1FX1RFUk1JTkFURSk7CgpTaG91bGRuJ3QgdGhp
cyBiZSAqYmVmb3JlKiB0aGUgd3JpdGUgdG8gRlNSLCBpbiBjYXNlIHRoZSBvdXRzdGFuZGluZyAK
ZmF1bHQgY2F1c2VzIHRoYXQgdG8gYmUgaW1tZWRpYXRlbHkgcmVhc3NlcnRlZCBiZWZvcmUgd2Ug
d3JpdGUgQ0JfUkVTVU1FIAphbmQgd2UgZW5kIHVwIGltbWVkaWF0ZWx5IHRha2luZyB0aGUgSVJR
IGEgc2Vjb25kIHRpbWU/CgooVGhlIG92ZXJhbGwgZW5hYmxlbWVudCBiZWluZyBpbiBpbXBsIGlz
IHNvdW5kLCBidXQgeW91IHN0aWxsIGRvbid0IGdldCAKdG8gcGxheSAid29ya3Mgb24gbXkgbWFj
aGluZSIgaW4gdGhlIGFyY2hpdGVjdHVyYWwgY29kZSA6UCkKClJvYmluLgoKPj4gKwo+PiDCoMKg
wqDCoCByZXR1cm4gSVJRX0hBTkRMRUQ7Cj4+IMKgfQo+Pgo+PiBAQCAtNjU5LDYgKzY2NCw4IEBA
IHN0YXRpYyB2b2lkIGFybV9zbW11X3dyaXRlX2NvbnRleHRfYmFuayhzdHJ1Y3QKPj4gYXJtX3Nt
bXVfZGV2aWNlICpzbW11LCBpbnQgaWR4KQo+PiDCoMKgwqDCoMKgwqDCoMKgIHJlZyB8PSBBUk1f
U01NVV9TQ1RMUl9TMV9BU0lEUE5FOwo+PiDCoMKgwqDCoCBpZiAoSVNfRU5BQkxFRChDT05GSUdf
Q1BVX0JJR19FTkRJQU4pKQo+PiDCoMKgwqDCoMKgwqDCoMKgIHJlZyB8PSBBUk1fU01NVV9TQ1RM
Ul9FOwo+PiArwqDCoMKgIGlmIChzbW11LT5pbXBsICYmIHNtbXUtPmltcGwtPnN0YWxsKQo+PiAr
wqDCoMKgwqDCoMKgwqAgcmVnIHw9IEFSTV9TTU1VX1NDVExSX0NGQ0ZHOwo+Pgo+PiDCoMKgwqDC
oCBhcm1fc21tdV9jYl93cml0ZShzbW11LCBpZHgsIEFSTV9TTU1VX0NCX1NDVExSLCByZWcpOwo+
PiDCoH0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUuaCBiL2RyaXZlcnMv
aW9tbXUvYXJtLXNtbXUuaAo+PiBpbmRleCA4ZDFjZDU0ZDgyYTYuLmQ1MTM0ZTBkNWNjZSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS5oCj4+ICsrKyBiL2RyaXZlcnMvaW9t
bXUvYXJtLXNtbXUuaAo+PiBAQCAtMzg2LDYgKzM4Niw3IEBAIHN0cnVjdCBhcm1fc21tdV9pbXBs
IHsKPj4gwqDCoMKgwqAgaW50ICgqaW5pdF9jb250ZXh0KShzdHJ1Y3QgYXJtX3NtbXVfZG9tYWlu
ICpzbW11X2RvbWFpbik7Cj4+IMKgwqDCoMKgIHZvaWQgKCp0bGJfc3luYykoc3RydWN0IGFybV9z
bW11X2RldmljZSAqc21tdSwgaW50IHBhZ2UsIGludCBzeW5jLAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnQgc3RhdHVzKTsKPj4gK8KgwqDCoCBib29sIHN0YWxsOwo+PiDCoH07Cj4+
Cj4+IMKgc3RhdGljIGlubGluZSB2b2lkIF9faW9tZW0gKmFybV9zbW11X3BhZ2Uoc3RydWN0IGFy
bV9zbW11X2RldmljZSAKPj4gKnNtbXUsIGludCBuKQo+IAo+IEFueSBjb21tZW50cyBvbiB0aGlz
IHBhdGNoPwo+IAo+IFRoYW5rcywKPiBTYWkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
