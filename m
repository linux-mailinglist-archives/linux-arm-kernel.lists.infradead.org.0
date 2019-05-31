Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8FD310D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=irFxKLffukQNMEYmwCPHsaljef2I6yPxwNc0KCcf330=; b=R1AUisNIu5GKdSDRQHbK0z5mM
	ZJKseK+1ixYCi0jXpOKK1Etb6eSNRDMkCenWCqlZfX9yC2/2CUcbcWaoi0IzHhpD6pXaqqK2ZOmku
	OXq6Vg+g249fGkq5u9RdKTmfLeZb+RYWOEWGRqQwFGC5wfT3Ri/Uvyf9UL/uzXgSQdqHK9vdSkAiH
	DEgZXu7KOX/PP4HUU8zz4KDK8DNfQgZd2SFLz4MZ5xEXlHBldxRY/D+RyZcnjLSXiNmsbOAzZ9JGS
	dALFPp1F9JziFJ7jRoxrx4DRy78C3sqTnH4+appJ73H+Ds//awyzgclgLsl5HWafTUhpvQJI2/0Jm
	fgWDGNJIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWj9W-00054m-2G; Fri, 31 May 2019 15:09:06 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWj9O-00054E-80
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:08:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA29F341;
 Fri, 31 May 2019 08:08:55 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BAD73F5AF;
 Fri, 31 May 2019 08:08:53 -0700 (PDT)
Subject: Re: [RFC v2 3/7] arm64: cpufeature: handle conflicts based on
 capability
To: kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-4-kristina.martsenko@arm.com>
 <e4ab4a88-9e14-4d2b-e89a-6ea3202bcfd1@arm.com>
 <254e656a-9fa7-3bf7-9d76-c1b30e2b394a@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c3aee191-39b1-1ad5-f62b-3ab38cf535ed@arm.com>
Date: Fri, 31 May 2019 16:08:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <254e656a-9fa7-3bf7-9d76-c1b30e2b394a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_080858_292161_DB4770AB 
X-CRM114-Status: GOOD (  19.21  )
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
 Amit.Kachhap@arm.com, dave.martin@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzMS8wNS8yMDE5IDE1OjAwLCBLcmlzdGluYSBNYXJ0c2Vua28gd3JvdGU6Cj4gT24gMzAv
MDUvMjAxOSAxNToxNiwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPj4gT24gMDUvMjkvMjAxOSAw
ODowMyBQTSwgS3Jpc3RpbmEgTWFydHNlbmtvIHdyb3RlOgo+Pj4gRWFjaCBzeXN0ZW0gY2FwYWJp
bGl0eSBjYW4gYmUgb2YgZWl0aGVyIGJvb3QsIGxvY2FsLCBvciBzeXN0ZW0gc2NvcGUsCj4+PiBk
ZXBlbmRpbmcgb24gd2hlbiB0aGUgc3RhdGUgb2YgdGhlIGNhcGFiaWxpdHkgaXMgZmluYWxpemVk
LiBXaGVuIHdlCj4+PiBkZXRlY3QgYSBjb25mbGljdCBvbiBhIGxhdGUgQ1BVLCB3ZSBlaXRoZXIg
b2ZmbGluZSB0aGUgQ1BVIG9yIHBhbmljIHRoZQo+Pj4gc3lzdGVtLiBXZSBjdXJyZW50bHkgYWx3
YXlzIHBhbmljIGlmIHRoZSBjb25mbGljdCBpcyBjYXVzZWQgYnkgYSBib290Cj4+PiBzY29wZSBj
YXBhYmlsaXR5LCBhbmQgb2ZmbGluZSB0aGUgQ1BVIGlmIHRoZSBjb25mbGljdCBpcyBjYXVzZWQg
YnkgYQo+Pj4gbG9jYWwgb3Igc3lzdGVtIHNjb3BlIGNhcGFiaWxpdHkuCj4+Pgo+Pj4gV2UncmUg
Z29pbmcgdG8gd2FudCB0byBhZGQgbmV3IGNhcGFiaWxpdHkgKGZvciBwb2ludGVyIGF1dGhlbnRp
Y2F0aW9uKQo+Pj4gd2hpY2ggbmVlZHMgdG8gYmUgYm9vdCBzY29wZSBidXQgZG9lc24ndCBuZWVk
IHRvIHBhbmljIHRoZSBzeXN0ZW0gd2hlbiBhCj4+PiBjb25mbGljdCBpcyBkZXRlY3RlZC4gU28g
YWRkIGEgbmV3IGZsYWcgdG8gc3BlY2lmeSB3aGV0aGVyIHRoZQo+Pj4gY2FwYWJpbGl0eSByZXF1
aXJlcyB0aGUgc3lzdGVtIHRvIHBhbmljIG9yIG5vdC4gQ3VycmVudCBib290IHNjb3BlCj4+PiBj
YXBhYmlsaXRpZXMgYXJlIHVwZGF0ZWQgdG8gc2V0IHRoZSBmbGFnLCBzbyB0aGVyZSBzaG91bGQg
YmUgbm8KPj4+IGZ1bmN0aW9uYWwgY2hhbmdlIGFzIGEgcmVzdWx0IG9mIHRoaXMgcGF0Y2guCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS3Jpc3RpbmEgTWFydHNlbmtvIDxrcmlzdGluYS5tYXJ0c2Vu
a29AYXJtLmNvbT4KCj4+PiAgwqAgwqAgQEAgLTI0OSw2ICsyNTMsOCBAQCBleHRlcm4gc3RydWN0
IGFybTY0X2Z0cl9yZWcgYXJtNjRfZnRyX3JlZ19jdHJlbDA7Cj4+PiAgwqAgI2RlZmluZSBBUk02
NF9DUFVDQVBfUEVSTUlUVEVEX0ZPUl9MQVRFX0NQVcKgwqDCoCAoKHUxNilCSVQoNCkpCj4+PiAg
wqAgLyogSXMgaXQgc2FmZSBmb3IgYSBsYXRlIENQVSB0byBtaXNzIHRoaXMgY2FwYWJpbGl0eSB3
aGVuIHN5c3RlbSBoYXMgaXQgKi8KPj4+ICDCoCAjZGVmaW5lIEFSTTY0X0NQVUNBUF9PUFRJT05B
TF9GT1JfTEFURV9DUFXCoMKgwqAgKCh1MTYpQklUKDUpKQo+Pj4gKy8qIFBhbmljIHdoZW4gYSBj
b25mbGljdCBpcyBkZXRlY3RlZCAqLwo+Pj4gKyNkZWZpbmUgQVJNNjRfQ1BVQ0FQX1BBTklDX09O
X0NPTkZMSUNUwqDCoMKgwqDCoMKgwqAgKCh1MTYpQklUKDYpKQo+Pj4gIMKgIMKgIC8qCj4+PiAg
wqDCoCAqIENQVSBlcnJhdGEgd29ya2Fyb3VuZHMgdGhhdCBuZWVkIHRvIGJlIGVuYWJsZWQgYXQg
Ym9vdCB0aW1lIGlmIG9uZSBvcgo+Pj4gQEAgLTI5MCw3ICsyOTYsOCBAQCBleHRlcm4gc3RydWN0
IGFybTY0X2Z0cl9yZWcgYXJtNjRfZnRyX3JlZ19jdHJlbDA7Cj4+PiAgwqDCoCAqIENQVSBmZWF0
dXJlIHVzZWQgZWFybHkgaW4gdGhlIGJvb3QgYmFzZWQgb24gdGhlIGJvb3QgQ1BVLiBBbGwgc2Vj
b25kYXJ5Cj4+PiAgwqDCoCAqIENQVXMgbXVzdCBtYXRjaCB0aGUgc3RhdGUgb2YgdGhlIGNhcGFi
aWxpdHkgYXMgZGV0ZWN0ZWQgYnkgdGhlIGJvb3QgQ1BVLgo+Pj4gIMKgwqAgKi8KPj4+IC0jZGVm
aW5lIEFSTTY0X0NQVUNBUF9TVFJJQ1RfQk9PVF9DUFVfRkVBVFVSRSBBUk02NF9DUFVDQVBfU0NP
UEVfQk9PVF9DUFUKPj4+ICsjZGVmaW5lIEFSTTY0X0NQVUNBUF9TVFJJQ1RfQk9PVF9DUFVfRkVB
VFVSRcKgwqDCoMKgwqDCoMKgIFwKPj4+ICvCoMKgwqAgKEFSTTY0X0NQVUNBUF9TQ09QRV9CT09U
X0NQVSB8IEFSTTY0X0NQVUNBUF9QQU5JQ19PTl9DT05GTElDVCkKPj4KPj4gWW91IG1heSB3YW50
IHRvIHVwZGF0ZSB0aGUgY29tbWVudCB0byBtZW50aW9uIHRoYXQgYSBjb25mbGljdCB0cmlnZ2Vy
cwo+PiBrZXJuZWwgcGFuaWMsIGFzIGl0IGlzIG1vcmUgd2l0aGluIHRoZSBjb250cm9sIG9mIHRo
ZSAiY2FwIiBiZWhhdmlvci4KPiAKPiBEbyB5b3UgbWVhbiB0byB1cGRhdGUgdGhlIGNvbW1lbnQg
YWJvdmUgQVJNNjRfQ1BVQ0FQX1NUUklDVF9CT09UX0NQVV9GRUFUVVJFPwo+IFRvIHNvbWV0aGlu
ZyBsaWtlIHRoZSBmb2xsb3dpbmc/Cj4gCj4gLyoKPiAgICogQ1BVIGZlYXR1cmUgdXNlZCBlYXJs
eSBpbiB0aGUgYm9vdCBiYXNlZCBvbiB0aGUgYm9vdCBDUFUuIEFsbCBzZWNvbmRhcnkKPiAgICog
Q1BVcyBtdXN0IG1hdGNoIHRoZSBzdGF0ZSBvZiB0aGUgY2FwYWJpbGl0eSBhcyBkZXRlY3RlZCBi
eSB0aGUgYm9vdCBDUFUuIEluCj4gICAqIGNhc2Ugb2YgYSBjb25mbGljdCwgYSBrZXJuZWwgcGFu
aWMgaXMgdHJpZ2dlcmVkLgo+ICAgKi8KPiAKClllcy4gVGhhdCBsb29rcyBnb29kLgpFYXJsaWVy
IGl0IHdhcyB1cHRvIHRoZSBjYWxsZXIgdG8gZGVjaWRlIHdoZW4gdGhlcmUgd2FzIGEgY29uZmxp
Y3Qgd2l0aApCb290IGZlYXR1cmVzIHRvIHRha2UgYW4gYWN0aW9uLiBCdXQgd2l0aCB0aGlzIGNo
YW5nZSB3ZSBQYW5pYyBmb3IgU1RSSUNUX0JPT1QKZmVhdHVyZXMuCgpTdXp1a2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
