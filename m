Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0636215A723
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OdPKc6ecacRXngi0xQ+r4o1JvKAM7pXni9g9fGRjH24=; b=Dw4qK+1WxAN3HTireh5ah4kzk
	kLd+c4xbAhlXbtQMnPYnkolYGfxdO5vamhDKn+OucEqkYIw8/ttLIEQQY2IHPzZTAVOyHPtVskU5p
	/gXR8XZnYuRTXWsZMYjaxyA7bWSu2uiVBKBD3+h0d5A61qeEQmawOcKwih4pdFKlyex+iAFevRxmo
	HZ7IgHcrdc7DeCr6acue+/izTHM6DvZyyBvu+/09c9miheHn/6Yh5m3kG3tqwmGsMXUpX1DgRo7nz
	31Yx5ubxv3woQznvJ7ir8ohlrLEUSfvG7iZ3HzpoMP25JI1chUAvWnRQz0ds/OVVEiyumECl8o9zg
	i0o67NJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pgk-0005A4-7P; Wed, 12 Feb 2020 10:56:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pga-00059B-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:56:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6060030E;
 Wed, 12 Feb 2020 02:56:03 -0800 (PST)
Received: from [10.37.12.187] (unknown [10.37.12.187])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FCBE3F68F;
 Wed, 12 Feb 2020 02:56:00 -0800 (PST)
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
To: Marc Zyngier <maz@kernel.org>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
 <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <289c6110-b7ea-1d61-d795-551723263803@arm.com>
Date: Wed, 12 Feb 2020 10:55:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_025604_748766_523B4D98 
X-CRM114-Status: GOOD (  24.33  )
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

