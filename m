Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266EDFB2BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=covik+QybJOC6GPSjNQGbIYCNqacf51u0TUv8Yatrcs=; b=pv5FomSTalw5Oc
	S0B3Rvy3qMEI9l/aZMVksUe+BXlnglNhxlZ6NxUFrSn2Fo6ZgmSnkqv5IV2FP4Dg4jRHWyZ/DP/K9
	Eu5al5o+vCMSvyDofOjUHFzfTyKDVhMviYCDK798ctSIpTmgyfuXpjt9tLZArSDrkySCbIDeHvswh
	Sy0ZFZqO17QXgsfhjoyuRTTYpEyLHL02o7K6zDOtsp6W8o7hRWjUFlxminvAu923pBc2QwX7LX+N2
	ljzSEnWW7qUVwTIC4kKO1JXEdCWjFheTEd8qqic/WQ6uOllMaYgDLlHW4CS/cpAqEbaxWFC/pA/2T
	Hy8nmiVl5MrCjCp4EyVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtsE-0002Rt-8d; Wed, 13 Nov 2019 14:43:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUts4-0002RN-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:43:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04C337A7;
 Wed, 13 Nov 2019 06:43:48 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16FCD3F6C4;
 Wed, 13 Nov 2019 06:43:46 -0800 (PST)
Subject: Re: [PATCH v2 1/2] arm64: Combine workarounds for speculative AT
 errata
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20191113114118.2427-1-steven.price@arm.com>
 <20191113114118.2427-2-steven.price@arm.com>
 <173fe989-4692-aa22-05b0-a217b7fd1d89@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <dcafed51-5822-5121-09b3-493913c87875@arm.com>
