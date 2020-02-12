Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95CB15A81A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VFm+ih4jM8q9a61lepq2/ytJ1qRwD4M96IhBXEMkVg8=; b=bfpVB75AWSWLzOZwEI57iqO98
	uIuuhBYoln/crH1Bzm/MNfSUGkp1Mim+9cYqYFZ8d9LqCXTzv7ArhbeoJJFQTAqBgXGcg4v15GMkk
	Vj4brecjwPWl7OVyQy+DCOuDBfX5ZxqQ28ewL6DCVo5w/4X03qO6lczPeGvmIWFsChWXk83gND32h
	YRtJ97CzHnQD+W34o6tgdUY5B5vJU7PgmsBBp68EW7gG9LRsSWGQ3tJcqjcu3Dh8+CkqTxt1TEwmz
	1BMeYN74K0V282pTT6jFH/rBtVwG1lAVHhgrNBZuBrOaZ8J4yWQfOIYzveTLVGm/f/9A7RMQaTkWX
	IAfEpCstw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qQR-0000Cn-EA; Wed, 12 Feb 2020 11:43:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qQK-0000Bb-8Z
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:43:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D1EF30E;
 Wed, 12 Feb 2020 03:43:18 -0800 (PST)
Received: from [10.37.12.187] (unknown [10.37.12.187])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 487C53F68F;
 Wed, 12 Feb 2020 03:43:14 -0800 (PST)
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
To: Marc Zyngier <maz@kernel.org>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
 <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
 <289c6110-b7ea-1d61-d795-551723263803@arm.com>
 <f01a6384e7297de87a434e83bd1479d8@kernel.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <b7b0f4c6-cf59-e390-a67b-cfe3ff50a61f@arm.com>
