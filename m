Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83998FFFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXMnaW6bXu7a6d9aEbmjSgFJQa0UsbsEVfRQM+Ddt9g=; b=ZIqOMnsS3dY2c+
	y20ZcU9hefd/pWV6g/Gl+TeN5TPFF9uB7F+PWt5xW3b+Rfc2Zp6nQMkfgVcDCQsg61ZQmNkGmVryZ
	/fLP6bT4JlbKW/jdTBGuHSw7qATvw0YAKJOKwe0PjHGkJebkXvUKJB3paoV9jj4xWUBsP0uNs+kDe
	49gMFNGPyJ0jK8+z7dddoKqUlGS0nn1YjUX/t73VeBV6ZSSV9Eo0NnEwSr+OiTGpGIyjBQMW5zBXE
	GDYidoxo9w+iDSW2fuikifLiFV2jragiz4ICrR4AsZuat2qshXJph6YZ/FvrzERqWHkZ8Z50hLRDv
	QMvZl2dR4hE4r1rPSNBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZP8-00030v-C8; Fri, 16 Aug 2019 10:24:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZOp-0002zu-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:24:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B72A928;
 Fri, 16 Aug 2019 03:23:57 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 621223F706;
 Fri, 16 Aug 2019 03:23:56 -0700 (PDT)
Subject: Re: [UNVERIFIED SENDER] Re: [PATCH 0/9] arm64: Stolen time support
To: Alexander Graf <graf@amazon.com>, Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190803190522.5fec8f7d@why> <6789f477-8ab5-cc54-1ad2-8627917b07c9@arm.com>
 <8ca5c106-7c12-4c6e-6d81-a90f281a9894@amazon.com>
 <8636i3omnd.wl-maz@kernel.org>
 <bda4e0f7-e5f4-32af-e998-00b6240b5260@amazon.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <4e811196-fa57-f523-8df6-0243886fb83a@arm.com>