Date: Wed, 13 Nov 2019 14:43:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <173fe989-4692-aa22-05b0-a217b7fd1d89@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_064348_844550_DD03A9CC 
X-CRM114-Status: GOOD (  17.55  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMTEvMjAxOSAxNDowMSwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPiAKPiBPbiAxMy8x
MS8yMDE5IDExOjQxLCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4+IENvcnRleC1BNTcvQTcyIGhhdmUg
YSBzaW1pbGFyIGVycmF0YSB0byBDb3J0ZXgtQTc2IHJlZ2FyZGluZyBzcGVjdWxhdGlvbgo+PiBv
ZiB0aGUgQVQgaW5zdHJ1Y3Rpb24uIFNpbmNlIHRoZSB3b3JrYXJvdW5kIGZvciBBNTcvQTcyIGRv
ZXNuJ3QgcmVxdWlyZQo+PiBWSEUsIHRoZSByZXN0cmljdGlvbiBlbmZvcmNpbmcgVkhFIGZvciBB
NzYgY2FuIGJlIHJlbW92ZWQgYnkgY29tYmluaW5nCj4+IHRoZSB3b3JrYXJvdW5kIGZsYWcgZm9y
IGJvdGggZXJyYXRhLgo+Pgo+PiBTbyBjb21iaW5lIFdPUktBUk9VTkRfMTE2NTUyMiBhbmQgV09S
S0FST1VORF8xMzE5MzY3IGludG8KPj4gV09SS0FST1VORF9TUEVDVUxBVElWRV9BVC4gVGhlIG1h
am9yaXR5IG9mIGNvZGUgaXMgY29udGFpbmVkIHdpdGhpbiBWSEUKPj4gb3IgTlZIRSBzcGVjaWZp
YyBmdW5jdGlvbnMsIGZvciB0aGUgY2FzZXMgd2hlcmUgdGhlIGNvZGUgaXMgc2hhcmVkIGV4dHJh
Cj4+IGNoZWNrcyBhZ2FpbnN0IGhhc192aGUoKS4KPj4KPj4gVGhpcyBhbHNvIHBhdmVzIHRoZSB3
YXkgZm9yIGFkZGluZyBhIHNpbWlsYXIgZXJyYXR1bSBmb3IgQ29ydGV4LUE1NS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KPiAKPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdV9lcnJhdGEuYwo+PiBiL2FyY2gvYXJtNjQv
a2VybmVsL2NwdV9lcnJhdGEuYwo+PiBpbmRleCA0ZjgxODdhNGZjNDYuLmI4MDFmOGU4MzJhYSAx
MDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1X2VycmF0YS5jCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQva2VybmVsL2NwdV9lcnJhdGEuYwo+PiBAQCAtNzQ0LDYgKzc0NCwxNiBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG1pZHJfcmFuZ2UKPj4gZXJyYXR1bV8xNDE4MDQwX2xpc3RbXSA9IHsK
Pj4gwqAgfTsKPj4gwqAgI2VuZGlmCj4+IMKgICsjaWZkZWYgQ09ORklHX0FSTTY0X1dPUktBUk9V
TkRfU1BFQ1VMQVRJVkVfQVQKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWlkcl9yYW5nZSBlcnJh
dHVtX3NwZWN1bGF0aXZlX2F0X2xpc3RbXSA9IHsKPj4gKyNpZmRlZiBDT05GSUdfQVJNNjRfRVJS
QVRVTV8xMTY1NTIyCj4+ICvCoMKgwqAgLyogQ29ydGV4IEE3NiByMHAwIHRvIHIycDAgKi8KPj4g
K8KgwqDCoCBNSURSX1JBTkdFKE1JRFJfQ09SVEVYX0E3NiwgMCwgMCwgMiwgMCksCj4+ICsjZW5k
aWYKPj4gK8KgwqDCoCB7fSwKPj4gK307Cj4+ICsjZW5kaWYKPj4gKwo+PiDCoCBjb25zdCBzdHJ1
Y3QgYXJtNjRfY3B1X2NhcGFiaWxpdGllcyBhcm02NF9lcnJhdGFbXSA9IHsKPj4gwqAgI2lmZGVm
IENPTkZJR19BUk02NF9XT1JLQVJPVU5EX0NMRUFOX0NBQ0hFCj4+IMKgwqDCoMKgwqAgewo+PiBA
QCAtODY4LDEyICs4NzgsMTEgQEAgY29uc3Qgc3RydWN0IGFybTY0X2NwdV9jYXBhYmlsaXRpZXMK
Pj4gYXJtNjRfZXJyYXRhW10gPSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBFUlJBVEFfTUlEUl9S
QU5HRV9MSVNUKGVycmF0dW1fMTQxODA0MF9saXN0KSwKPj4gwqDCoMKgwqDCoCB9LAo+PiDCoCAj
ZW5kaWYKPj4gLSNpZmRlZiBDT05GSUdfQVJNNjRfRVJSQVRVTV8xMTY1NTIyCj4+ICsjaWZkZWYg
Q09ORklHX0FSTTY0X1dPUktBUk9VTkRfU1BFQ1VMQVRJVkVfQVQKPj4gwqDCoMKgwqDCoCB7Cj4+
IC3CoMKgwqDCoMKgwqDCoCAvKiBDb3J0ZXgtQTc2IHIwcDAgdG8gcjJwMCAqLwo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgLmRlc2MgPSAiQVJNIGVycmF0dW0gMTE2NTUyMiIsCj4+IC3CoMKgwqDCoMKg
wqDCoCAuY2FwYWJpbGl0eSA9IEFSTTY0X1dPUktBUk9VTkRfMTE2NTUyMiwKPj4gLcKgwqDCoMKg
wqDCoMKgIEVSUkFUQV9NSURSX1JBTkdFKE1JRFJfQ09SVEVYX0E3NiwgMCwgMCwgMiwgMCksCj4+
ICvCoMKgwqDCoMKgwqDCoCAuY2FwYWJpbGl0eSA9IEFSTTY0X1dPUktBUk9VTkRfU1BFQ1VMQVRJ
VkVfQVQsCj4+ICvCoMKgwqDCoMKgwqDCoCBFUlJBVEFfTUlEUl9SQU5HRV9MSVNUKGVycmF0dW1f
c3BlY3VsYXRpdmVfYXRfbGlzdCksCj4+IMKgwqDCoMKgwqAgfSwKPj4gwqAgI2VuZGlmCj4+IMKg
ICNpZmRlZiBDT05GSUdfQVJNNjRfRVJSQVRVTV8xNDYzMjI1Cj4+IEBAIC05MTAsNyArOTE5LDcg
QEAgY29uc3Qgc3RydWN0IGFybTY0X2NwdV9jYXBhYmlsaXRpZXMgYXJtNjRfZXJyYXRhW10KPj4g
PSB7Cj4+IMKgICNpZmRlZiBDT05GSUdfQVJNNjRfRVJSQVRVTV8xMzE5MzY3Cj4+IMKgwqDCoMKg
wqAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLmRlc2MgPSAiQVJNIGVycmF0dW0gMTMxOTM2NyIs
Cj4+IC3CoMKgwqDCoMKgwqDCoCAuY2FwYWJpbGl0eSA9IEFSTTY0X1dPUktBUk9VTkRfMTMxOTM2
NywKPj4gK8KgwqDCoMKgwqDCoMKgIC5jYXBhYmlsaXR5ID0gQVJNNjRfV09SS0FST1VORF9TUEVD
VUxBVElWRV9BVCwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIEVSUkFUQV9NSURSX1JBTkdFX0xJU1Qo
Y2E1N19hNzIpLAo+PiDCoMKgwqDCoMKgIH0sCj4+IMKgICNlbmRpZgo+IAo+IEhhdmUgeW91IHRl
c3RlZCB0aGlzIHBhdGNoIHdpdGggYm90aCB0aGUgZXJyYXRhIENPTkZJR3MgdHVybmVkIG9uID8K
PiBIYXZpbmcgbXVsdGlwbGUgZW50cmllcyBmb3IgdGhlIHNhbWUgY2FwYWJpbGl0eSBzaG91bGQg
dHJpZ2dlciBhIFdBUk5JTkcgYXQKPiBib290IHdpdGggaW5pdF9jcHVfaHdjYXBzX2luZGlyZWN0
X2xpc3RfZnJvbV9hcnJheSgpLgo+IFlvdSBjb3VsZCBzaW1wbHkgYWRkIHRoZSBNSURScyB0byB0
aGUgbWlkcl9saXN0IGFuZCB1cGRhdGUgdGhlIGRlc2NyaXB0aW9uCj4gdG8gaW5jbHVkZSBhbGwg
dGhlIEVycmF0YSBudW1iZXJzLgoKSGEhIFlvdSBvZiBjb3Vyc2UgYXJlIHJpZ2h0IC0gSSBoYWQg
J3Rlc3RlZCcgdGhlIGNvbWJpbmF0aW9uIGJ1dAphcHBhcmVudGx5IG5vdCBsb29rZWQgY2FyZWZ1
bGx5IGVub3VnaCAtIHRoZXJlIGlzIGluZGVlZCBhIFdBUk5JTkcgaW4KdGhlIGJvb3QuCgpJIG1p
Z2h0IHdlbGwgYmUga2VlcGluZyB0aGUgdHdvIGVudHJpZXMgYW55d2F5IGR1ZSB0byBNYXJjJ3Mg
Y29uY2VybnMKYWJvdXQgdGhlIG1pY3JvLWFyY2hpdGVjdHVyYWwgZGV0YWlscyBvZiB0aGUgMTMx
OTM2NyB3b3JrYXJvdW5kLgoKU3RldmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
