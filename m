Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC911484C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F/LAyieZYpxunXyQu7C/6zkE/qIdvcCxM5kZryMbt9Y=; b=UQWA0wSK3Rdt/5TrJMrYkhR/v
	VscwYO5ddBXpBhlFJ7a8V30cA5sbHySDdK2VuPpl8owRf1yMfc/j3QF/MMiu7fwjGkHNP3JD0URqp
	E1rAeSt7LnjcXDPGi/CDOKlwHIQCvOI+NhqfBe5AvMKpKGkjj++umFgwIXD9PgnPGNBmKfFNCGZo2
	9BfXppYqtlLXZcyDjCHFwI5Pdc9MHPL0c43p1KUsgUEj4TC0U+6LaHsGhOZjdSgIKo5xBkCvj5GJO
	yUbhmzchrtvtCu3CswloacvLwLSlVVLvViLKTo4G65b04ZnTPfQ1iM8NMSMHIhaTxUADpKPSws/S8
	CfudbiDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxc5-0002dK-1o; Fri, 24 Jan 2020 11:59:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxbs-0002ce-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:58:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F26111FB;
 Fri, 24 Jan 2020 03:58:45 -0800 (PST)
Received: from [10.1.196.51] (a075563-lin.cambridge.arm.com [10.1.196.51])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 621813F68E;
 Fri, 24 Jan 2020 03:58:44 -0800 (PST)
Subject: Re: [PATCH v4 01/17] arm64: cpufeature: Fix meta-capability
 cpufeature check
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
 <1579774839-19562-2-git-send-email-amit.kachhap@arm.com>
 <13e3aa5c-a7e8-69be-3bbe-006d0c43fb8b@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <b4c3e3bf-ec3f-5493-f099-f2701b9294e0@arm.com>
Date: Fri, 24 Jan 2020 11:58:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <13e3aa5c-a7e8-69be-3bbe-006d0c43fb8b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_035849_094303_AD1D562C 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, catalin.marinas@arm.com,
 kristina.martsenko@arm.com, dave.martin@arm.com, broonie@kernel.org,
 james.morse@arm.com, ramana.radhakrishnan@arm.com, Vincenzo.Frascino@arm.com,
 will@kernel.org, ardb@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMS8yMy8yMCAxMTowNyBQTSwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBIaSBBbWl0Cj4gCj4gT24gMDEvMjMvMjAyMCAxMDoyMCBBTSwgQW1pdCBEYW5pZWwgS2FjaGhh