Date: Wed, 12 Feb 2020 11:43:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f01a6384e7297de87a434e83bd1479d8@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_034320_394125_9D0BF3C0 
X-CRM114-Status: GOOD (  25.79  )
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
Cc: mark.rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 Ionela Voinescu <ionela.voinescu@arm.com>, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzEyLzIwIDExOjEwIEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
MiAxMDo1NSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IE9uIDIvMTIvMjAgMTA6MTIgQU0sIE1hcmMg
WnluZ2llciB3cm90ZToKPj4+IE9uIDIwMjAtMDItMTIgMTA6MDEsIEx1a2FzeiBMdWJhIHdyb3Rl
Ogo+Pj4+IEhpIElvbmVsYSwgVmFsZW50aW4KPj4+Pgo+Pj4+IE9uIDIvMTEvMjAgNjo0NSBQTSwg
SW9uZWxhIFZvaW5lc2N1IHdyb3RlOgo+Pj4+PiBGcm9tOiBWYWxlbnRpbiBTY2huZWlkZXIgPHZh
bGVudGluLnNjaG5laWRlckBhcm0uY29tPgo+Pj4+Pgo+Pj4+PiBVc2luZyBhbiBhcmNoIHRpbWVy
IHdpdGggYSBmcmVxdWVuY3kgb2YgbGVzcyB0aGFuIDFNSHogY2FuIHJlc3VsdCAKPj4+Pj4gaW4g
YW4KPj4+Pj4gaW5jb3JyZWN0IGZ1bmN0aW9uYWxpdHkgb2YgdGhlIHN5c3RlbSB3aGljaCBhc3N1
bWVzIGEgcmVhc29uYWJsZSByYXRlLgo+Pj4+Pgo+Pj4+PiBPbmUgZXhhbXBsZSBpcyB0aGUgdXNl
IG9mIGFjdGl2aXR5IG1vbml0b3JzIGZvciBmcmVxdWVuY3kgaW52YXJpYW5jZQo+Pj4+PiB3aGlj
aCB1c2VzIHRoZSByYXRlIG9mIHRoZSBhcmNoIHRpbWVyIGFzIHRoZSBrbm93biByYXRlIG9mIHRo
ZSAKPj4+Pj4gY29uc3RhbnQKPj4+Pj4gY3ljbGUgY291bnRlciBpbiBjb21wdXRpbmcgaXRzIHJh
dGlvIGNvbXBhcmVkIHRvIHRoZSBtYXhpbXVtIGZyZXF1ZW5jeQo+Pj4+PiBvZiBhIENQVS4gRm9y
IGFyY2ggdGltZXIgZnJlcXVlbmNpZXMgbGVzcyB0aGFuIDFNSHogdGhpcyByYXRpbyBjb3VsZAo+
Pj4+PiBlbmQgdXAgYmVpbmcgMCB3aGljaCBpcyBhbiBpbnZhbGlkIHZhbHVlIGZvciBpdHMgdXNl
Lgo+Pj4+Pgo+Pj4+PiBUaGVyZWZvcmUsIHdhcm4gaWYgdGhlIGFyY2ggdGltZXIgcmF0ZSBpcyBi
ZWxvdyAxTUh6IHdoaWNoIGNvbnRyYXZlbmVzCj4+Pj4+IHRoZSByZWNvbW1lbmRlZCBhcmNoaXRl
Y3R1cmUgaW50ZXJ2YWwgb2YgMSB0byA1ME1Iei4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTog
SW9uZWxhIFZvaW5lc2N1IDxpb25lbGEudm9pbmVzY3VAYXJtLmNvbT4KPj4+Pj4gQ2M6IE1hcmsg
UnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+Pj4+IENjOiBNYXJjIFp5bmdpZXIgPG1h
ekBrZXJuZWwub3JnPgo+Pj4+PiAtLS0KPj4+Pj4gwqAgZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1f
YXJjaF90aW1lci5jIHwgMTggKysrKysrKysrKysrKysrLS0tCj4+Pj4+IMKgIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jIAo+Pj4+PiBiL2RyaXZl
cnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+Pj4+PiBpbmRleCA5YTU0NjRjNjI1YjQu
LjRmYWE5MzBlYWJmOCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1f
YXJjaF90aW1lci5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGlt
ZXIuYwo+Pj4+PiBAQCAtODg1LDYgKzg4NSwxNyBAQCBzdGF0aWMgaW50IGFyY2hfdGltZXJfc3Rh
cnRpbmdfY3B1KHVuc2lnbmVkIAo+Pj4+PiBpbnQgY3B1KQo+Pj4+PiDCoMKgwqDCoMKgIHJldHVy
biAwOwo+Pj4+PiDCoCB9Cj4+Pj4+IMKgICtzdGF0aWMgaW50IHZhbGlkYXRlX3RpbWVyX3JhdGUo
dm9pZCkKPj4+Pj4gK3sKPj4+Pj4gK8KgwqDCoCBpZiAoIWFyY2hfdGltZXJfcmF0ZSkKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+PiArCj4+Pj4+ICvCoMKgwqAgLyog
QXJjaCB0aW1lciBmcmVxdWVuY3kgPCAxTUh6IGNhbiBjYXVzZSB0cm91YmxlICovCj4+Pj4+ICvC
oMKgwqAgV0FSTl9PTihhcmNoX3RpbWVyX3JhdGUgPCAxMDAwMDAwKTsKPj4+Pgo+Pj4+IEkgZG9u
J3Qgc2VlIGEgYmlnIHZhbHVlIG9mIGhhdmluZyBhIHBhdGNoIGp1c3QgdG8gYWRkIG9uZSBleHRy
YSAKPj4+PiB3YXJuaW5nLAo+Pj4+IGluIGEgc2l0dWF0aW9uIHdoaWNoIHdlIGhhbmRsZSBpbiBv
dXIgY29kZSB3aXRoIGluIDYvNyB3aXRoOgo+Pj4+Cj4+Pj4gK8KgwqDCoCBpZiAoIXJhdGlvKSB7
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHByX2VycigiU3lzdGVtIHRpbWVyIGZyZXF1ZW5jeSB0b28g
bG93LlxuIik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+ICvCoMKg
wqAgfQo+Pj4+Cj4+Pj4gRnVydGhlcm1vcmUsIHRoZSB2YWx1ZSAnMTAwMDAwJyBoZXJlIGlzIGJl
Y2F1c2Ugb2Ygb3VyIGNvZGUgYW5kCj4+Pj4gY2FsY3VsYXRpb24gaW4gdGhlcmUsIHNvIGl0IGRv
ZXMgbm90IGJlbG9uZyB0byBhcmNoIHRpbWVyLiBTb21lb25lCj4+Pj4gbWlnaHQgYXNrIHdoeSBp
dCdzIG5vdCAyMDAwMDAgb3IgYSBkZWZpbmUgaW4gb3VyIGhlYWRlci4uLgo+Pj4+IE9yIHF1ZXN0
aW9ucyBhc2tpbmcgd2h5IGRvIHlvdSB3YXJuIHdoZW4gdGhhdCBhcmNoIHRpbWVyIGFuZCBjcHUg
aXMgbm90Cj4+Pj4gQU1VIGNhcGFibGUuLi4KPj4+Cj4+PiBCZWNhdXNlLCBhcyB0aGUgY29tbWl0
IG1lc3NhZ2Ugb3V0bGluZXMgaXQsIHN1Y2ggYSBmcmVxdWVuY3kgaXMgdGVycmlibHkKPj4+IG91
dCBvZiBzcGVjPwo+Pgo+PiBJIGRvbid0IHNlZSBpbiB0aGUgUk0gdGhhdCA8IDFNSHogaXMgdGVy
cmlibHkgb3V0IG9mIHNwZWMuCj4+ICdGcmVxdWVuY3kKPj4gSW5jcmVtZW50cyBhdCBhIGZpeGVk
IGZyZXF1ZW5jeSwgdHlwaWNhbGx5IGluIHRoZSByYW5nZSAxLTUwTUh6Lgo+PiBDYW4gc3VwcG9y
dCBvbmUgb3IgbW9yZSBhbHRlcm5hdGl2ZSBvcGVyYXRpbmcgbW9kZXMgaW4gd2hpY2ggaXQKPj4g
aW5jcmVtZW50cyBieSBsYXJnZXIgYW1vdW50cyBhdCBhCj4+IGxvd2VyIGZyZXF1ZW5jeSwgdHlw
aWNhbGx5IGZvciBwb3dlci1zYXZpbmcuJwo+IAo+IEhpbnQ6IGNvbnN0YW50IGFwcGFyZW50IGZy
ZXF1ZW5jeS4KPiAKPj4gVGhlcmUgaXMgZXZlbiBhbiBleGFtcGxlIGhvdyB0byBvcGVyYXRlIGF0
IDIwa0h6IGFuZCBpbmNyZW1lbnQgYnkgNTAwLgo+Pgo+PiBJIGRvbid0IGtub3cgdGhlIGNvZGUg
aWYgaXQncyBzdXBwb3J0ZWQsIHRob3VnaHQuCj4gCj4gWW91J3JlIGNvbXBsZXRlbHkgbWlzc2lu
ZyB0aGUgcG9pbnQsIEknbSBhZnJhaWQuIE5vYm9keSBoYXMgdG8ga25vdyB0aGF0Cj4gdGhpcyBp
cyBoYXBwZW5pbmcuIEZvciBhbGwgaW50ZW50IGFuZCBwdXJwb3NlcywgdGhlIGNvdW50ZXIgaGFz
IGFsd2F5cwo+IHRoZSBzYW1lIGZyZXF1ZW5jeSwgZXZlbiBpZiB0aGUgSFcgZG9lcyBmZXdlciB0
aWNrcyBvZiBsYXJnZXIgaW5jcmVtZW50cy4KCkZhaXIgZW5vdWdoLiBBcyBJIHNhaWQgSSBkb24n
dCBrbm93IGRldGFpbHMgb2YgdGhhdCBjb2RlLgoKPiAKPiAKPiBbLi4uXQo+IAo+Pj4+IExhc3Rs
eSwgdGhpcyBpcyBhcmNoIHRpbWVyLgo+Pj4+IFRvIGluY3JlYXNlIGNoYW5jZXMgb2YgZ2V0dGlu
ZyBtZXJnZSBzb29uLCBJIHdvdWxkIHJlY29tbWVuZCB0byBkcm9wCj4+Pj4gdGhlIHBhdGNoIGZy
b20gdGhpcyBzZXJpZXMuCj4+Pgo+Pj4gQW5kPyBJdCBzZWVtcyB0byBhZGRyZXNzIGEgcG90ZW50
aWFsIGlzc3VlIHdoZXJlIHRoZSB0aW1lIGZyZXF1ZW5jeQo+Pj4gaXMgb3V0IG9mIHNwZWMsIGFu
ZCBtYWtlcyBzdXJlIHdlIGRvbid0IGVuZCB1cCB3aXRoIGFkZGl0aW9uYWwgcHJvYmxlbXMKPj4+
IGluIHRoZSBBTVUgY29kZS4KPj4KPj4gVGhpcyBwYXRjaCBqdXN0IHByaW50cyB3YXJuaW5nLCBk
b2VzIG5vdCBjaGFuZ2UgYW55dGhpbmcgaW4gYm9vdGluZyBvcgo+PiBpbiBhbnkgY29kZSByZWxh
dGVkIHRvIEFNVS4KPiAKPiBJdCBzZWVtcyB0byBzb2x2ZSBhbiBpc3N1ZSB3aXRoIGFuIGFzc3Vt
cHRpb24gbWFkZSBpbiB0aGUgQU1VIGRyaXZlciwKPiBhbmQgd291bGQgaGVscCBkZWJ1Z2dpbmcg
dGhlIHByb2JsZW0gb24gYnJva2VuIHN5c3RlbXMuIEFyZSB5b3Ugc2F5aW5nCj4gdGhhdCB0aGlz
IGlzIG5vdCB0aGUgY2FzZSBhbmQgdGhhdCB0aGUgQU1VIGNvZGUgY2FuIHBlcmZlY3RseSBjb3Bl
IHdpdGgKPiB0aGUgZnJlcXVlbmN5IGJlaW5nIGxlc3MgdGhhbiAxTUh6PwoKV2hhdCBJIHdhcyBz
YXlpbmcgaXMgdGhhdCBwYXRjaCA2LzcgaGFzIHRoZSBjb2RlIHdoaWNoIGNoZWNrcyB0aGUgcmF0
ZQphbmQgcmVhY3RzLCBzbyBpdCBkb2VzIG5vdCBuZWVkIHRoaXMgcGF0Y2guIEluIGNhc2Ugb2Yg
aGVscGluZyB3aXRoCmRlYnVnZ2luZywgdGhlIHBhdGNoIDYvNyBhbHNvIHByaW50cyBlcnJvcgoi
U3lzdGVtIHRpbWVyIGZyZXF1ZW5jeSB0b28gbG93IiBhbmQgYmFpbHMgb3V0LgpUaGUgY29tbWl0
IG1lc3NhZ2UgY291bGQgaGF2ZSBiZXR0ZXIgZW1waGFzaXplIGl0LgoKUmVnYXJkcywKTHVrYXN6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
