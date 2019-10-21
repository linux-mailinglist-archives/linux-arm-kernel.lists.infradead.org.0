Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C672DEAC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bONtX0wEWyt3MbgMtyFmcdYAb/Sp0gNBZE7kf9thhY=; b=kGSFmfVQSy3Wzq
	E6o5AV+WA+Ga1C4uq0rUG9nDi+KGY8vZS2jfOVl9NNskvGyZ7SEwNqu7f+w8pX8M9uaHJuQCScNcb
	YDpJ7m5gLrt2uYlhWa4eyp6Ptjawpx70/u88aZzYbacFLp35oqE7tnW/HT8+9iU8PfKGeQpaxGSSc
	QL9SYfD/bhlKC0/rqbliM1ClYXH8FmwNWu2MaRhImgzAZHDNK5yh7S5ibv97M9aT93aSPeYSTEZuz
	yM2CE+Yybq8Q0K/bzElehCpE0DKrC19pLpaHIyIXDjSeB83H979UDKSz+xHIPzBy3CZIdQmvxmmC4
	0He8phDqIbiGsuXRNnNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVns-0006GZ-0z; Mon, 21 Oct 2019 11:24:48 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVnd-0006DK-P7
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:24:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82EBEEBD;
 Mon, 21 Oct 2019 04:24:22 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1F893F718;
 Mon, 21 Oct 2019 04:24:20 -0700 (PDT)