CgpPbiAyLzEyLzIwIDEwOjEyIEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
MiAxMDowMSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IEhpIElvbmVsYSwgVmFsZW50aW4KPj4KPj4g
T24gMi8xMS8yMCA2OjQ1IFBNLCBJb25lbGEgVm9pbmVzY3Ugd3JvdGU6Cj4+PiBGcm9tOiBWYWxl
bnRpbiBTY2huZWlkZXIgPHZhbGVudGluLnNjaG5laWRlckBhcm0uY29tPgo+Pj4KPj4+IFVzaW5n
IGFuIGFyY2ggdGltZXIgd2l0aCBhIGZyZXF1ZW5jeSBvZiBsZXNzIHRoYW4gMU1IeiBjYW4gcmVz
dWx0IGluIGFuCj4+PiBpbmNvcnJlY3QgZnVuY3Rpb25hbGl0eSBvZiB0aGUgc3lzdGVtIHdoaWNo
IGFzc3VtZXMgYSByZWFzb25hYmxlIHJhdGUuCj4+Pgo+Pj4gT25lIGV4YW1wbGUgaXMgdGhlIHVz
ZSBvZiBhY3Rpdml0eSBtb25pdG9ycyBmb3IgZnJlcXVlbmN5IGludmFyaWFuY2UKPj4+IHdoaWNo
IHVzZXMgdGhlIHJhdGUgb2YgdGhlIGFyY2ggdGltZXIgYXMgdGhlIGtub3duIHJhdGUgb2YgdGhl
IGNvbnN0YW50Cj4+PiBjeWNsZSBjb3VudGVyIGluIGNvbXB1dGluZyBpdHMgcmF0aW8gY29tcGFy
ZWQgdG8gdGhlIG1heGltdW0gZnJlcXVlbmN5Cj4+PiBvZiBhIENQVS4gRm9yIGFyY2ggdGltZXIg
ZnJlcXVlbmNpZXMgbGVzcyB0aGFuIDFNSHogdGhpcyByYXRpbyBjb3VsZAo+Pj4gZW5kIHVwIGJl
aW5nIDAgd2hpY2ggaXMgYW4gaW52YWxpZCB2YWx1ZSBmb3IgaXRzIHVzZS4KPj4+Cj4+PiBUaGVy
ZWZvcmUsIHdhcm4gaWYgdGhlIGFyY2ggdGltZXIgcmF0ZSBpcyBiZWxvdyAxTUh6IHdoaWNoIGNv
bnRyYXZlbmVzCj4+PiB0aGUgcmVjb21tZW5kZWQgYXJjaGl0ZWN0dXJlIGludGVydmFsIG9mIDEg
dG8gNTBNSHouCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSW9uZWxhIFZvaW5lc2N1IDxpb25lbGEu
dm9pbmVzY3VAYXJtLmNvbT4KPj4+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgo+Pj4gQ2M6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+PiAtLS0KPj4+IMKg
IGRyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyB8IDE4ICsrKysrKysrKysrKysr
Ky0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGlt
ZXIuYyAKPj4+IGIvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCj4+PiBpbmRl
eCA5YTU0NjRjNjI1YjQuLjRmYWE5MzBlYWJmOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+Pj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9h
cm1fYXJjaF90aW1lci5jCj4+PiBAQCAtODg1LDYgKzg4NSwxNyBAQCBzdGF0aWMgaW50IGFyY2hf
dGltZXJfc3RhcnRpbmdfY3B1KHVuc2lnbmVkIGludCAKPj4+IGNwdSkKPj4+IMKgwqDCoMKgwqAg
cmV0dXJuIDA7Cj4+PiDCoCB9Cj4+PiDCoCArc3RhdGljIGludCB2YWxpZGF0ZV90aW1lcl9yYXRl
KHZvaWQpCj4+PiArewo+Pj4gK8KgwqDCoCBpZiAoIWFyY2hfdGltZXJfcmF0ZSkKPj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+ICsKPj4+ICvCoMKgwqAgLyogQXJjaCB0aW1l
ciBmcmVxdWVuY3kgPCAxTUh6IGNhbiBjYXVzZSB0cm91YmxlICovCj4+PiArwqDCoMKgIFdBUk5f
T04oYXJjaF90aW1lcl9yYXRlIDwgMTAwMDAwMCk7Cj4+Cj4+IEkgZG9uJ3Qgc2VlIGEgYmlnIHZh
bHVlIG9mIGhhdmluZyBhIHBhdGNoIGp1c3QgdG8gYWRkIG9uZSBleHRyYSB3YXJuaW5nLAo+PiBp
biBhIHNpdHVhdGlvbiB3aGljaCB3ZSBoYW5kbGUgaW4gb3VyIGNvZGUgd2l0aCBpbiA2Lzcgd2l0
aDoKPj4KPj4gK8KgwqDCoCBpZiAoIXJhdGlvKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwcl9lcnIo
IlN5c3RlbSB0aW1lciBmcmVxdWVuY3kgdG9vIGxvdy5cbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FSU5WQUw7Cj4+ICvCoMKgwqAgfQo+Pgo+PiBGdXJ0aGVybW9yZSwgdGhlIHZhbHVl
ICcxMDAwMDAnIGhlcmUgaXMgYmVjYXVzZSBvZiBvdXIgY29kZSBhbmQKPj4gY2FsY3VsYXRpb24g
aW4gdGhlcmUsIHNvIGl0IGRvZXMgbm90IGJlbG9uZyB0byBhcmNoIHRpbWVyLiBTb21lb25lCj4+
IG1pZ2h0IGFzayB3aHkgaXQncyBub3QgMjAwMDAwIG9yIGEgZGVmaW5lIGluIG91ciBoZWFkZXIu
Li4KPj4gT3IgcXVlc3Rpb25zIGFza2luZyB3aHkgZG8geW91IHdhcm4gd2hlbiB0aGF0IGFyY2gg
dGltZXIgYW5kIGNwdSBpcyBub3QKPj4gQU1VIGNhcGFibGUuLi4KPiAKPiBCZWNhdXNlLCBhcyB0
aGUgY29tbWl0IG1lc3NhZ2Ugb3V0bGluZXMgaXQsIHN1Y2ggYSBmcmVxdWVuY3kgaXMgdGVycmli
bHkKPiBvdXQgb2Ygc3BlYz8KCkkgZG9uJ3Qgc2VlIGluIHRoZSBSTSB0aGF0IDwgMU1IeiBpcyB0
ZXJyaWJseSBvdXQgb2Ygc3BlYy4KJ0ZyZXF1ZW5jeQpJbmNyZW1lbnRzIGF0IGEgZml4ZWQgZnJl
cXVlbmN5LCB0eXBpY2FsbHkgaW4gdGhlIHJhbmdlIDEtNTBNSHouCkNhbiBzdXBwb3J0IG9uZSBv
ciBtb3JlIGFsdGVybmF0aXZlIG9wZXJhdGluZyBtb2RlcyBpbiB3aGljaCBpdCAKaW5jcmVtZW50
cyBieSBsYXJnZXIgYW1vdW50cyBhdCBhCmxvd2VyIGZyZXF1ZW5jeSwgdHlwaWNhbGx5IGZvciBw
b3dlci1zYXZpbmcuJwoKVGhlcmUgaXMgZXZlbiBhbiBleGFtcGxlIGhvdyB0byBvcGVyYXRlIGF0
IDIwa0h6IGFuZCBpbmNyZW1lbnQgYnkgNTAwLgoKSSBkb24ndCBrbm93IHRoZSBjb2RlIGlmIGl0
J3Mgc3VwcG9ydGVkLCB0aG91Z2h0LgoKPiAKPj4KPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7
Cj4+PiArfQo+Pj4gKwo+Pj4gwqAgLyoKPj4+IMKgwqAgKiBGb3IgaGlzdG9yaWNhbCByZWFzb25z
LCB3aGVuIHByb2Jpbmcgd2l0aCBEVCB3ZSB1c2Ugd2hpY2hldmVyIAo+Pj4gKG5vbi16ZXJvKQo+
Pj4gwqDCoCAqIHJhdGUgd2FzIHByb2JlZCBmaXJzdCwgYW5kIGRvbid0IHZlcmlmeSB0aGF0IG90
aGVycyBtYXRjaC4gSWYgCj4+PiB0aGUgZmlyc3Qgbm9kZQo+Pj4gQEAgLTkwMCw3ICs5MTEsNyBA
QCBzdGF0aWMgdm9pZCBhcmNoX3RpbWVyX29mX2NvbmZpZ3VyZV9yYXRlKHUzMiAKPj4+IHJhdGUs
IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYXJjaF90aW1l
cl9yYXRlID0gcmF0ZTsKPj4+IMKgwqDCoMKgwqDCoMKgIC8qIENoZWNrIHRoZSB0aW1lciBmcmVx
dWVuY3kuICovCj4+PiAtwqDCoMKgIGlmIChhcmNoX3RpbWVyX3JhdGUgPT0gMCkKPj4+ICvCoMKg
wqAgaWYgKHZhbGlkYXRlX3RpbWVyX3JhdGUoKSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcl93
YXJuKCJmcmVxdWVuY3kgbm90IGF2YWlsYWJsZVxuIik7Cj4+PiDCoCB9Cj4+PiDCoCBAQCAtMTU5
NCw5ICsxNjA1LDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IAo+Pj4gYXJjaF90aW1lcl9hY3BpX2lu
aXQoc3RydWN0IGFjcGlfdGFibGVfaGVhZGVyICp0YWJsZSkKPj4+IMKgwqDCoMKgwqDCoCAqIENO
VEZSUSB2YWx1ZS4gVGhpcyAqbXVzdCogYmUgY29ycmVjdC4KPj4+IMKgwqDCoMKgwqDCoCAqLwo+
Pj4gwqDCoMKgwqDCoCBhcmNoX3RpbWVyX3JhdGUgPSBhcmNoX3RpbWVyX2dldF9jbnRmcnEoKTsK
Pj4+IC3CoMKgwqAgaWYgKCFhcmNoX3RpbWVyX3JhdGUpIHsKPj4+ICvCoMKgwqAgcmV0ID0gdmFs
aWRhdGVfdGltZXJfcmF0ZSgpOwo+Pj4gK8KgwqDCoCBpZiAocmV0KSB7Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgcHJfZXJyKEZXX0JVRyAiZnJlcXVlbmN5IG5vdCBhdmFpbGFibGUuXG4iKTsKPj4+
IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm4gcmV0Owo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgwqDCoCBhcmNoX3RpbWVyX3Vz
ZXNfcHBpID0gYXJjaF90aW1lcl9zZWxlY3RfcHBpKCk7Cj4+Pgo+Pgo+PiBMYXN0bHksIHRoaXMg
aXMgYXJjaCB0aW1lci4KPj4gVG8gaW5jcmVhc2UgY2hhbmNlcyBvZiBnZXR0aW5nIG1lcmdlIHNv
b24sIEkgd291bGQgcmVjb21tZW5kIHRvIGRyb3AKPj4gdGhlIHBhdGNoIGZyb20gdGhpcyBzZXJp
ZXMuCj4gCj4gQW5kPyBJdCBzZWVtcyB0byBhZGRyZXNzIGEgcG90ZW50aWFsIGlzc3VlIHdoZXJl
IHRoZSB0aW1lIGZyZXF1ZW5jeQo+IGlzIG91dCBvZiBzcGVjLCBhbmQgbWFrZXMgc3VyZSB3ZSBk
b24ndCBlbmQgdXAgd2l0aCBhZGRpdGlvbmFsIHByb2JsZW1zCj4gaW4gdGhlIEFNVSBjb2RlLgoK
VGhpcyBwYXRjaCBqdXN0IHByaW50cyB3YXJuaW5nLCBkb2VzIG5vdCBjaGFuZ2UgYW55dGhpbmcg
aW4gYm9vdGluZyBvcgppbiBhbnkgY29kZSByZWxhdGVkIHRvIEFNVS4KCj4gCj4gT24gaXRzIG93
biwgaXQgaXMgcGVyZmVjdGx5IHNlbnNpYmxlIGFuZCBjb3VsZCBiZSBtZXJnZWQgYXMgcGFydCBv
ZiB0aGlzCj4gc2VyaWVzIHdpdGggbXkKPiAKPiBBY2tlZC1ieTogTWFyYyBaeW5naWVyIDxtYXpA
a2VybmVsLm9yZz4KPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KClJlZ2FyZHMsCkx1a2FzegoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
