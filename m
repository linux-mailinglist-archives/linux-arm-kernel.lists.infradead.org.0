Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E29136AEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OSMVxym3MSfH0qs20Qhi8Snhs9LuT1FQQgt2EdqbM/w=; b=DNlsa8FHBdxxV7qgR5P/fMp6I
	ADAxLluCepre/mVMTql7GxJxdrDO6az3ib8GsgoDD7M9bd420NSGGDUhWMJ/yRyCfQ2UaDvWZfTcH
	d/+1eaObkizQuUBAU5jYEE2mATPnDMlrTIbxsFbLOQX8q4ky4LnSPSJPuFo2kmShYszhMh2YJJxPn
	hAP/+Jc7Skr2biS+YdmvuYbcViVyGzJGnF6lfVgXn85vASWPgdD9PwFHAnT0RCdc6udz2Nc2vZjaF
	Sq+OneUK/tYQaemEpTOhmsCYZFztFnJqj9PDcEhn6DUAUBpRrJe50pdhOPaGEAT6erCVFIB/kj8B2
	mQsnBNtFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprNd-0003El-At; Fri, 10 Jan 2020 10:19:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprMs-0002oD-6x
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:18:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C1CA328;
 Fri, 10 Jan 2020 02:18:13 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE2B83F703;
 Fri, 10 Jan 2020 02:18:11 -0800 (PST)
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
To: Amit Kachhap <amit.kachhap@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
 <e49002f2-53fb-b997-8bd6-363e22153da3@arm.com>
 <0c93c40c-e691-d768-da25-7f191624e56c@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <27e9a5ad-f672-1d8d-f25f-d5911d53d911@arm.com>
