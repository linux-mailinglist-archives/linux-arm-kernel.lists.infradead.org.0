Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189DA30F74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhTnT/AZcbZZjonB0OX6yZKkgF25/d4GFU58I3zjxZ8=; b=f9XpT031xR8RNs
	pgvXmD8TvBLMxh1L5shRHcSIkzjyEsaafyZYQglMYFvysHGd1XYXx3Ep2ABJOhuaq3Vrvw89/bFNi
	Oocbkzqnofb2W671vsUEMmElNFMOVAshweh/cFEgusi/aEIK6JCpz8huFOAQAfbAbVLhyn+LZSz72
	NCfRa+T89G8/gRvi9eXYostlHtQIR1UL70ZK9Sl2AiJCNLbPY0HuCKuyz9Vh6GEmGTaGO93gCO7OI
	hftTU6Fi8iW4uOZVviOOu8ZTrJ7Y4hz46H6nJpza0zvW2Sz3ILJrdgkA/uQ+04xNP80RBzX3ulWgM
	lVAX+kS8BY4wOHYi1KHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWi5Q-0003jt-5u; Fri, 31 May 2019 14:00:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWi5I-0003iz-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:00:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3427A78;
 Fri, 31 May 2019 07:00:38 -0700 (PDT)
Received: from [10.1.197.21] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1502C3F5AF; Fri, 31 May 2019 07:00:36 -0700 (PDT)
Subject: Re: [RFC v2 3/7] arm64: cpufeature: handle conflicts based on
 capability
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-4-kristina.martsenko@arm.com>
 <e4ab4a88-9e14-4d2b-e89a-6ea3202bcfd1@arm.com>
From: Kristina Martsenko <kristina.martsenko@arm.com>
Message-ID: <254e656a-9fa7-3bf7-9d76-c1b30e2b394a@arm.com>
Date: Fri, 31 May 2019 15:00:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e4ab4a88-9e14-4d2b-e89a-6ea3202bcfd1@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_070041_033667_91058BF9 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, keescook@chromium.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, ramana.radhakrishnan@arm.com,
 amit.kachhap@arm.com, dave.martin@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDUvMjAxOSAxNToxNiwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPiBPbiAwNS8yOS8y
