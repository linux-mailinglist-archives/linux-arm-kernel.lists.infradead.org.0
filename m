Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF084D227
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9GW0TGR9cmuFqEeXVyfFuyte5/0p/JY4aCxM0B2brs=; b=sbWLLUJdGBiJ3k
	cAJzgK67loDDdIl//Co+AddEi/tkgYU3GUYZDk2kf2UNdTdYuh8TNREY1ETRIqZKvNqbfynOtusZl
	kmMjtG6tH+T7+NZfw14+OM2OgFRpmNyVacnf32UveaaAvegwVCdbBkXseIeNLKxsH6+qFZj3HStb7
	sviL58unHUHdQFYXrbsD/qixUgW2CosJkp4z9BgAb8Hyc+ZvB9GjCsCn9QDelb07FDFgH6axDcFYF
	jZf5wpPKmIHRSK1IVMD/pLIIvsKPe3o/gt9RO9FsJjrmh7OANHCSr60L2a9pZOr4WsKpL8NoQI5JB
	wdKxTI6070HsJpGDogRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyzg-0003Em-BG; Thu, 20 Jun 2019 15:28:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyzM-0003DH-TJ; Thu, 20 Jun 2019 15:28:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5564528;
 Thu, 20 Jun 2019 08:28:34 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0ED2A3F246;
 Thu, 20 Jun 2019 08:28:32 -0700 (PDT)