Date: Fri, 10 Jan 2020 10:18:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <0c93c40c-e691-d768-da25-7f191624e56c@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021814_347656_1423E5E1 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDEvMjAyMCAwODoyOSwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+IEhpIFN1enVraSwKPiAK
PiBPbiAxLzcvMjAgNTowNSBQTSwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+
PiBPbiAxNi8xMi8yMDE5IDA4OjQ3LCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3RlOgo+Pj4gRnJv
bTogS3Jpc3RpbmEgTWFydHNlbmtvIDxrcmlzdGluYS5tYXJ0c2Vua29AYXJtLmNvbT4KPj4+Cj4+
PiBXaGVuIHRoZSBrZXJuZWwgaXMgY29tcGlsZWQgd2l0aCBwb2ludGVyIGF1dGggaW5zdHJ1Y3Rp
b25zLCB0aGUgYm9vdCBDUFUKPj4+IG5lZWRzIHRvIHN0YXJ0IHVzaW5nIGFkZHJlc3MgYXV0aCB2
ZXJ5IGVhcmx5LCBzbyBjaGFuZ2UgdGhlIGNwdWNhcCB0bwo+Pj4gYWNjb3VudCBmb3IgdGhpcy4K
Pj4+Cj4+PiBQb2ludGVyIGF1dGggbXVzdCBiZSBlbmFibGVkIGJlZm9yZSB3ZSBjYWxsIEMgZnVu
Y3Rpb25zLCBiZWNhdXNlIGl0IGlzCj4+PiBub3QgcG9zc2libGUgdG8gZW50ZXIgYSBmdW5jdGlv
biB3aXRoIHBvaW50ZXIgYXV0aCBkaXNhYmxlZCBhbmQgZXhpdCBpdAo+Pj4gd2l0aCBwb2ludGVy
IGF1dGggZW5hYmxlZC4gTm90ZSwgbWlzbWF0Y2hlcyBiZXR3ZWVuIGFyY2hpdGVjdGVkIGFuZAo+
Pj4gSU1QREVGIGFsZ29yaXRobXMgd2lsbCBzdGlsbCBiZSBjYXVnaHQgYnkgdGhlIGNwdWZlYXR1
cmUgZnJhbWV3b3JrICh0aGUKPj4+IHNlcGFyYXRlICpfQVJDSCBhbmQgKl9JTVBfREVGIGNwdWNh
cHMpLgo+Pj4KPj4+IE5vdGUgdGhlIGNoYW5nZSBpbiBiZWhhdmlvcjogaWYgdGhlIGJvb3QgQ1BV
IGhhcyBhZGRyZXNzIGF1dGggYW5kIGEgbGF0ZQo+Pj4gQ1BVIGRvZXMgbm90LCB0aGVuIHdlIHBh
cmsgdGhlIGxhdGUgQ1BVIHZlcnkgZWFybHkgaW4gYm9vdGluZy4gQWxzbywgaWYKPj4+IHRoZSBi
b290IENQVSBkb2VzIG5vdCBoYXZlIGFkZHJlc3MgYXV0aCBhbmQgdGhlIGxhdGUgQ1BVIGhhcyB0
aGVuIHN5c3RlbQo+Pj4gcGFuaWMgd2lsbCBvY2N1ciBsaXR0bGUgbGF0ZXIgZnJvbSBpbnNpZGUg
dGhlIEMgY29kZS4gVW50aWwgbm93IHdlIHdvdWxkCj4+PiBoYXZlIGp1c3QgZGlzYWJsZWQgYWRk
cmVzcyBhdXRoIGluIHRoaXMgY2FzZS4KPj4+Cj4+PiBMZWF2ZSBnZW5lcmljIGF1dGhlbnRpY2F0
aW9uIGFzIGEgInN5c3RlbSBzY29wZSIgY3B1Y2FwIGZvciBub3csIHNpbmNlCj4+PiBpbml0aWFs
bHkgdGhlIGtlcm5lbCB3aWxsIG9ubHkgdXNlIGFkZHJlc3MgYXV0aGVudGljYXRpb24uCj4+Pgo+
Pj4gUmV2aWV3ZWQtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgo+Pj4gU2ln
bmVkLW9mZi1ieTogS3Jpc3RpbmEgTWFydHNlbmtvIDxrcmlzdGluYS5tYXJ0c2Vua29AYXJtLmNv
bT4KPj4+IFtBbWl0OiBSZS13b3JrZWQgcHRyYXV0aCBzZXR1cCBsb2dpYywgY29tbWVudHNdCj4+
PiBTaWduZWQtb2ZmLWJ5OiBBbWl0IERhbmllbCBLYWNoaGFwIDxhbWl0LmthY2hoYXBAYXJtLmNv
bT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBzaW5jZSBsYXN0IHZlcnNpb246Cj4+PiAqIE5vbmUuCj4+
Pgo+Pj4gwqAgYXJjaC9hcm02NC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1
ICsrKysrCj4+PiDCoCBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3NtcC5owqDCoCB8wqAgMSArCj4+
PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMgfCAxMyArKystLS0tLS0tLS0tCj4+
PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9oZWFkLlPCoMKgwqDCoMKgwqAgfCAyMCArKysrKysrKysr
KysrKysrKysrKwo+Pj4gwqAgYXJjaC9hcm02NC9rZXJuZWwvc21wLmPCoMKgwqDCoMKgwqDCoCB8
wqAgMiArKwo+Pj4gwqAgYXJjaC9hcm02NC9tbS9wcm9jLlPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+IMKgIDYgZmlsZXMgY2hhbmdl
ZCwgNjIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvS2NvbmZpZyBiL2FyY2gvYXJtNjQvS2NvbmZpZwo+Pj4gaW5kZXggYjFiNDQ3
Ni4uNWFhYmU4YSAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZwo+Pj4gKysrIGIv
YXJjaC9hcm02NC9LY29uZmlnCj4+PiBAQCAtMTQ4Miw2ICsxNDgyLDExIEBAIGNvbmZpZyBBUk02
NF9QVFJfQVVUSAo+Pj4gwqDCoMKgwqDCoMKgwqAgYmUgZW5hYmxlZC4gSG93ZXZlciwgS1ZNIGd1
ZXN0IGFsc28gcmVxdWlyZSBWSEUgbW9kZSBhbmQgaGVuY2UKPj4+IMKgwqDCoMKgwqDCoMKgIENP
TkZJR19BUk02NF9WSEU9eSBvcHRpb24gdG8gdXNlIHRoaXMgZmVhdHVyZS4KPj4+ICvCoMKgwqDC
oMKgIElmIHRoZSBmZWF0dXJlIGlzIHByZXNlbnQgb24gdGhlIHByaW1hcnkgQ1BVIGJ1dCBub3Qg
YSAKPj4+IHNlY29uZGFyeSBDUFUsCj4+PiArwqDCoMKgwqDCoCB0aGVuIHRoZSBzZWNvbmRhcnkg
Q1BVIHdpbGwgYmUgcGFya2VkLgo+Pgo+PiAtLS0KPj4KPj4+IMKgwqAgQWxzbywgaWYgdGhlIGJv
b3QgQ1BVIGRvZXMgbm90Cj4+PiArwqDCoMKgwqDCoCBoYXZlIGFkZHJlc3MgYXV0aCBhbmQgdGhl
IGxhdGUgQ1BVIGhhcyB0aGVuIHN5c3RlbSBwYW5pYyB3aWxsIAo+Pj4gb2NjdXIuCj4+PiArwqDC
oMKgwqDCoCBPbiBzdWNoIGEgc3lzdGVtLCB0aGlzIG9wdGlvbiBzaG91bGQgbm90IGJlIHNlbGVj
dGVkLgo+Pgo+PiBJcyB0aGlzIHBhcnQgb2YgdGhlIHRleHQgdHJ1ZSA/IFdlIGRvIG5vdCBlbmFi
bGUgcHRyLWF1dGggb24gdGhlIENQVXMgaWYKPj4gd2UgYXJlIG1pc3NpbmcgdGhlIHN1cHBvcnQg
b24gcHJpbWFyeS4gU28sIGdpdmVuIHdlIGRpc2FibGUgU0NUTFIgYml0cywKPj4gdGhlIHB0ci1h
dXRoIGluc3RydWN0aW9ucyBzaG91bGQgYmUgYSBOT1AgYW5kIGlzIHRodXMgc2FmZS4KPiAKPiBJ
IGdvdCBsaXR0bGUgY29uZnVzZWQgd2l0aCB5b3VyIGVhcmxpZXIgY29tbWVudHMgWzFdIGFuZCBt
YWRlIHRoZSAKPiBzZWNvbmRhcnkgY3B1J3MgcGFuaWMgaW4gY2FzZSB0aGV5IGhhdmUgcHRyYXV0
aCBhbmQgcHJpbWFyeSBkb24ndC4gSW4gCj4gdGhpcyBjYXNlIEFSTTY0X0NQVUNBUF9QRVJNSVRU
RURfRk9SX0xBVEVfQ1BVIHdpbGwgbGVhdmUgaXQgcnVubmluZyBhbmQgCj4gbm90IHBhbmljIGFz
IHlvdSBtZW50aW9uZWQuCgpZZXMgcGxlYXNlLiBTb3JyeSBhYm91dCB0aGUgY29uZnVzaW9uLgoK
U3V6dWtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