MDE5IDA4OjAzIFBNLCBLcmlzdGluYSBNYXJ0c2Vua28gd3JvdGU6Cj4+IEVhY2ggc3lzdGVtIGNh
cGFiaWxpdHkgY2FuIGJlIG9mIGVpdGhlciBib290LCBsb2NhbCwgb3Igc3lzdGVtIHNjb3BlLAo+
PiBkZXBlbmRpbmcgb24gd2hlbiB0aGUgc3RhdGUgb2YgdGhlIGNhcGFiaWxpdHkgaXMgZmluYWxp
emVkLiBXaGVuIHdlCj4+IGRldGVjdCBhIGNvbmZsaWN0IG9uIGEgbGF0ZSBDUFUsIHdlIGVpdGhl
ciBvZmZsaW5lIHRoZSBDUFUgb3IgcGFuaWMgdGhlCj4+IHN5c3RlbS4gV2UgY3VycmVudGx5IGFs
d2F5cyBwYW5pYyBpZiB0aGUgY29uZmxpY3QgaXMgY2F1c2VkIGJ5IGEgYm9vdAo+PiBzY29wZSBj
YXBhYmlsaXR5LCBhbmQgb2ZmbGluZSB0aGUgQ1BVIGlmIHRoZSBjb25mbGljdCBpcyBjYXVzZWQg
YnkgYQo+PiBsb2NhbCBvciBzeXN0ZW0gc2NvcGUgY2FwYWJpbGl0eS4KPj4KPj4gV2UncmUgZ29p
bmcgdG8gd2FudCB0byBhZGQgbmV3IGNhcGFiaWxpdHkgKGZvciBwb2ludGVyIGF1dGhlbnRpY2F0
aW9uKQo+PiB3aGljaCBuZWVkcyB0byBiZSBib290IHNjb3BlIGJ1dCBkb2Vzbid0IG5lZWQgdG8g
cGFuaWMgdGhlIHN5c3RlbSB3aGVuIGEKPj4gY29uZmxpY3QgaXMgZGV0ZWN0ZWQuIFNvIGFkZCBh
IG5ldyBmbGFnIHRvIHNwZWNpZnkgd2hldGhlciB0aGUKPj4gY2FwYWJpbGl0eSByZXF1aXJlcyB0
aGUgc3lzdGVtIHRvIHBhbmljIG9yIG5vdC4gQ3VycmVudCBib290IHNjb3BlCj4+IGNhcGFiaWxp
dGllcyBhcmUgdXBkYXRlZCB0byBzZXQgdGhlIGZsYWcsIHNvIHRoZXJlIHNob3VsZCBiZSBubwo+
PiBmdW5jdGlvbmFsIGNoYW5nZSBhcyBhIHJlc3VsdCBvZiB0aGlzIHBhdGNoLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBLcmlzdGluYSBNYXJ0c2Vua28gPGtyaXN0aW5hLm1hcnRzZW5rb0Bhcm0uY29t
Pgo+IAo+IAo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBzaW5jZSBSRkMgdjE6Cj4+IMKgIC0gTmV3IHBh
dGNoLCB0byBoYXZlIHB0cmF1dGggbWlzbWF0Y2hlcyBkaXNhYmxlIHNlY29uZGFyaWVzIGluc3Rl
YWQgb2YKPj4gwqDCoMKgIHBhbmlja2luZwo+Pgo+PiDCoCBhcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2NwdWZlYXR1cmUuaCB8IDE1ICsrKysrKysrKysrKysrLQo+PiDCoCBhcmNoL2FybTY0L2tlcm5l
bC9jcHVmZWF0dXJlLmPCoMKgwqDCoMKgIHwgMjMgKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4g
wqAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oIGIvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgKPj4gaW5kZXggMDUyMmVhNjc0MjUzLi5h
ZDk1MmYyZTBhMmIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVh
dHVyZS5oCj4+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oCj4+IEBA
IC0yMTcsNiArMjE3LDEwIEBAIGV4dGVybiBzdHJ1Y3QgYXJtNjRfZnRyX3JlZyBhcm02NF9mdHJf
cmVnX2N0cmVsMDsKPj4gwqDCoCAqwqDCoMKgwqAgSW4gc29tZSBub24tdHlwaWNhbCBjYXNlcyBl
aXRoZXIgYm90aCAoYSkgYW5kIChiKSwgb3IgbmVpdGhlciwKPj4gwqDCoCAqwqDCoMKgwqAgc2hv
dWxkIGJlIHBlcm1pdHRlZC4gVGhpcyBjYW4gYmUgZGVzY3JpYmVkIGJ5IGluY2x1ZGluZyBuZWl0
aGVyCj4+IMKgwqAgKsKgwqDCoMKgIG9yIGJvdGggZmxhZ3MgaW4gdGhlIGNhcGFiaWxpdHkncyB0
eXBlIGZpZWxkLgo+PiArICoKPj4gKyAqwqDCoMKgwqAgSW4gY2FzZSBvZiBhIGNvbmZsaWN0LCB0
aGUgQ1BVIGlzIHByZXZlbnRlZCBmcm9tIGJvb3RpbmcuIElmIHRoZQo+PiArICrCoMKgwqDCoCBB
Uk02NF9DUFVDQVBfUEFOSUNfT05fQ09ORkxJQ1QgZmxhZyBpcyBzcGVjaWZpZWQgZm9yIHRoZSBj
YXBhYmlsaXR5LAo+PiArICrCoMKgwqDCoCB0aGVuIGEga2VybmVsIHBhbmljIGlzIHRyaWdnZXJl
ZC4KPj4gwqDCoCAqLwo+PiDCoCDCoCBAQCAtMjQ5LDYgKzI1Myw4IEBAIGV4dGVybiBzdHJ1Y3Qg
YXJtNjRfZnRyX3JlZyBhcm02NF9mdHJfcmVnX2N0cmVsMDsKPj4gwqAgI2RlZmluZSBBUk02NF9D
UFVDQVBfUEVSTUlUVEVEX0ZPUl9MQVRFX0NQVcKgwqDCoCAoKHUxNilCSVQoNCkpCj4+IMKgIC8q
IElzIGl0IHNhZmUgZm9yIGEgbGF0ZSBDUFUgdG8gbWlzcyB0aGlzIGNhcGFiaWxpdHkgd2hlbiBz
eXN0ZW0gaGFzIGl0ICovCj4+IMKgICNkZWZpbmUgQVJNNjRfQ1BVQ0FQX09QVElPTkFMX0ZPUl9M
QVRFX0NQVcKgwqDCoCAoKHUxNilCSVQoNSkpCj4+ICsvKiBQYW5pYyB3aGVuIGEgY29uZmxpY3Qg
aXMgZGV0ZWN0ZWQgKi8KPj4gKyNkZWZpbmUgQVJNNjRfQ1BVQ0FQX1BBTklDX09OX0NPTkZMSUNU
wqDCoMKgwqDCoMKgwqAgKCh1MTYpQklUKDYpKQo+PiDCoCDCoCAvKgo+PiDCoMKgICogQ1BVIGVy
cmF0YSB3b3JrYXJvdW5kcyB0aGF0IG5lZWQgdG8gYmUgZW5hYmxlZCBhdCBib290IHRpbWUgaWYg
b25lIG9yCj4+IEBAIC0yOTAsNyArMjk2LDggQEAgZXh0ZXJuIHN0cnVjdCBhcm02NF9mdHJfcmVn
IGFybTY0X2Z0cl9yZWdfY3RyZWwwOwo+PiDCoMKgICogQ1BVIGZlYXR1cmUgdXNlZCBlYXJseSBp
biB0aGUgYm9vdCBiYXNlZCBvbiB0aGUgYm9vdCBDUFUuIEFsbCBzZWNvbmRhcnkKPj4gwqDCoCAq
IENQVXMgbXVzdCBtYXRjaCB0aGUgc3RhdGUgb2YgdGhlIGNhcGFiaWxpdHkgYXMgZGV0ZWN0ZWQg
YnkgdGhlIGJvb3QgQ1BVLgo+PiDCoMKgICovCj4+IC0jZGVmaW5lIEFSTTY0X0NQVUNBUF9TVFJJ
Q1RfQk9PVF9DUFVfRkVBVFVSRSBBUk02NF9DUFVDQVBfU0NPUEVfQk9PVF9DUFUKPj4gKyNkZWZp
bmUgQVJNNjRfQ1BVQ0FQX1NUUklDVF9CT09UX0NQVV9GRUFUVVJFwqDCoMKgwqDCoMKgwqAgXAo+
PiArwqDCoMKgIChBUk02NF9DUFVDQVBfU0NPUEVfQk9PVF9DUFUgfCBBUk02NF9DUFVDQVBfUEFO
SUNfT05fQ09ORkxJQ1QpCj4gCj4gWW91IG1heSB3YW50IHRvIHVwZGF0ZSB0aGUgY29tbWVudCB0
byBtZW50aW9uIHRoYXQgYSBjb25mbGljdCB0cmlnZ2Vycwo+IGtlcm5lbCBwYW5pYywgYXMgaXQg
aXMgbW9yZSB3aXRoaW4gdGhlIGNvbnRyb2wgb2YgdGhlICJjYXAiIGJlaGF2aW9yLgoKRG8geW91
IG1lYW4gdG8gdXBkYXRlIHRoZSBjb21tZW50IGFib3ZlIEFSTTY0X0NQVUNBUF9TVFJJQ1RfQk9P
VF9DUFVfRkVBVFVSRT8KVG8gc29tZXRoaW5nIGxpa2UgdGhlIGZvbGxvd2luZz8KCi8qCiAqIENQ
VSBmZWF0dXJlIHVzZWQgZWFybHkgaW4gdGhlIGJvb3QgYmFzZWQgb24gdGhlIGJvb3QgQ1BVLiBB
bGwgc2Vjb25kYXJ5CiAqIENQVXMgbXVzdCBtYXRjaCB0aGUgc3RhdGUgb2YgdGhlIGNhcGFiaWxp
dHkgYXMgZGV0ZWN0ZWQgYnkgdGhlIGJvb3QgQ1BVLiBJbgogKiBjYXNlIG9mIGEgY29uZmxpY3Qs
IGEga2VybmVsIHBhbmljIGlzIHRyaWdnZXJlZC4KICovCgo+IAo+IFdpdGggdGhhdDoKPiAKPiBS
ZXZpZXdlZC1ieTogU3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KClRo
YW5rcyEKCktyaXN0aW5hCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
