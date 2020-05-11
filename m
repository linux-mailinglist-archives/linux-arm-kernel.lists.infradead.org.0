Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6DA1CDA74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMrIII0MdpLCdVuoJvkEYrW148letUV35SY/5rxbJ9w=; b=dGJKge+mTLM+BX
	P5sKSHNG3r+mBw9rigZ4acQFZSRzulRb1nOQSCJKs9xwSPbIwmer+xEdSVxMrHAMqRr1qIO7tUFmk
	G9TFcl3QAMlA35X0d90/b/j+059KaCn2GKuaEYLSW47hD/ArLd73EGi70KV1hpPQh9KGv6wcq+glE
	tvIflKsiBakoQpMOdW+u2XTVhSU/2x3MbcSmX32a8LQc9tFeYrwj1xDry+lwwUcB2lq4jYO0SxqFM
	pJRkQ4BsllMxJr163Wq+qJQ/agOMUYKFhseYcnWsO9OBnyF386hae0KlljNkBWMcn4aor333s8pwP
	7If/lR2DIAF/wbA4zGfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7sH-0002QF-3M; Mon, 11 May 2020 12:49:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7s8-0002PV-Rm; Mon, 11 May 2020 12:49:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECE5ED6E;
 Mon, 11 May 2020 05:49:27 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B86F93F68F;
 Mon, 11 May 2020 05:49:26 -0700 (PDT)
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
 <20200510155159.GA27924@Mani-XPS-13-9360>
 <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
 <20200511112014.GA3322@Mani-XPS-13-9360>
 <87569683-509e-96e6-17f9-c1734a8b32d4@arm.com>
 <20200511120458.GB3322@Mani-XPS-13-9360>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <68aa739c-f2fe-a739-f8ed-5683cba90b23@arm.com>
Date: Mon, 11 May 2020 13:48:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511120458.GB3322@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_054928_987398_7A16F55B 
X-CRM114-Status: GOOD (  26.31  )
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
Cc: linux-actions@lists.infradead.org, cristian.ciocaltea@gmail.com,
 vkoul@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Amit Tomer <amittomer25@gmail.com>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDUvMjAyMCAxMzowNCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgoKSGksCgo+