Subject: Re: [PATCH v6 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Marc Zyngier <maz@kernel.org>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-6-steven.price@arm.com> <86eez9yoog.wl-maz@kernel.org>
 <1bb10eb5-0fe8-57c9-3b67-9b3661a73d29@arm.com>
 <cc639f743d621198ef02f880089bb54d@www.loen.fr>
From: Steven Price <steven.price@arm.com>
Message-ID: <89a8002f-a9b0-1864-a568-36285eb2c485@arm.com>
Date: Mon, 21 Oct 2019 12:24:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cc639f743d621198ef02f880089bb54d@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_042433_899613_B98EF12E 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEvMTAvMjAxOSAxMTo0MCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTAtMjEg
MTE6MjEsIFN0ZXZlbiBQcmljZSB3cm90ZToKPj4gT24gMTkvMTAvMjAxOSAxMjoxMiwgTWFyYyBa
eW5naWVyIHdyb3RlOgo+Pj4gT24gRnJpLCAxMSBPY3QgMjAxOSAxMzo1OToyNSArMDEwMCwKPj4+
IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSW1w
bGVtZW50IHRoZSBzZXJ2aWNlIGNhbGwgZm9yIGNvbmZpZ3VyaW5nIGEgc2hhcmVkIHN0cnVjdHVy
ZSBiZXR3ZWVuIGEKPj4+PiBWQ1BVIGFuZCB0aGUgaHlwZXJ2aXNvciBpbiB3aGljaCB0aGUgaHlw
ZXJ2aXNvciBjYW4gd3JpdGUgdGhlIHRpbWUKPj4+PiBzdG9sZW4gZnJvbSB0aGUgVkNQVSdzIGV4
ZWN1dGlvbiB0aW1lIGJ5IG90aGVyIHRhc2tzIG9uIHRoZSBob3N0Lgo+Pj4+Cj4+Pj4gVXNlciBz
cGFjZSBhbGxvY2F0ZXMgbWVtb3J5IHdoaWNoIGlzIHBsYWNlZCBhdCBhbiBJUEEgYWxzbyBjaG9z
ZW4gYnkKPj4+PiB1c2VyCj4+Pj4gc3BhY2UuIFRoZSBoeXBlcnZpc29yIHRoZW4gdXBkYXRlcyB0
aGUgc2hhcmVkIHN0cnVjdHVyZSB1c2luZwo+Pj4+IGt2bV9wdXRfZ3Vlc3QoKSB0byBlbnN1cmUg
c2luZ2xlIGNvcHkgYXRvbWljaXR5IG9mIHRoZSA2NC1iaXQgdmFsdWUKPj4+PiByZXBvcnRpbmcg
dGhlIHN0b2xlbiB0aW1lIGluIG5hbm9zZWNvbmRzLgo+Pj4+Cj4+Pj4gV2hlbmV2ZXIgc3RvbGVu
IHRpbWUgaXMgZW5hYmxlZCBieSB0aGUgZ3Vlc3QsIHRoZSBzdG9sZW4gdGltZQo+Pj4+IGNvdW50
ZXIgaXMKPj4+PiByZXNldC4KPj4+Pgo+Pj4+IFRoZSBzdG9sZW4gdGltZSBpdHNlbGYgaXMgcmV0
cmlldmVkIGZyb20gdGhlIHNjaGVkX2luZm8gc3RydWN0dXJlCj4+Pj4gbWFpbnRhaW5lZCBieSB0
aGUgTGludXggc2NoZWR1bGVyIGNvZGUuIFdlIGVuYWJsZSBTQ0hFRFNUQVRTIHdoZW4KPj4+PiBz
ZWxlY3RpbmcgS1ZNIEtjb25maWcgdG8gZW5zdXJlIHRoaXMgdmFsdWUgaXMgbWVhbmluZ2Z1bC4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5j
b20+Cj4+Pj4gLS0tCj4+Pj4gwqBhcmNoL2FybS9pbmNsdWRlL2FzbS9rdm1faG9zdC5owqDCoCB8
IDIwICsrKysrKysrKysrCj4+Pj4gwqBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9ob3N0Lmgg
fCAyMSArKysrKysrKysrKy0KPj4+PiDCoGFyY2gvYXJtNjQva3ZtL0tjb25maWfCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCAxICsKPj4+PiDCoGluY2x1ZGUvbGludXgva3ZtX3R5cGVzLmjCoMKg
wqDCoMKgwqDCoMKgIHzCoCAyICsrCj4+Pj4gwqB2aXJ0L2t2bS9hcm0vYXJtLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSArKysrKysKPj4+PiDCoHZpcnQva3ZtL2FybS9oeXBl
cmNhbGxzLmPCoMKgwqDCoMKgwqDCoMKgIHzCoCAzICsrCj4+Pj4gwqB2aXJ0L2t2bS9hcm0vcHZ0
aW1lLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA1NiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4+Pj4gwqA3IGZpbGVzIGNoYW5nZWQsIDExMyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gWy4uLl0KPiAKPj4+PiArbG9uZyBrdm1faHlwZXJjYWxsX3N0b2xlbl90
aW1lKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKPj4+Cj4+PiBXaHkgbG9uZz8gSWYgdGhhdCdzIGEg
YmFzZSBhZGRyZXNzLCB0aGVuIGl0IGlzIGVpdGhlciBhIHBoeXNfYWRkcl90IG9yCj4+PiBhIGdw
YV90LiBJJ2Qgc3VnZ2VzdCB5b3UgbW92ZSB0aGUgZXJyb3IgY2hlY2sgdG8gdGhlIGNhbGxlci4K
Pj4KPj4gVGhpcyBpcyBhIGJpdCBtb3JlIHRyaWNreS4gSXQncyBhIGxvbmcgYmVjYXVzZSB0aGF0
J3MgdGhlIGRlY2xhcmVkIHR5cGUKPj4gb2YgdGhlIFNNQ0NDIHJldHVybiBpbiBrdm1faHZjX2Nh
bGxfaGFuZGxlcigpLiBJIGNhbid0IChlYXNpbHkpIG1vdmUgdGhlCj4+IGNvZGUgaW50byBrdm1f
aHZjX2NhbGxfaGFuZGxlcigpIGJlY2F1c2UgdGhhdCBpcyBjb21waWxlZCBmb3IgYXJtIChhcwo+
PiB3ZWxsIGFzIGFybTY0KSBhbmQgd2UgZG9uJ3QgaGF2ZSB0aGUgZGVmaW5pdGlvbnMgZm9yIHN0
b2xlbiB0aW1lIHRoZXJlLgo+PiBUaGUgYmVzdCBvcHRpb24gSSBjb3VsZCBjb21lIHVwIHdpdGgg
aXMgdG8gaGF2ZSBhIGR1bW15IHN0dWIgZm9yIGFybSBhbmQKPj4gdXNlIGdlbmVyaWMgdHlwZXMg
Zm9yIHRoaXMgZnVuY3Rpb24uCj4+Cj4+IFRoaXMgbWVhbnMgd2UgbmVlZCBhIHR5cGUgd2hpY2gg
Y2FuIGNvbnRhaW4gYm90aCBhIGdwYV90IGFuZCB0aGUKPj4gU01DQ0NfUkVUX05PVF9TVVBQT1JU
RUQgZXJyb3IgY29kZS4KPj4KPj4gSSdtIG9wZW4gdG8gYWx0ZXJuYXRpdmUgc3VnZ2VzdGlvbnMg
b24gaG93IHRvIG1ha2UgdGhpcyB3b3JrLgo+IAo+IE15IHN1Z2dlc3Rpb24gd291bGQgYmUgdG8g
YWx3YXlzIHJldHVybiBhIGdwYV90IGZyb20gdGhpcyBmdW5jdGlvbiwgYW5kCj4gY2hhbmdlIHRo
ZSAzMmJpdCBzdHViIGZvciBrdm1faHlwZXJjYWxsX3N0b2xlbl90aW1lKCkgdG8gYWx3YXlzIHJl
dHVybgo+IEdQQV9JTlZBTElELgoKT2ssIGZhaXIgZW5vdWdoLiBBbHRob3VnaCBpdCBlbmRzIHVw
IHdpdGggdGhpcyBzdHJhbmdlIGxvb2tpbmcgZnJhZ21lbnQKaW4ga3ZtX2h2Y19jYWxsX2hhbmRs
ZXIoKToKCgljYXNlIEFSTV9TTUNDQ19IVl9QVl9USU1FX1NUOgoJCWdwYSA9IGt2bV9pbml0X3N0
b2xlbl90aW1lKHZjcHUpOwoJCWlmIChncGEgIT0gR1BBX0lOVkFMSUQpCgkJCXZhbCA9IGdwYTsK
CQlicmVhazsKCkJ1dCBJIGFncmVlIHRoZSBncGFfdCByZXR1cm4gdHlwZSBpcyBjbGVhcmVyLgoK
VGhhbmtzLAoKU3RldmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
