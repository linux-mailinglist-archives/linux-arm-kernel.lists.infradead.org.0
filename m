Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51A61815BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2sy5OWXe9oxfWWuZOx40uzfnGZXFBZWuj8hBIz6/88=; b=Y2TCYBXoyIcBGN
	dElVeXLaDp65t8AYu78aeUgDNfrPzJz5DjvHgcckXc08SzUc1eGN19PsdwqL/sQlyVsNHXE2jUVit
	HNiJcdjZgBRLJ0Z24wmisjPB9lPjvR7wpc0YWBf9U6P/LmXEuUi1r08DRB2YAGenUJCe1MMhSs6sE
	nq/gyyQLBHmLq0azlpWHsFd5bz+qeSFuVnb1+gzBZflth0MHxx2yrPjwps3UzHOTAXxaIy133YRPa
	lTcBa0iil+fe9FObf5ZREiiq1ANnih2IvKCFM68bPtNfmNTRMy4kMkMtkc23Gy6YJ5hC1F7R1FuTL
	CRN+Q8Y1Fno9hEjxalgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByZZ-0005zO-4r; Wed, 11 Mar 2020 10:26:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByZM-0005yk-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:26:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEF811FB;
 Wed, 11 Mar 2020 03:26:30 -0700 (PDT)
Received: from [192.168.1.165] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 147133F6CF;
 Wed, 11 Mar 2020 03:26:27 -0700 (PDT)
Subject: Re: [PATCH v6 09/18] arm64: enable ptrauth earlier
To: Amit Kachhap <amit.kachhap@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-10-git-send-email-amit.kachhap@arm.com>
 <4000de90-6196-364d-dcad-5476d85e18e0@arm.com>
 <1ea33eee-186c-d073-8687-43302e00c807@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <92f04bd6-dced-a8c5-827d-0dfa5eabfb6a@arm.com>