Subject: Re: [Query] arm64: Right approach to support Image.gz file type via
 kexec_file_load()
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <9d54bb1e-7371-5163-69b0-0af0426ee4a0@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <102e8c0a-d69a-81ee-5652-85a2b901230a@arm.com>
Date: Thu, 20 Jun 2019 16:28:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9d54bb1e-7371-5163-69b0-0af0426ee4a0@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_082837_041690_06B230B9 
X-CRM114-Status: GOOD (  21.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, matthewgarrett@google.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwKCk9uIDE5LzA2LzIwMTkgMjI6MjMsIEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+
IFNpbmNlIG1vc3QgZGlzdHJpYnV0aW9ucyB1c2UgJ21ha2Ugemluc3RhbGwnIHJ1bGUgaW5zaWRl
ICdhcmNoL2FybTY0L2Jvb3QvTWFrZWZpbGUnIChzZWUKPiBbMV0gZm9yIGRldGFpbHMpIHRvIGlu
c3RhbGwgdGhlIGFybTY0IEltYWdlLmd6IGNvbXByZXNzZWQgZmlsZSBpbnNpZGUgdGhlIGJvb3Qg
ZGVzdGluYXRpb24KPiBkaXJlY3RvcnkgKGZvciBlLmcuIC9ib290KSwgY3VycmVudGx5IHdlIGNh
bm5vdCB1c2Uga2V4ZWNfZmlsZV9sb2FkKCkgdG8gbG9hZCB2bWxpbnV6IChvcgo+IEltYWdlLmd6
KToKCkl0J3Mgbm90IGp1c3Qga2V4ZWNfZmlsZV9sb2FkKCksIHdlIGRvbid0IHN1cHBvcnQgYm9v
dGluZyBmcm9tIGNvbXByZXNzZWQgb3IgZWxmIGltYWdlCmZvcm1hdHMgZWl0aGVyOiB0aGUgYm9v
dGxvYWRlciBoYXMgdG8gZGVjb21wcmVzcyBhbnkgSW1hZ2UuZ3ogYmVmb3JlIGl0IGNhbiBydW4g
aXQuCgoKPiAuLi4ga2VybmVsIHJldHVybnMgLUVJTlZBTCBlcnJvciB2YWx1ZSwgYXMgaXQgaXMg
bm90IGFibGUgdG8gbG9jYXRlIHRoZSBtYWdpYyBudW1iZXLCoAo+ID0weDY0NGQ1MjQxLCB3aGlj
aCBpcyBleHBlY3RlZCBpbiB0aGUgNjQtYnl0ZSBoZWFkZXIgb2YgdGhlIGRlY29tcHJlc3NlZCBr
ZXJuZWwgaW1hZ2UKCgo+IEkgY2FuIGZpZ3VyZSBvdXQgdHdvIHdheXMgdG8gYWRkcmVzcyB0aGlz
Ogo+IAo+IDEuIEFkZCBzdXBwb3J0IGluIHVzZXItc3BhY2Uga2V4ZWMtdG9vbHMgKGZvciB3aGlj
aCBJIGhhdmUgYSBSRkMgcGF0Y2ggcmVhZHkpLCB3aGljaAo+IGhhbmRsZXMgYW4gJ0ltYWdlLmd6
JyBiZWluZyBwYXNzZWQgdmlhIGtleGVjX2ZpbGVfbG9hZCgpLCB1c2luZyBhbiBhcHByb2FjaCBh
cyBmb2xsb3dzOgo+IAo+IGEpLiBDb3B5IHRoZSBjb250ZW50cyBvZiBJbWFnZS5neiB0byBhIHRl
bXBvcmFyeSBmaWxlLgo+IGIpLiBEZWNvbXByZXNzIChndW56aXAtZGVjb21wcmVzcykgdGhlIGNv
bnRlbnRzIGluc2lkZSB0aGUgdGVtcG9yYXJ5IGZpbGUuCj4gYykuIFBhc3MgdGhlICdmZCcgb2Yg
dGhlIHRlbXBvcmFyeSBmaWxlIHRvIHRoZSBrZXJuZWwgc3BhY2UuIFNvIGJhc2ljYWxseSB0aGUg
a2VybmVsIHNwYWNlCj4gc3RpbGwgZ2V0cyBhIGRlY29tcHJlc3NlZCBrZXJuZWwgaW1hZ2UgdG8g
bG9hZCB2aWEga2V4ZWNfdG9vbHMKClNvdW5kcyByZWFzb25hYmxlLgooSSBndWVzcyB5b3UgbmVl
ZCB0byBkZWNvbXByZXNzIGl0IGZpcnN0IHRvIGtub3cgdGhlIHNpemUgdG8gcGFzcyB0byBrZXhl
Y19maWxlX2xvYWQoKSwKaGVuY2UgdGhlIGludGVybWVkaWF0ZSBjb3B5KQoKCj4gVGhpcyBzZWVt
cyB0byBoYXZlIHRoZSBmb2xsb3dpbmcgcHJvcyBhbmQgY29ucywgd2hpY2ggSSBjYW4gdGhpbmsg
b2Y6Cj4gCj4gUHJvczoKPiDCoC0gQ2hhbmdlcyBjYW4gYmUgaGFuZGxlZCBpbiB0aGUgdXNlci1z
cGFjZSAoa2V4ZWNfdG9vbHMpIGFuZCBubyBjaGFuZ2VzIGFyZSByZXF1aXJlZCBpbgo+IGtlcm5l
bCBzcGFjZSBmb3IgaGFuZGxpbmcgdGhlIHVuc2lnbmVkL25vbi1zZWN1cmUgYm9vdCBjYXNlLgo+
IAo+IENvbnM6Cj4gwqAtIE9uZSBvYnZpb3VzIGlzc3VlIGlzIGhvdyB0byBoYW5kbGUgdGhlIHNp
Z25lZCBrZXJuZWwgSW1hZ2UuZ3osIGJlY2F1c2Ugc2lnbmF0dXJlCj4gdmVyaWZpY2F0aW9uIGlz
IG1hbmFnZWQgaW5zaWRlIHRoZSBrZXJuZWwsIHNvIGhhbmRsaW5nIGEgc2lnbmVkIEltYWdlLmd6
IHdvdWxkIHJlcXVpcmUKPiBrZXJuZWwgaW50ZXJ2ZW50aW9uIGV2ZW50dWFsbHkuCgpIb3cgZG8g
eW91IHNpZ24gYW4gSW1hZ2UuZ3o/IElzbid0IHRoZSBzaWduYXR1cmUgd3JpdHRlbiBpbnRvIHRo
ZSBQRSBoZWFkZXI/CgoKPiDCoC0gUGFzc2luZyBkZWNvbXByZXNzZWQgaW1hZ2UgZnJvbSB1c2Vy
LXNwYWNlIHJlcXVpcmVzIHRoZSBrZXJuZWwgdG8gcmVhZCBsYXJnZSBhbW91bnQgb2YKPiBkYXRh
IGZyb20gdGhlIHVzZXItc3BhY2UuCgpUaGUga2VybmVsIGNhbid0IGRlY29tcHJlc3MgaXRzZWxm
LCBzbyB0aGlzIGxhcmdlIGFtb3VudCBvZiBkYXRhIGhhcyB0byBiZSBtb3ZlZCBhdCBzb21lCnBv
aW50LgoKCj4gMi4gQWRkIHN1cHBvcnQgaW4ga2VybmVsIChmb3Igd2hpY2ggSSBoYXZlIGEgUkZD
IHBhdGNoIHJlYWR5KSwgd2hpY2ggaGFuZGxlcyBhbiAnSW1hZ2UuZ3onCj4gYmVpbmcgcGFzc2Vk
IHZpYSBrZXhlY19maWxlX2xvYWQoKSwgdXNpbmcgYW4gYXBwcm9hY2ggYXMgZm9sbG93czoKPiAK
PiBhKS4gRGVmaW5lIGEgJ2FyY2hfa2V4ZWNfa2VybmVsX2ltYWdlX3Byb2JlJyBmb3IgYXJtNjQs
IHdoaWNoIG92ZXJyaWRlcyB0aGUgX193ZWFrCj4gZGVmaW5pdGlvbiBpbiAna2VybmVsL2tleGVj
X2ZpbGUuYycKPiBiKS4gSW5zaWRlICdhcmNoX2tleGVjX2tlcm5lbF9pbWFnZV9wcm9iZScgZm9y
IGFybTY0LCBjaGVjayBpZiB3ZSBoYXZlIGJlZW4gcGFzc2VkIGHCoAo+IG1hZ2ljIGhlYWRlcsKg
IDB4MWYsIDB4OGIgKFwwMzcgXDIxMykgd2hpY2ggaW5kaWNhdGVzIGEgJ2d6aXAgZm9ybWF0JyBJ
bWFnZSBmaWxlLgo+IGIpLiBEZWNvbXByZXNzIHRoZSBjb250ZW50cyBpbnNpZGUgYSBidWZmZXIg
dXNpbmcgYSBkZWNvbXByZXNzX2tlcm5lbCgpIC0+IGd1bnppcCgpIC0+Cj4gaW5mbGF0ZSgpIGxv
Z2ljLgo+IAo+IFRoaXMgc2VlbXMgdG8gaGF2ZSB0aGUgZm9sbG93aW5nIHByb3MgYW5kIGNvbnMs
IHdoaWNoIEkgY2FuIHRoaW5rIG9mOgo+IAo+IFByb3M6Cj4gwqAtIEhhbmRsaW5nIHNpZ25lZCBJ
bWFnZS5neiBiZWNvbWVzIGVhc2llciBpbiB0aGUga2VybmVsIGl0c2VsZi4KCkkgZG9uJ3QgZm9s
bG93OiB5b3UgY2FuJ3QgYm9vdCB0aGlzLCBzbyB3aHkgd291bGQgeW91IHNpZ24gaXQ/CgoKPiBD
b25zOgo+IMKgLSBPbmUgbmVlZHMgdG8gYWRkIGEgZGVjb21wcmVzc19rZXJuZWwoKSAtPiBndW56
aXAoKSAtPiBpbmZsYXRlKCkga2luZC1vZiBsb2dpYyBpbiBrZXJuZWwKPiBzcGFjZSB0byBoYW5k
bGUgZ3ppcHAnZWQgaW1hZ2UgZm9yIGFybTY0LgoKV2Ugc3VwcG9ydCBnemlwcGVkIGluaXRyYW1m
cyBzbyB0aGUgY29kZSBhbHJlYWR5IGV4aXN0cy4gTW9yZSBvZiBhIHByb2JsZW0gaXMga2R1bXAg
KHdoaWNoCndlIGRvbid0IHlldCBzdXBwb3J0KSwgd2hpY2ggaGFzIHRvIGZpdCBpbiB0aGUgcmVz
ZXJ2ZWQgY3Jhc2hrZXJuZWwgcmVnaW9uLCBhbmQgd2Ugd29uJ3QKa25vdyB0aGUgc2l6ZSBvZiB0
aGUgY29tcHJlc3NlZCBpbWFnZSB1bnRpbCB3ZSd2ZSBkZWNvbXByZXNzZWQgaXQuIChpdHMganVz
dCBmaWRkbHkpCgoKPiBTbywgSSB3YXMgd29uZGVyaW5nIHdoaWNoIGFwcHJvYWNoIHNob3VsZCBi
ZSBtb3JlIHN1aXRhYmxlIC0gZml4aW5nIHRoaXMgaW4gdXNlci1zcGFjZSB2L3MKPiBmaXggdGhp
cyBpbiBrZXJuZWwtc3BhY2UuCgpBcyB1c2VyLXNwYWNlIGNhbiBkbyB0aGlzLCBJIHRoaW5rIGl0
IHNob3VsZCEKCgpUaGFua3MsCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