IE9uIE1vbiwgTWF5IDExLCAyMDIwIGF0IDEyOjQ0OjI2UE0gKzAxMDAsIEFuZHLDqSBQcnp5d2Fy
YSB3cm90ZToKPj4gT24gMTEvMDUvMjAyMCAxMjoyMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+Pgo+PiBIaSwKPj4KPj4+IE9uIE1vbiwgTWF5IDExLCAyMDIwIGF0IDA0OjE1OjU3UE0g
KzA1MzAsIEFtaXQgVG9tZXIgd3JvdGU6Cj4+Pj4gSGkKPj4+Pgo+Pj4+IFRoYW5rcyBmb3IgdGhl
IHJlcGx5Lgo+Pj4+Cj4+Pj4+IEknbSBpbiBmYXZvciBvZiBnZXR0aW5nIHJpZCBvZiBiaXRmaWVs
ZHMgZHVlIHRvIGl0cyBub3Qgc28gZGVmaW5lZCB3YXkgb2YKPj4+Pj4gd29ya2luZyAoYW5kIGZv
cmdpdmUgbWUgZm9yIHVzaW5nIGl0IGluIGZpcnN0IHBsYWNlKSBidXQgSSBkb24ndCBxdWl0ZSBs
aWtlCj4+Pj4+IHRoZSBjdXJyZW50IGFwcHJvYWNoLgo+Pj4+Cj4+Pj4gQmVjYXVzZSAsIGl0cyBs
ZXNzIHJlYWRhYmxlIHRoZSB3YXkgd2UgYXJlIHdyaXRpbmcgdG8gdGhvc2UgZGlmZmVyZW50IGZp
ZWxkcyA/Cj4+Pj4gQnV0IHRoaXMgY2FuIGJlIG1hZGUgbW9yZSB2ZXJib3NlIGJ5IGFkZGluZyBz
b21lIGNvbW1lbnRzIGFyb3VuZCAuCj4+Pj4KPj4+Cj4+PiBJIGRvbid0IGxpa2UgdGhlIHdheSB0
aGUgaHcgbGlua2VkIGxpc3RzIGFyZSBhY2Nlc3NlZCAodXNpbmcgYW4gYXJyYXkgd2l0aAo+Pj4g
ZW51bXMpLgo+Pgo+PiBCdXQgaG9uZXN0bHkgdGhpcyBpcyB0aGUgbW9zdCBzYW5lIHdheSBvZiBk
b2luZyB0aGlzLCBzZWUgYmVsb3cuCj4+Cj4+Pj4+IFJhdGhlciBJJ2QgbGlrZSB0byBoYXZlIGN1
c3RvbSBiaXRtYXNrcyAoUzkwMC9TNzAwL1M1MDA/KSBmb3Igd3JpdGluZyB0byB0aG9zZQo+Pj4+
PiBmaWVsZHMuCj4+Pj4+Cj4+Pj4gSSB0aGluayBTOTAwIGFuZCBTNTAwIGFyZSBzYW1lIGFzIHBv
aW50ZWQgb3V0IGJ5IENyaXN0aWFuLiBhbmQgSSBkaWRuJ3QgZ2V0IGJ5Cj4+Pj4gY3JlYXRpbmcg
Y3VzdG9tIGJpdG1hc2tzIGZvciBpdCA/Cj4+Pj4KPj4+PiBEaWQgeW91IG1lYW4gZnVuY3Rpb24g
bGlrZToKPj4+Pgo+Pj4+IGxsaS0+aHdbT1dMX0RNQURFU0NfRkxFTl09IGxsY19od19GTEVOKGxl
biwgRkNOVF9WQUxVRSwgRkNOVF9TSElGVCk7Cj4+Pj4KPj4+Cj4+PiBJIG1lYW50IHRvIGtlZXAg
dXNpbmcgb2xkIHN0cnVjdCBmb3IgYWNjZXNzaW5nIHRoZSBsaW5rZWQgbGlzdCBhbmQgcmVwbGFj
aW5nCj4+PiBiaXRmaWVsZHMgd2l0aCBtYXNrcyBhcyBiZWxvdzoKPj4+Cj4+PiBzdHJ1Y3Qgb3ds
X2RtYV9sbGlfaHcgewo+Pj4gCS4uLgo+Pj4gICAgICAgICB1MzIgICAgIGZsZW47Cj4+PiAgICAg
ICAgIHUzMiAgICAgZmNudDsKPj4+IAkuLi4KPj4+IH07Cj4+Cj4+IEFuZCBpcyB0aGluayB0aGlz
IGlzIHRoZSB3cm9uZyB3YXkgb2YgbW9kZWxsaW5nIGhhcmR3YXJlIGRlZmluZWQKPj4gcmVnaXN0
ZXIgZmllbGRzLiBDIHN0cnVjdHMgaGF2ZSBubyBndWFyYW50ZWUgb2Ygbm90IGludHJvZHVjaW5n
IHBhZGRpbmcKPj4gaW4gYmV0d2VlbiBmaWVsZHMsIHRoZSBvbmx5IGd1YXJhbnRlZSB5b3UgZ2V0
IGlzIHRoYXQgdGhlIGZpcnN0IG1lbWJlcgo+PiBoYXMgbm8gcGFkZGluZyAqYmVmb3JlKiBpdDoK
Pj4gQyBzdGFuZGFyZCwgc2VjdGlvbiA2LjcuMi4xLCBlbmQgb2YgcGFyYWdyYXBoIDE1Ogo+PiAi
VGhlcmUgbWF5IGJlIHVubmFtZWQgcGFkZGluZyB3aXRoaW4gYSBzdHJ1Y3R1cmUgb2JqZWN0LCBi
dXQgbm90IGF0IGl0cwo+PiBiZWdpbm5pbmcuIgo+Pgo+PiBBcnJheXMgaW4gQyBvbiB0aGUgY29u
dHJhcnkgaGF2ZSB2ZXJ5IG11Y2ggdGhpcyBndWFyYW50ZWU6IFRoZSBtZW1iZXJzCj4+IGFyZSBu
ZXh0IHRvIGVhY2ggb3RoZXIsIG5vIHBhZGRpbmcuCj4+Cj4+IEkgc2VlIHRoYXQgc3RydWN0cyBh
cmUgc29tZXRpbWVzIHVzZWQgaW4gdGhpcyBmdW5jdGlvbiwgYnV0IGl0J3MgbXVjaAo+PiBsZXNz
IGNvbW1vbiBpbiB0aGUga2VybmVsIHRoYW4gaW4gb3RoZXIgcHJvamVjdHMgKFUtQm9vdCBjb21l
cyB0byBtaW5kKS4KPj4gSXQgdHlwaWNhbGx5IHdvcmtzLCBiZWNhdXNlIGNvbW1vbiBjb21waWxl
ciAqaW1wbGVtZW50YXRpb25zKiBwcm92aWRlCj4+IHRoaXMgZ3VhcmFudGVlLCBidXQgd2Ugc2hv
dWxkIG5vdCByZWx5IG9uIHRoaXMuCj4+Cj4+IFNvOgo+PiBVc2luZyBlbnVtcyBmb3IgdGhlIGtl
eXMgcHJvdmlkZXMgYSBuYXR1cmFsIHdheSBvZiBpbmNyZWFzaW5nIGluZGljZXMsCj4+IHdpdGhv
dXQgZ2Fwcy4gQWxzbyB5b3UgZ2V0IHRoaXMgbmljZSBhbmQgYXV0b21hdGljIHNpemUgdmFsdWUg
YnkgbWFraW5nCj4+IHRoaXMgdGhlIGxhc3QgbWVtYmVyIG9mIHRoZSBlbnVtLgo+PiBBcnJheXMg
cHJvdmlkZSB0aGUgZ3VhcmFudGVlIG9mIGNvbnNlY3V0aXZlIGFsbG9jYXRpb24uCj4+Cj4gCj4g
SSBhZ3JlZSB3aXRoIHlvdXIgY29uY2VybnMgb2YgdXNpbmcgc3RydWN0IGZvciBkZWZpbmluZyBy
ZWdpc3RlcnMuIEJ1dCB3ZSBjYW4KPiBzYWZlbHkgbGl2ZSB3aXRoIHRoZSBleGlzdGluZyBpbXBs
ZW1lbnRhdGlvbiBzaW5jZSBhbGwgZmllbGRzIGFyZSB1MzIgYW5kIGlmCgpCdXQgd2h5LCBhY3R1
YWxseT8gSSBjYW4gdW5kZXJzdGFuZCB0aGF0IHRoaXMgaXMgZG9uZSBpbiBleGlzdGluZyBjb2Rl
LApiZWNhdXNlIHRoaXMgd2FzIGRvbmUgaW4gdGhlIHBhc3QgYW5kIGFwcGFyZW50bHkgbmV2ZXIg
Y2hhbGxlbmdlZC4gQW5kCnNpbmNlIGl0IHNlZW1zIHRvIHdvcmssIGF0IGxlYXN0LCB0aGVyZSBp
cyBwcm9iYWJseSBub3QgbXVjaCByZWFzb24gdG8KY2hhbmdlIGl0LCBqdXN0IGZvciB0aGUgc2Fr
ZSBvZiBpdC4KQnV0IGlmIHdlIG5lZWQgdG8gcmV3b3JrIHRoaXMgYW55d2F5LCB3ZSBzaG91bGQg
ZG8gdGhlIHJpZ2h0IHRoaW5nLiBUaGlzCmlzIGVzcGVjaWFsbHkgdHJ1ZSBpbiB0aGUgTGludXgg
a2VybmVsLCB3aGljaCBpcyBoaWdobHkgY3JpdGljYWwgYW5kCnByaXZpbGVnZWQgY29kZSBhbmQg
YWxzbyBhaW1zIHRvIGJlIHZlcnkgcG9ydGFibGUuIFdlIHNob3VsZCB0YWtlIG5vCmNoYW5jZXMg
aGVyZS4KCkhvbmVzdGx5IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgYWR2YW50YWdlIG9mIHVzaW5n
IGEgc3RydWN0IGhlcmUsCmVzcGVjaWFsbHkgaWYgeW91IG5lZWQgdG8gcGxheSBzb21lIHRyaWNr
cyAoX19wYWNrZWRfXykgdG8gbWFrZSBpdCB3b3JrLgpTbyB3aHkgaXM6Cglody0+ZmxlbgpzbyBt
dWNoIGJldHRlciB0aGFuCglod1tETUFfRkxFTl0KdGhhdCBpdCBqdXN0aWZpZXMgdG8gaW50cm9k
dWNlIGRvZGd5IGNvZGU/CgpJbiB0aGluayBpbiBnZW5lcmFsIHdlIHNob3VsZCBiZSBtdWNoIG1v
cmUgY2FyZWZ1bCB3aGVuIHVzaW5nIEMgbGFuZ3VhZ2UKY29uc3RydWN0cyB0byBhY2Nlc3MgaGFy
ZHdhcmUgb3IgaGFyZHdhcmUgZGVmaW5lZCBkYXRhIHN0cnVjdHVyZXMsIGFuZApiZSBpdCB0byBu
b3QgZ2l2ZSBwZW9wbGUgdGhlIHdyb25nIGlkZWEgYWJvdXQgdGhpcy4KSSB0aGluayB3aXRoIHRo
ZSBhZHZhbmNlIG9mIG1vcmUgb3B0aW1pc2luZyBjb21waWxlcnMgKGFuZCwgc29tZXdoYXQKcmVs
YXRlZCwgbW9yZSBvdXQtb2Ytb3JkZXIgQ1BVcykgdGhlIGNoYW5jZSBvZiBicmVha2FnZSBiZWNv
bWVzIG11Y2gKaGlnaGVyIGhlcmUuCgpDaGVlcnMsCkFuZHJlLgoKPiBuZWVkZWQgd2UgY2FuIGFs
c28gYWRkICdfX3BhY2tlZCcgZmxhZyB0byBpdCB0byBhdm9pZCBwYWRkaW5nIGZvciBhbnkgY2Fz
ZXMuCj4gCj4gVGhlIHJlYXNvbiB3aHkgSSBwcmVmZXIgdG8gc3RpY2sgdG8gdGhpcyBpcywgdGhp
cyBpcyBhIGhhcmR3YXJlIGxpbmtlZCBsaXN0IGFuZAo+IGJ5IGRlZmluaW5nIGl0IGFzIGFuIGFy
cmF5IGFuZCBhY2Nlc3NpbmcgdGhlIGZpZWxkcyB1c2luZyBlbnVtcyBsb29rcyBhd2Z1bCB0bwo+
IG1lLiBPdGhlciB0aGFuIHRoYXQgdGhlcmUgaXMgbm8gcmVhbCBqdXN0aWZpY2F0aW9uIHRvIHNo
eSBhd2F5Lgo+IAo+IFdoZW4geW91IGFyZSBtb2RlbGxpbmcgYSBwbGFpbiByZWdpc3RlciBiYW5r
ICh3aGljaCB3ZSBhcmUgYWxzbyBkb2luZyBpbiB0aGlzCj4gZHJpdmVyKSwgSSdkIHByZWZlciB0
byB1c2UgdGhlIGRlZmluZXMgZGlyZWN0bHkuCj4gCj4+IFdlIGNhbiBzdXJlbHkgaGF2ZSBhIGxv
b2sgYXQgdGhlIG1hc2tpbmcgcHJvYmxlbSwgYnV0IHRoaXMgd291bGQgbmVlZCB0bwo+PiBiZSBy
dW50aW1lIGRldGVybWluZWQgbWFza3MsIHdoaWNoIHRlbmQgdG8gYmVjb21lICJ3b3JkeSIuIFRo
ZXJlIGNhbiBiZQo+PiBzaW1wbGlmaWNhdGlvbnMsIGZvciBpbnN0YW5jZSBJIGNvdWxkbid0IGZp
bmQgd2hlcmUgdGhlIGZyYW1lIGxlbmd0aCBpcwo+PiByZWFsbHkgbGltaXRlZCBmb3IgdGhlIFM5
MDAgKGl0IG11c3QgYmUgbGVzcyB0aGFuIDFNQikuIFNpbmNlIHRoZSBTNzAwCj4+IHN1cHBvcnRz
ICptb3JlKiB0aGFuIHRoYXQsIHRoZXJlIGlzIG5vIG5lZWQgdG8gbGltaXQgdGhpcyBkaWZmZXJl
bnRseS4KPiAKPiBJIHdhcyBqdXN0IGdpdmluZyBhbiBleGFtcGxlIG9mIGhvdyB0byBoYW5kbGUg
dGhlIGJpdG1hc2tzIGZvciBkaWZmZXJlbnQKPiBTb0NzIGlmIG5lZWRlZC4gU28geWVhaCBpZiBp
dCBjYW4gYmUgYXZvaWRlZCwgZmVlbCBmcmVlIHRvIGRyb3AgaXQuCj4gCj4gVGhhbmtzLAo+IE1h
bmkKPiAKPj4KPj4gQ2hlZXJzLAo+PiBBbmRyZS4KPj4KPj4KPj4+Cj4+PiBody0+ZmxlbiA9IGxl
biAmIE9XTF9TOTAwX0RNQV9GTEVOX01BU0s7Cj4+PiBody0+ZmNudCA9IDEgJiBPV0xfUzkwMF9E
TUFfRkNOVF9NQVNLOwo+Pj4KPj4+IFRoZW4geW91IGNhbiB1c2UgZGlmZmVyZW50IG1hc2tzIGZv
ciBTNzAwL1M5MDAgYmFzZWQgb24gdGhlIGNvbXBhdGlibGUuCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4g
TWFuaQo+Pj4KPj4+PiBUaGFua3MKPj4+PiAtQW1pdAo+PgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