cCB3cm90ZToKPj4gU29tZSBleGlzdGluZyBtZXRhIGNwdWNhcHMgbWF0Y2ggbmVlZHMgdGhlIHBy
ZXNlbmNlIG9mIGluZGl2aWR1YWwKPj4gY3B1Y2Fwcy4gQ3VycmVudGx5IHRoZSBpbmRpdmlkdWFs
IGNwdWNhcHMgY2hlY2tzIGl0IHZpYSBhbiBhcnJheQo+PiBiYXNlZCBmbGFnIGFuZCB0aGlzIGlu
dHJvZHVjZXMgZGVwZW5kZW5jeSBvbiB0aGUgYXJyYXkgZW50cnkgb3JkZXIuCj4+IFRoaXMgbGlt
aXRhdGlvbiBleGlzdHMgb25seSBmb3Igc3lzdGVtIHNjb3BlIGNwdWZlYXR1cmUuCj4+Cj4+IFRo
aXMgcGF0Y2ggaW50cm9kdWNlcyBhIGhlbHBlciBmdW5jdGlvbiAoc3lzdGVtX2hhc19jYXApIHRv
IGludm9rZQo+PiB0aGUgbWF0Y2hpbmcgaGFuZGxlciBmb3Igc3lzdGVtIHNjb3BlLiBUaGlzIGlz
IHNpbWlsYXIgdG8gdGhlCj4+IGV4aXN0aW5nIGhlbHBlciBmdW5jdGlvbiAodGhpc19jcHVfaGFz
X2NhcCkgZm9yIGxvY2FsIGNwdSBzY29wZS4KPiAKPiBJdCBpcyBzaW1pbGFyIChpbiBuYW1lLCBz
ZWUgbW9yZSBvbiB0aGF0IGJlbG93KSBidXQgdGhpcyBtdXN0IGJlIGxpbWl0ZWQKPiB0byB2ZXJ5
IG5hcnJvdyAid2luZG93IiB3aGVyZSA6Cj4gIMKgLSBXZSBoYXZlIHRoZSBzeXN0ZW0gd2lkZSBz
YWZlIHJlZ2lzdGVycyBzZXQgd2l0aCBhbGwgdGhlIFNNUCBDUFVzCj4gIMKgICphbmQqCj4gIMKg
LSBUaGUgU1lTVEVNX0ZFQVRVUkUgY3B1X2h3Y2FwcyBtYXkgbm90IGhhdmUgYmVlbiBzZXQuCj4g
Cj4gVGhlIG5vcm1hbCB1c2VycyBtdXN0IGNvbnRpbnVlIHRvIHVzZSB0aGUgZXhpc3RpbmcKPiBj
cHVzX2hhdmVfe2NvbnN0X31jYXAoKSBoZWxwZXIocykuCj4gCgpUaGFua3MgZm9yIHRoZSBkZXRh
aWxzLiBJIHdpbGwgdXBkYXRlIG15IGNvbW1pdCBtZXNzYWdlLgoKPj4KPj4gVXNlIHRoaXMgbmV3
IGhlbHBlciBmdW5jdGlvbiBmb3IgYW4gZXhpc3RpbmcgbWV0YSBjcHVjYXBzLgo+Pgo+PiBTdWdn
ZXN0ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFtaXQgRGFuaWVsIEthY2hoYXAgPGFtaXQua2FjaGhhcEBhcm0uY29tPgo+
PiAtLS0KPj4gQ2hhbmdlcyBzaW5jZSB2MzoKPj4gwqAgKiBOZXcgcGF0Y2guCj4+IMKgICogVGhp
cyBpcyBhZGRlZCBhcyBzdWdnZXN0ZWQgYnkgQ2F0YWxpbiBbMV0gdG8gYXZvaWQgdGhlIGFycmF5
IGVudHJ5IAo+PiBvcmRlcgo+PiDCoMKgwqAgZGVwZW5kZW5jeS4KPj4gwqAgKiBBIG5ldyBoZWxw
ZXIgc3lzdGVtX2hhc19jYXAgaXMgYWRkZWQuCj4+Cj4+IFsxXTogCj4+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIwMjAtSmFudWFyeS83MDU4
NDUuaHRtbCAKPj4KPj4KPj4gwqAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgg
fMKgIDEgKwo+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmPCoMKgwqDCoMKgIHwg
MTMgKysrKysrKysrKysrLQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
Y3B1ZmVhdHVyZS5oIAo+PiBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oCj4+
IGluZGV4IDQyNjFkNTUuLjY5NWU1MzggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vY3B1ZmVhdHVyZS5oCj4+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVh
dHVyZS5oCj4+IEBAIC0zODIsNiArMzgyLDcgQEAgZXh0ZXJuIERFQ0xBUkVfQklUTUFQKGJvb3Rf
Y2FwYWJpbGl0aWVzLCAKPj4gQVJNNjRfTlBBVENIQUJMRSk7Cj4+IMKgwqDCoMKgwqAgZm9yX2Vh
Y2hfc2V0X2JpdChjYXAsIGNwdV9od2NhcHMsIEFSTTY0X05DQVBTKQo+PiDCoCBib29sIHRoaXNf
Y3B1X2hhc19jYXAodW5zaWduZWQgaW50IGNhcCk7Cj4+ICtib29sIHN5c3RlbV9oYXNfY2FwKHVu
c2lnbmVkIGludCBjYXApOwo+IAo+IFlvdSBkb24ndCBuZWVkIHRoaXMuCgpvayBhZ3JlZWQuCgo+
IAo+PiDCoCB2b2lkIGNwdV9zZXRfZmVhdHVyZSh1bnNpZ25lZCBpbnQgbnVtKTsKPj4gwqAgYm9v
bCBjcHVfaGF2ZV9mZWF0dXJlKHVuc2lnbmVkIGludCBudW0pOwo+PiDCoCB1bnNpZ25lZCBsb25n
IGNwdV9nZXRfZWxmX2h3Y2FwKHZvaWQpOwo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvY3B1ZmVhdHVyZS5jIAo+PiBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+PiBp
bmRleCAwNGNmNjRlLi43NGQ2YzEzIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9j
cHVmZWF0dXJlLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IEBA
IC0yMDA4LDYgKzIwMDgsMTcgQEAgYm9vbCB0aGlzX2NwdV9oYXNfY2FwKHVuc2lnbmVkIGludCBu
KQo+PiDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4gwqAgfQo+PiArYm9vbCBzeXN0ZW1faGFz
X2NhcCh1bnNpZ25lZCBpbnQgbikKPj4gK3sKPiAKPiBuaXQ6IFRoaXMgY291bGQgYmUgbWFkZSBz
dGF0aWMgZm9yIG5vdy4KPiAKPiBNb3JlIGltcG9ydGFudGx5LCB0aGUgbmFtZSBpcyB2ZXJ5IG11
Y2ggc2ltaWxhciB0byAiY2FwIiBzcGVjaWZpYwo+IHdyYXBwZXJzLCBlLmcsIHN5c3RlbV9oYXNf
ZnBzaW1kKCkgZXRjLCB3aGljaCBjb3VsZCBjcmVhdGUgYSBjb25mdXNpb24KPiBhbmQgbWFrZSBw
ZW9wbGUgdXNlIHRoaXMgaW5zdGVhZCBvZiB0aGUgImNwdXNfaGF2ZV9jYXAoKSBvciAKPiBjcHVz
X2hhdmVfY29uc3RfY2FwKCkiLiBJdCB3b3VsZCBiZSBhIGdvb2QgaWRlYSB0byBtYWtlIHRoaXMg
ZXhwbGljaXRseQo+IGxvb2sgbGlrZSBhbiBpbnRlcm5hbCBoZWxwZXIuCj4gZS5nOgo+IAo+IF9f
c3lzdGVtX21hdGNoZXNfY2FwKCkgdG8gYXZvaWQgYWJ1c2luZyB0aGlzIGhlbHBlci4KClN1cmUu
IEkgd2lsbCBjaGFuZ2UgdGhlIG5hbWUuCgo+IAo+IAo+IE90aGVyd2lzZSBsb29rcyBnb29kIHRv
IG1lLgoKVGhhbmtzLApBbWl0Cj4gCj4gU3V6dWtpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