Date: Wed, 11 Mar 2020 10:26:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1ea33eee-186c-d073-8687-43302e00c807@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_032632_335913_A7D7E687 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW1pdCwKCk9uIDMvMTEvMjAgNjoyNiBBTSwgQW1pdCBLYWNoaGFwIHdyb3RlOgoKWy4uLl0K
Cj4+Cj4+IE15IGV4cGVjdGF0aW9uIGlzIHRoYXQgeW91IHNob3VsZCBjYWxsIGVhcmx5X3Bhcmtf
Y3B1IHRvIGRvIHRoYXQgaWYgdGhlCj4+IHNlY29uZGFyeSBkb2VzIG5vdCBzdXBwb3J0IFBUUkFV
VEggc2ltaWxhciB0byB3aGF0IHlvdSBkaWQgaW4gdjIgb2YgdGhpcyBzZXJpZXM6Cj4+Cj4+IEVO
VFJZKF9fY3B1X3NlY29uZGFyeV9jaGVja3B0cmF1dGgpCj4+ICNpZmRlZiBDT05GSUdfQVJNNjRf
UFRSX0FVVEgKPj4gwqDCoMKgwqDCoMKgwqAgLyogQ2hlY2sgaWYgdGhlIENQVSBzdXBwb3J0cyBw
dHJhdXRoICovCj4+IMKgwqDCoMKgwqDCoMKgIG1yc8KgwqDCoMKgIHgyLCBpZF9hYTY0aXNhcjFf
ZWwxCj4+IMKgwqDCoMKgwqDCoMKgIHViZnjCoMKgwqAgeDIsIHgyLCAjSURfQUE2NElTQVIxX0FQ
QV9TSElGVCwgIzgKPj4gwqDCoMKgwqDCoMKgwqAgY2JuesKgwqDCoCB4MiwgMWYKPj4gYWx0ZXJu
YXRpdmVfaWYgQVJNNjRfSEFTX0FERFJFU1NfQVVUSAo+PiDCoMKgwqDCoMKgwqDCoCBtb3bCoMKg
wqDCoCB4MywgMQo+PiBhbHRlcm5hdGl2ZV9lbHNlCj4+IMKgwqDCoMKgwqDCoMKgIG1vdsKgwqDC
oMKgIHgzLCAwCj4+IGFsdGVybmF0aXZlX2VuZGlmCj4+IMKgwqDCoMKgwqDCoMKgIGNiesKgwqDC
oMKgIHgzLCAxZgo+PiDCoMKgwqDCoMKgwqDCoCAvKiBQYXJrIHRoZSBtaXNtYXRjaGVkIHNlY29u
ZGFyeSBDUFUgKi8KPj4gwqDCoMKgwqDCoMKgwqAgZWFybHlfcGFya19jcHUgQ1BVX1NUVUNLX1JF
QVNPTl9OT19QVFJBVVRICj4+ICNlbmRpZgo+PiAxOsKgwqDCoMKgIHJldAo+PiBFTkRQUk9DKF9f
Y3B1X3NlY29uZGFyeV9jaGVja3B0cmF1dGgpCj4+Cj4+IGFuZCB0aGVuIGNoZWNrIGl0IGR1cmlu
ZyB0aGUgc2Vjb25kYXJ5X3N0YXJ0dXAsIHNpbWlsYXIgdG8gd2hhdCBoYXBwZW5zIGZvcgo+PiA1
MkJJVF9WQSBmb3IgZXhhbXBsZS4KPj4KPj4gSW4gdGhpcyB3YXkgInVwZGF0ZV9lYXJseV9jcHVf
Ym9vdF9zdGF0dXMiIHdvdWxkIHVwZGF0ZSB0aGUKPj4gQ1BVX1NUVUNLX1JFQVNPTl9OT19QVFJB
VVRIIGZsYWcuCj4gCj4gVGhpcyB3YXkgaXQgd2FzIGltcGxlbWVudGVkIGVhcmxpZXIuIENhdGFs
aW4gc3VnZ2VzdGVkIHRoZSBwb2ludGVyIGF1dGgKPiB2YXJpYXRpb24gaW4gY3B1cyBpcyBub3Qg
Y3JpdGljYWwgZW5vdWdoIGFuZCBjcHVmZWF0dXJlIGZyYW1ld29yayBjYW4gcGFyayBpdAo+IGxp
dHRsZSBsYXRlciBbMV0uCj4gCj4gQWdyZWUgdGhhdCBJIHNob3VsZCBoYXZlIHJlbW92ZWQgYWxs
IGRlZmluaXRpb25zIG9mIENQVV9TVFVDS19SRUFTT05fTk9fUFRSQVVUSAo+IGFuZCBwcmV2ZW50
IHVubmVjZXNzYXJ5IGNvbmZ1c2lvbnMuCj4gCj4gWzFdIDogaHR0cHM6Ly93d3cuc3Bpbmljcy5u
ZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2c3ODA3NjYuaHRtbAoKSXQgd2FzIGVpdGhlciBvciA6KSBT
b3JyeSBJIGRpZCBub3Qgc2VlIENhdGFsaW4ncyBjb21tZW50LCBwbGVhc2UgZ28gYWhlYWQgYW5k
CnJlbW92ZSB0aGUgZGVmaW5pdGlvbiBvZiBDUFVfU1RVQ0tfUkVBU09OX05PX1BUUkFVVEggYW5k
IHRoZSBjb2RlIHRoYXQgdXNlcyBpdAppbiB0aGlzIGNhc2UuCgpNYXliZSB5b3Ugd2FudCB0byBl
eHBhbmQgYXMgd2VsbCB5b3VyIGNvbW1pdCBtZXNzYWdlICh3aGljaCBhbHJlYWR5IHNlZW1zCmNv
dmVyaW5nIHRoaXMgY2FzZSkgdG8gZXhwbGFpbiB3aHkgaXQgaXMgcG9zc2libGUgdG8gbGV0IHRo
ZSBjcHUgZnJhbWV3b3JrIGRlYWwKd2l0aCB0aGlzIGNhc2UuIFRoaXMgc2hvdWxkIG1ha2UgdGhp
bmdzIGNsZWFyIGFjY29yZGluZyB0byBtZS4KCkFub3RoZXIgcXVlc3Rpb24gdGhhdCBzdGlsbCBy
ZW1haW5zIGlzOiBkbyB3ZSBuZWVkIHRvIGludHJvZHVjZSBlYXJseV9wYXJrX2NwdQphcyBwYXJ0
IG9mIHRoaXMgc2VyaWVzPyBTaW5jZSBpdCBkb2VzIG5vdCBzZWVtIHlvdSBhcmUgdXNpbmcgaXQg
YW55d2hlcmUuCgo+Pgo+PiBbLi4uXQo+PgoKLS0gClJlZ2FyZHMsClZpbmNlbnpvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