Date: Fri, 16 Aug 2019 11:23:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bda4e0f7-e5f4-32af-e998-00b6240b5260@amazon.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_032359_981974_ADB47586 
X-CRM114-Status: GOOD (  39.36  )
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDgvMjAxOSAxNTo1MiwgQWxleGFuZGVyIEdyYWYgd3JvdGU6Cj4gCj4gCj4gT24gMTQu
MDguMTkgMTY6MTksIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gV2VkLCAxNCBBdWcgMjAxOSAx
NDowMjoyNSArMDEwMCwKPj4gQWxleGFuZGVyIEdyYWYgPGdyYWZAYW1hem9uLmNvbT4gd3JvdGU6
Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiAwNS4wOC4xOSAxNTowNiwgU3RldmVuIFByaWNlIHdyb3RlOgo+
Pj4+IE9uIDAzLzA4LzIwMTkgMTk6MDUsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+Pj4gT24gRnJp
LMKgIDIgQXVnIDIwMTkgMTU6NTA6MDggKzAxMDAKPj4+Pj4gU3RldmVuIFByaWNlIDxzdGV2ZW4u
cHJpY2VAYXJtLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IEhpIFN0ZXZlbiwKPj4+Pj4KPj4+Pj4+
IFRoaXMgc2VyaWVzIGFkZCBzdXBwb3J0IGZvciBwYXJhdmlydHVhbGl6ZWQgdGltZSBmb3IgYXJt
NjQgZ3Vlc3RzIGFuZAo+Pj4+Pj4gS1ZNIGhvc3RzIGZvbGxvd2luZyB0aGUgc3BlY2lmaWNhdGlv
biBpbiBBcm0ncyBkb2N1bWVudCBERU4gMDA1N0E6Cj4+Pj4+Pgo+Pj4+Pj4gaHR0cHM6Ly9kZXZl
bG9wZXIuYXJtLmNvbS9kb2NzL2RlbjAwNTcvYQo+Pj4+Pj4KPj4+Pj4+IEl0IGltcGxlbWVudHMg
c3VwcG9ydCBmb3Igc3RvbGVuIHRpbWUsIGFsbG93aW5nIHRoZSBndWVzdCB0bwo+Pj4+Pj4gaWRl
bnRpZnkgdGltZSB3aGVuIGl0IGlzIGZvcmNpYmx5IG5vdCBleGVjdXRpbmcuCj4+Pj4+Pgo+Pj4+
Pj4gSXQgZG9lc24ndCBpbXBsZW1lbnQgc3VwcG9ydCBmb3IgTGl2ZSBQaHlzaWNhbCBUaW1lIChM
UFQpIGFzIHRoZXJlCj4+Pj4+PiBhcmUKPj4+Pj4+IHNvbWUgY29uY2VybnMgYWJvdXQgdGhlIG92
ZXJoZWFkcyBhbmQgYXBwcm9hY2ggaW4gdGhlIGFib3ZlCj4+Pj4+PiBzcGVjaWZpY2F0aW9uLCBh
bmQgSSBleHBlY3QgYW4gdXBkYXRlZCB2ZXJzaW9uIG9mIHRoZQo+Pj4+Pj4gc3BlY2lmaWNhdGlv
biB0bwo+Pj4+Pj4gYmUgcmVsZWFzZWQgc29vbiB3aXRoIGp1c3QgdGhlIHN0b2xlbiB0aW1lIHBh
cnRzLgo+Pj4+Pgo+Pj4+PiBUaGFua3MgZm9yIHBvc3RpbmcgdGhpcy4KPj4+Pj4KPj4+Pj4gTXkg
Y3VycmVudCBjb25jZXJuIHdpdGggdGhpcyBzZXJpZXMgaXMgYXJvdW5kIHRoZSBmYWN0IHRoYXQg
d2UKPj4+Pj4gYWxsb2NhdGUKPj4+Pj4gbWVtb3J5IGZyb20gdGhlIGtlcm5lbCBvbiBiZWhhbGYg
b2YgdGhlIGd1ZXN0LiBJdCBpcyB0aGUgZmlyc3QgZXhhbXBsZQo+Pj4+PiBvZiBzdWNoIHRoaW5n
IGluIHRoZSBBUk0gcG9ydCwgYW5kIEkgY2FuJ3QgcmVhbGx5IHNheSBJJ20gZm9uZCBvZiBpdC4K
Pj4+Pj4KPj4+Pj4geDg2IHNlZW1zIHRvIGdldCBhd2F5IHdpdGggaXQgYnkgaGF2aW5nIHRoZSBt
ZW1vcnkgYWxsb2NhdGVkIGZyb20KPj4+Pj4gdXNlcnNwYWNlLCB3aHkgSSB0ZW5kIHRvIGxpa2Ug
bW9yZS4gWWVzLCBwdXRfdXNlciBpcyBtb3JlCj4+Pj4+IGV4cGVuc2l2ZSB0aGFuIGEgc3RyYWln
aHQgc3RvcmUsIGJ1dCB0aGlzIGlzbid0IGRvbmUgdG9vIG9mdGVuIGVpdGhlci4KPj4+Pj4KPj4+
Pj4gV2hhdCBpcyB0aGUgcmF0aW9uYWwgZm9yIHlvdXIgY3VycmVudCBhcHByb2FjaD8KPj4+Pgo+
Pj4+IEFzIEkgc2VlIGl0IHRoZXJlIGFyZSAzIGFwcHJvYWNoZXMgdGhhdCBjYW4gYmUgdGFrZW4g
aGVyZToKPj4+Pgo+Pj4+IDEuIEh5cGVydmlzb3IgYWxsb2NhdGVzIG1lbW9yeSBhbmQgYWRkcyBp
dCB0byB0aGUgdmlydHVhbCBtYWNoaW5lLiBUaGlzCj4+Pj4gbWVhbnMgdGhhdCBldmVyeXRoaW5n
IHRvIGRvIHdpdGggdGhlICdkZXZpY2UnIGlzIGVuY2Fwc3VsYXRlZCBiZWhpbmQKPj4+PiB0aGUK
Pj4+PiBLVk1fQ1JFQVRFX0RFVklDRSAvIEtWTV9bR1NdRVRfREVWSUNFX0FUVFIgaW9jdGxzLiBC
dXQgc2luY2Ugd2Ugd2FudAo+Pj4+IHRoZQo+Pj4+IHN0b2xlbiB0aW1lIHN0cnVjdHVyZSB0byBi
ZSBmYXN0IGl0IGNhbm5vdCBiZSBhIHRyYXBwaW5nIHJlZ2lvbiBhbmQgaGFzCj4+Pj4gdG8gYmUg
YmFja2VkIGJ5IHJlYWwgbWVtb3J5IC0gaW4gdGhpcyBjYXNlIGFsbG9jYXRlZCBieSB0aGUgaG9z
dAo+Pj4+IGtlcm5lbC4KPj4+Pgo+Pj4+IDIuIEhvc3QgdXNlciBzcGFjZSBhbGxvY2F0ZXMgbWVt
b3J5LiBTaW1pbGFyIHRvIGFib3ZlLCBidXQgdGhpcyB0aW1lCj4+Pj4gdXNlciBzcGFjZSBuZWVk
cyB0byBtYW5hZ2UgdGhlIG1lbW9yeSByZWdpb24gYXMgd2VsbCBhcyB0aGUgdXN1YWwKPj4+PiBL
Vk1fQ1JFQVRFX0RFVklDRSBkYW5jZS4gSSd2ZSBubyBvYmplY3Rpb24gdG8gdGhpcywgYnV0IGl0
IG1lYW5zCj4+Pj4ga3ZtdG9vbC9RRU1VIG5lZWRzIHRvIGJlIG11Y2ggbW9yZSBhd2FyZSBvZiB3
aGF0IGlzIGdvaW5nIG9uIChlLmcuIGhvdwo+Pj4+IHRvIHNpemUgdGhlIG1lbW9yeSByZWdpb24p
Lgo+Pj4KPj4+IFlvdSBpZGVhbGx5IHdhbnQgdG8gZ2V0IHRoZSBob3N0IG92ZXJoZWFkIGZvciBh
IFZNIHRvIGFzIGxpdHRsZSBhcyB5b3UKPj4+IGNhbi4gSSdtIG5vdCB0ZXJyaWJseSBmb25kIG9m
IHRoZSBpZGVhIG9mIHJlc2VydmluZyBhIGZ1bGwgcGFnZSBqdXN0Cj4+PiBiZWNhdXNlIHdlJ3Jl
IHRvbyBhZnJhaWQgb2YgaGF2aW5nIHRoZSBndWVzdCBkb25hdGUgbWVtb3J5Lgo+Pgo+PiBXZWxs
LCByZWR1Y2UgdGhlIGFtb3VudCBvZiBtZW1vcnkgeW91IGdpdmUgdG8gdGhlIGd1ZXN0IGJ5IG9u
ZSBwYWdlLAo+PiBhbmQgYWxsb2NhdGUgdGhhdCBwYWdlIHRvIHRoZSBzdG9sZW4gdGltZSBkZXZp
Y2UuIFByb2JsZW0gc29sdmVkIQo+Pgo+PiBTZXJpb3VzbHksIGlmIHlvdSdyZSB3b3JyaWVkIGFi
b3V0IHRoZSBhbGxvY2F0aW9uIG9mIGEgc2luZ2xlIHBhZ2UsCj4+IHlvdSBzaG91bGQgZmlyc3Qg
bG9vayBhdCBob3cgbWFueSBob2xlcyB3ZSBoYXZlIGluIHRoZSB2Y3B1IHN0cnVjdHVyZSwKPj4g
Zm9yIGV4YW1wbGUgKGV2ZW4gYmV0dGVyLCB3aXRoIHRoZSA4LjQgTlYgcGF0Y2hlcyBhcHBsaWVk
KS4gSnVzdAo+PiBmaXhpbmcgdGhhdCB3b3VsZCBnaXZlIHlvdSB0aGF0IHBhZ2UgYmFjayAqcGVy
IHZjcHUqLgo+IAo+IEknbSB3b3JyaWVkIGFib3V0IGFkZGl0aW9uYWwgbWVtb3J5IHNsb3RzLCBh
Ym91dCBmcmFnbWVudGluZyB0aGUKPiBjYWNoYWJsZSBndWVzdCBtZW1vcnkgcmVnaW9ucywgYWJv
dXQgYXZvaWRhYmxlIEhWIHRheGVzLgo+IAo+IEkgdGhpbmsgd2UgbmVlZCB0byBkaXN0aW5ndWlz
aCBoZXJlIGJldHdlZW4gdGhlIEtWTSBpbXBsZW1lbnRhdGlvbiBhbmQKPiB0aGUgaHlwZXJ2aXNv
ci9ndWVzdCBpbnRlcmZhY2UuIEp1c3QgYmVjYXVzZSBpbiBLVk0gd2UgY2FuIHNhdmUgb3Zlcmhl
YWQKPiB0b2RheSBkb2Vzbid0IG1lYW4gdGhhdCB0aGUgSFYgaW50ZXJmYWNlIHNob3VsZCBiZSBi
dWlsdCBhcm91bmQgdGhlCj4gYXNzdW1wdGlvbiB0aGF0ICJtZW1vcnkgaXMgZnJlZSIuCgpUaGUg
SFYgaW50ZXJmYWNlIGp1c3QgcmVxdWlyZXMgdGhhdCB0aGUgaG9zdCBwcm92aWRlcyBzb21lIG1l
bW9yeSBmb3IKdGhlIHN0cnVjdHVyZXMgdG8gbGl2ZSBpbi4gVGhlIG1lbW9yeSBjYW4gYmUgYWRq
YWNlbnQgKG9yIGV2ZW4gd2l0aGluKQp0aGUgbm9ybWFsIG1lbW9yeSBvZiB0aGUgZ3Vlc3QuIFRo
ZSBvbmx5IHJlcXVpcmVtZW50IGlzIHRoYXQgdGhlIGd1ZXN0Cmlzbid0IHRvbGQgdG8gdXNlIHRo
aXMgbWVtb3J5IGZvciBub3JtYWwgYWxsb2NhdGlvbnMgKGkuZS4gaXQgc2hvdWxkCmVpdGhlciBi
ZSBleHBsaWNpdGx5IHJlc2VydmVkIG9yIGp1c3Qgbm90IGNvbnRhaW5lZCB3aXRoaW4gdGhlIG5v
cm1hbAptZW1vcnkgYmxvY2spLgoKPj4KPj4+PiAzLiBHdWVzdCBrZXJuZWwgImRvbmF0ZXMiIHRo
ZSBtZW1vcnkgdG8gdGhlIGh5cGVydmlzb3IgZm9yIHRoZQo+Pj4+IHN0cnVjdHVyZS4gQXMgZmFy
IGFzIEknbSBhd2FyZSB0aGlzIGlzIHdoYXQgeDg2IGRvZXMuIFRoZSBwcm9ibGVtcyBJCj4+Pj4g
c2VlCj4+Pj4gdGhpcyBhcHByb2FjaCBhcmU6Cj4+Pj4KPj4+PiDCoMKgIGEpIGtleGVjIGJlY29t
ZXMgbXVjaCBtb3JlIHRyaWNreSAtIHRoZXJlIG5lZWRzIHRvIGJlIGEgZGlzYWJsaW5nCj4+Pj4g
bWVjaGFuaXNtIGZvciB0aGUgZ3Vlc3QgdG8gc3RvcCB0aGUgaHlwZXJ2aXNvciBzY3JpYmJsaW5n
IG9uIG1lbW9yeQo+Pj4+IGJlZm9yZSBzdGFydGluZyB0aGUgbmV3IGtlcm5lbC4KPj4+Cj4+PiBJ
IHdvdWxkbid0IGNhbGwgInF1aWVzY2UgYSBkZXZpY2UiIG11Y2ggbW9yZSB0cmlja3kuIFdlIGhh
dmUgdG8gZG8KPj4+IHRoYXQgZm9yIG90aGVyIGRldmljZXMgYXMgd2VsbCB0b2RheS4KPj4KPj4g
QW5kIHNpbmNlIHRoZXJlIGlzIG5vIHN0YW5kYXJkIHdheSBvZiBkb2luZyBpdCwgd2Uga2VlcCBp
bnZlbnRpbmcKPj4gd2VpcmQgYW5kIHdvbmRlcmZ1bCB3YXlzIG9mIGRvaW5nIHNvIC0tIGN1ZSB0
aGUgdGVycmlibGUgR0lDdjMgTFBJCj4+IHNpdHVhdGlvbiwgYW5kIGFsbCB0aGUgdmFyaW91cyBo
YWNrcyB0byBrZWVwIGV4aXN0aW5nIElPTU1VIG1hcHBpbmdzCj4+IGFyb3VuZCBhY3Jvc3MgZmly
bXdhcmUva2VybmVsIGhhbmRvdmVycyBhcyB3ZWxsIGFzIGtleGVjLgo+IAo+IFdlbGwsIHRoZSBn
b29kIG5ld3MgaGVyZSBpcyB0aGF0IHdlIGRvbid0IGhhdmUgdG8ga2VlcCBpdCBhcm91bmQgOyku
Cj4gCj4+Cj4+Pgo+Pj4+IMKgwqAgYikgSWYgdGhlcmUgaXMgbW9yZSB0aGFuIG9uZSBlbnRpdHkg
dGhhdCBpcyBpbnRlcmVzdGVkIGluIHRoZQo+Pj4+IGluZm9ybWF0aW9uIChlLmcuIGZpcm13YXJl
IGFuZCBrZXJuZWwpIHRoZW4gdGhpcyByZXF1aXJlcyBzb21lIGZvcm0gb2YKPj4+PiBhcmJpdHJh
dGlvbiBpbiB0aGUgZ3Vlc3QgYmVjYXVzZSB0aGUgaHlwZXJ2aXNvciBkb2Vzbid0IHdhbnQgdG8g
aGF2ZSB0bwo+Pj4+IHRyYWNrIGFuIGFyYml0cmFyeSBudW1iZXIgb2YgcmVnaW9ucyB0byB1cGRh
dGUuCj4+Pgo+Pj4gV2h5IHdvdWxkIEZXIGNhcmU/Cj4+Cj4+IEV4YWN0bHkuIEl0IGRvZXNuJ3Qg
Y2FyZS4gTm90IGNhcmluZyBtZWFucyBpdCBkb2Vzbid0IGtub3cgYWJvdXQgdGhlCj4+IHBhZ2Ug
dGhlIGd1ZXN0IGhhcyBhbGxvY2F0ZWQgZm9yIHN0b2xlbiB0aW1lLCBhbmQgc3RhcnRzIHVzaW5n
IGl0IGZvcgo+PiBpdHMgb3duIHB1cnBvc2VzLiBIZWxsbywgbWVtb3J5IGNvcnJ1cHRpb24uIFNh
bWUgdGhpbmcgZ29lcyBpZiB5b3UKPj4gcmVib290IGludG8gYSBub24gc3RvbGVuIHRpbWUgYXdh
cmUga2VybmVsLgo+IAo+IElmIHlvdSByZWJvb3QsIHlvdSBnbyB2aWEgdGhlIHZjcHUgcmVzZXQg
cGF0aCB3aGljaCBjbGVhcnMgdGhlIG1hcCwgbm8/Cj4gU2FtZSBnb2VzIGZvciBGVyBlbnRyeS4g
SWYgeW91IGVudGVyIGZpcm13YXJlIHRoYXQgZG9lcyBub3Qgc2V0IHVwIHRoZQo+IG1hcCwgeW91
IG5ldmVyIHNlZSBpdC4KCkRvaW5nIHRoaXMgcGVyLXZjcHUgaW1wbGllcyB5b3UgYXJlIHByb2Jh
Ymx5IGdvaW5nIHRvIGhhdmUgdG8gYWxsb2NhdGUKYW4gZW50aXJlIHBhZ2UgcGVyIHZjcHUuIEJl
Y2F1c2UgaXQncyBlbnRpcmVseSBwb3NzaWJsZSBmb3IgYSBndWVzdCB0bwpyZXNldCBhbiBpbmRp
dmlkdWFsIHZjcHUuIE9yIGF0IHRoZSBsZWFzdCB0aGVyZSdzIHNvbWUgbWVzc3kgcmVmZXJlbmNl
CmNvdW50aW5nIGdvaW5nIG9uIGhlcmUuCgpIYXZpbmcgYSByZWdpb24gb2YgbWVtb3J5IHByb3Zp
ZGVkIGJ5IHRoZSBob3N0IG1lYW5zIHRoZSBzdHJ1Y3R1cmVzIGNhbgpiZSBwYWNrZWQgYW5kIHRo
ZXJlJ3Mgbm90aGluZyB0byBiZSBkb25lIGluIHRoZSByZXNldCBwYXRoLgoKPj4KPj4+Cj4+Pj4g
wqDCoCBjKSBQZXJmb3JtYW5jZSBjYW4gc3VmZmVyIGlmIHRoZSBob3N0IGtlcm5lbCBkb2Vzbid0
IGhhdmUgYSBzdWl0YWJseQo+Pj4+IGFsaWduZWQvc2l6ZWQgYXJlYSB0byB1c2UuIEFzIHlvdSBz
YXkgLSBwdXRfdXNlcigpIGlzIG1vcmUgZXhwZW5zaXZlLgo+Pj4KPj4+IEp1c3QgZGVmaW5lIHRo
ZSBpbnRlcmZhY2UgdG8gYWx3YXlzIHJlcXVpcmUgbmF0dXJhbCBhbGlnbm1lbnQgd2hlbgo+Pj4g
ZG9uYXRpbmcgYSBtZW1vcnkgbG9jYXRpb24/Cj4+Pgo+Pj4+IFRoZSBzdHJ1Y3R1cmUgaXMgdXBk
YXRlZCBvbiBldmVyeSByZXR1cm4gdG8gdGhlIFZNLgo+Pj4KPj4+IElmIHlvdSByZWFsbHkgZG8g
c3VmZmVyIGZyb20gcHV0X3VzZXIoKSwgdGhlcmUgYXJlIGFsdGVybmF0aXZlcy4gWW91Cj4+PiBj
b3VsZCBqdXN0IG1hcCB0aGUgcGFnZSBvbiB0aGUgcmVnaXN0cmF0aW9uIGhjYWxsIGFuZCB0aGVu
IGxlYXZlIGl0Cj4+PiBwaW5uZWQgdW50aWwgdGhlIHZjcHUgZ2V0cyBkZXN0cm95ZWQgYWdhaW4u
Cj4+Cj4+IHB1dF91c2VyKCkgc2hvdWxkIGJlIGNoZWFwIGVub3VnaC4gSXQgaXMgb25lIG9mIHRo
ZSB0aGluZ3Mgd2UgdGVuZCB0bwo+PiBvcHRpbWlzZSBhbnl3YXkuIEFuZCB5ZXMsIHdvcnNlIGNh
c2UsIHdlIHBpbiB0aGUgcGFnZS4KPj4KPj4+Cj4+Pj4gT2YgY291cnNlIHg4NiBkb2VzIHByb3Zl
IHRoZSB0aGlyZCBhcHByb2FjaCBjYW4gd29yaywgYnV0IEknbSBub3Qgc3VyZQo+Pj4+IHdoaWNo
IGlzIGFjdHVhbGx5IGJldHRlci4gQXZvaWQgdGhlIGtleGVjIGNhbmNlbGxhdGlvbiByZXF1aXJl
bWVudHMgd2FzCj4+Pj4gdGhlIG1haW4gZHJpdmVyIG9mIHRoZSBjdXJyZW50IGFwcHJvYWNoLiBB
bHRob3VnaCBtYW55IG9mIHRoZQo+Pj4KPj4+IEkgcmVhbGx5IGRvbid0IHVuZGVyc3RhbmQgdGhl
IHByb2JsZW0gd2l0aCBrZXhlYyBjYW5jZWxsYXRpb24uIFdvcnN0Cj4+PiBjYXNlLCBsZXQgZ3Vl
c3QgRlcgc2V0IGl0IHVwIGZvciB5b3UgYW5kIHByb3BhZ2F0ZSBvbmx5IHRoZSBhZGRyZXNzCj4+
PiBkb3duIHZpYSBBQ1BJL0RULiBUaGF0IHdheSB5b3UgY2FuIG1hcmsgdGhlIHJlc3BlY3RpdmUg
bWVtb3J5IGFzCj4+PiByZXNlcnZlZCB0b28uCj4+Cj4+IFdlIGFscmVhZHkgd2VudCBkb3duIHRo
YXQgcm9hZCB3aXRoIHRoZSBMUEkgaGFjay4gSSdtIG5vdCBnb2luZyB0aGVyZQo+PiBhZ2FpbiBp
ZiB3ZSBjYW4gYXZvaWQgaXQuIEFuZCBpdCB0dXJuIG91dCB0aGF0IHdlIGNhbi4gSnVzdCBhbGxv
Y2F0ZQo+PiB0aGUgc3RvbGVuIHRpbWUgcGFnZSBhcyBhIHNlcGFyYXRlIG1lbWJsb2NrLCBnaXZl
IGl0IHRvIEtWTSBmb3IgdGhhdAo+PiBwdXJwb3NlLgo+Pgo+PiBZb3VyIHN1Z2dlc3Rpb24gb2Yg
bGV0dGluZyB0aGUgZ3Vlc3QgZmlybXdhcmUgc2V0IHNvbWV0aGluZyB1cCBvbmx5Cj4+IHdvcmtz
IGlmIHdoYXRldmVyIHlvdSdyZSBib290aW5nIGFmdGVyIHRoYXQgdW5kZXJzdGFuZHMgaXQuIElm
IGl0Cj4+IGRvZXNuJ3QsIHlvdSdyZSBzY3Jld2VkLgo+IAo+IFdoeT8gRm9yIFVFRkksIG1hcmsg
dGhlIHJlZ2lvbiBhcyByZXNlcnZlZCBpbiB0aGUgbWVtb3J5IG1hcC4gRm9yIERULAo+IGp1c3Qg
bWFyayBpdCBzdHJhaWdodCBvbiByZXNlcnZlZC4KPiAKPiBUaGF0IHNhaWQsIEknbSBub3QgYWR2
b2NhdGluZyBmb3IgZG9pbmcgaXQgaW4gdGhlIEZXLiBJIHRoaW5rIHRoaXMgY2FuCj4gYmUgc29s
dmVkIHJlYWxseSBlYXNpbHkgd2l0aCBhIHNpbXBsZSBndWVzdCBkcml2ZXIgdG8gZW5hYmxlIGFu
ZCBhIHZjcHUKPiByZXNldCBob29rIHRvIGRpc2FibGUgdGhlIG1hcC4KPiAKPj4KPj4+IEJ1dCBl
dmVuIHdpdGggYSBMaW51eCBvbmx5IG1lY2hhbmlzbSwganVzdCB0YWtlIGEgbG9vayBhdAo+Pj4g
YXJjaC94ODYva2VybmVsL2t2bWNsb2NrLmMuIEFsbCB0aGV5IGRvIHRvIHJlbW92ZSB0aGUgbWFw
IGlzIHRvIGhvb2sKPj4+IGludG8gbWFjaGluZV9jcmFzaF9zaHV0ZG93bigpIGFuZCBtYWNoaW5l
X3NodXRkb3duKCkuCj4+Cj4+IEknbSBub3QgZ29pbmcgdG8gdGFrZSBzb21ldGhpbmcgdGhhdCBp
cyBMaW51eCBzcGVjaWZpYy4gSXQgaGFzIHRvIHdvcmsKPj4gZm9yIGFsbCBndWVzdHMsIGF0IGFs
bCB0aW1lcywgd2hldGhlciB0aGV5IGtub3cgYWJvdXQgdGhlIGh5cGVydmlzb3IKPj4gc2Vydmlj
ZSBvciBub3QuCj4gCj4gSWYgdGhleSBkb24ndCBrbm93IGFib3V0IHRoZSBIViBzZXJ2aWNlLCB0
aGV5IGRvbid0IHJlZ2lzdGVyIHRoZSB3cml0ZXIsCj4gc28gdGhleSBkb24ndCBzZWUgY29ycnVw
dGlvbi4KPiAKPiBJZiB0aGV5IGtub3cgYWJvdXQgdGhlIEhWIHNlcnZpY2UgYW5kIHRoZXkgZG9u
J3Qgc3VwcG9ydCBrZXhlYywgdGhleQo+IGRvbid0IGhhdmUgdG8gd29ycnkgYmVjYXVzZSBhIHZj
cHUgcmVzZXQgc2hvdWxkIGFsc28gY2xlYXIgdGhlIG1hcC4KPiAKPiBJZiB0aGV5IGRvIHN1cHBv
cnQga2V4ZWMsIHRoZXkgYWxyZWFkeSBoYXZlIGEgbWVjaGFuaXNtIHRvIHF1aWVzY2UgZGV2aWNl
cy4KPiAKPiBTbyBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHRoaXMgaXMgTGludXggc3BlY2lmaWM/
IFRoZSBxdWVzdGlvbiB3YXMgTGludXgKPiBzcGVjaWZpYywgc28gSSBhbnN3ZXJlZCB3aXRoIHBy
ZWNlZGVuY2UgdG8gc2hvdyB0aGF0IGRpc2FibGluZyBvbiBrZXhlYwo+IGlzIG5vdCBhbGwgdGhh
dCBoYXJkIDopLgoKTXkgY29uY2VybiBpcyBtb3JlIGFyb3VuZCBhIHNvbWV0aGluZyBsaWtlIEph
aWxob3VzZSBhcyBhCmd1ZXN0LWh5cGVydmlzb3IuIFRoZXJlIExpbnV4IGdpdmVzIHVwIENQVXMg
dG8gcnVuIGFub3RoZXIgT1MuIFRoaXMKaGFuZC1vZmYgb2YgYSBDUFUgaXMgbXVjaCBlYXNpZXIg
aWYgdGhlcmUncyBqdXN0IGEgc3RydWN0dXJlIGluIG1lbW9yeQpzb21ld2hlcmUgd2hpY2ggZG9l
c24ndCBtb3ZlLgoKVGhlIGtleGVjIGNhc2UgbGlrZSB5b3Ugc2F5IGNhbiBiZSBoYW5kbGVkIGFz
IGEgZGV2aWNlIHRvIHF1aWVzY2UuCgpJIGRvbid0IHRoaW5rIGVpdGhlciBzY2hlbWUgaXMgdW53
b3JrYWJsZSwgYnV0IEkgZG8gdGhpbmsgZ2V0dGluZyB0aGUKaG9zdCB0byBwcm92aWRlIHRoZSBt
ZW1vcnkgaXMgZWFzaWVyIGZvciBib3RoIGd1ZXN0IGFuZCBob3N0LiBNYXJjIGhhZCBhCmdvb2Qg
cG9pbnQgdGhhdCBnZXR0aW5nIHVzZXIgc3BhY2UgdG8gYWxsb2NhdGUgdGhlIG1lbW9yeSBpcyBw
cm9iYWJseQpwcmVmZXJhYmxlIHRvIGdldHRpbmcgdGhlIGhvc3Qga2VybmVsIHRvIGRvIHNvLCBz
byBJJ20gcmV3b3JraW5nIHRoZQpjb2RlIHRvIGRvIHRoYXQuCgpTdGV2ZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
