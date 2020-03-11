Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85EB18161E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwWExozfOnknAcv2ZixbAPIe0R0vXGpfELTQXs+GBSQ=; b=s720lBK+hxaRoX
	WphKGANFKXxrMpBdZsoFcG9SwvJ1z89FSLa7qA9MAdfd056ixP7yJTNt0/hLeav7YlFOyVm6P3oqN
	SN8ycdtTaN/IOYwD/NPgjkaWuReXS6INp7P//AtRWA93bCCyOWi0kG9lyZKTSqzH6J5Whlb8D1fdI
	M02i2r+KvnS9ndGbDezbogmEvkjSKQ4BtYkyxBauhtmfj/QEkhyPYATeKE0TDzpU0PDkAkKw7ZclY
	2WZD6YFODAolzrDEm09/sU4Ff66vxuuRuexBNF7hWAlubyY3si5LHCjBkcSqncKWHQ8L2YjzXGTRY
	I6edR1sEi4CIYytwCCCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByvJ-0006DT-DC; Wed, 11 Mar 2020 10:49:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByvB-0006CZ-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:49:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 652DD1FB;
 Wed, 11 Mar 2020 03:49:04 -0700 (PDT)
Received: from [10.37.8.101] (unknown [10.37.8.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2424E3F6CF;
 Wed, 11 Mar 2020 03:49:01 -0700 (PDT)
Subject: Re: [PATCH v6 09/18] arm64: enable ptrauth earlier
To: Amit Kachhap <amit.kachhap@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-10-git-send-email-amit.kachhap@arm.com>
 <4000de90-6196-364d-dcad-5476d85e18e0@arm.com>
 <1ea33eee-186c-d073-8687-43302e00c807@arm.com>
 <92f04bd6-dced-a8c5-827d-0dfa5eabfb6a@arm.com>
 <436a6d6a-d5c3-14db-0a5f-afdb62125eff@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <cb5b7eae-49e5-cff7-7058-8fc31ac478ca@arm.com>
Date: Wed, 11 Mar 2020 10:49:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <436a6d6a-d5c3-14db-0a5f-afdb62125eff@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034905_232201_9F509471 
X-CRM114-Status: GOOD (  16.56  )
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

SGkgQW1pdCwKCk9uIDMvMTEvMjAgMTA6NDYgQU0sIEFtaXQgS2FjaGhhcCB3cm90ZToKPiBIaSBW
aW5jZW56bywKPiAKPiBPbiAzLzExLzIwIDM6NTYgUE0sIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3Rl
Ogo+PiBIaSBBbWl0LAo+Pgo+PiBPbiAzLzExLzIwIDY6MjYgQU0sIEFtaXQgS2FjaGhhcCB3cm90
ZToKPj4KPj4gWy4uLl0KPj4KPj4+Pgo+Pj4+IE15IGV4cGVjdGF0aW9uIGlzIHRoYXQgeW91IHNo
b3VsZCBjYWxsIGVhcmx5X3BhcmtfY3B1IHRvIGRvIHRoYXQgaWYgdGhlCj4+Pj4gc2Vjb25kYXJ5
IGRvZXMgbm90IHN1cHBvcnQgUFRSQVVUSCBzaW1pbGFyIHRvIHdoYXQgeW91IGRpZCBpbiB2MiBv
ZiB0aGlzCj4+Pj4gc2VyaWVzOgo+Pj4+Cj4+Pj4gRU5UUlkoX19jcHVfc2Vjb25kYXJ5X2NoZWNr
cHRyYXV0aCkKPj4+PiAjaWZkZWYgQ09ORklHX0FSTTY0X1BUUl9BVVRICj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoCAvKiBDaGVjayBpZiB0aGUgQ1BVIHN1cHBvcnRzIHB0cmF1dGggKi8KPj4+PiDCoMKg
wqDCoMKgwqDCoMKgIG1yc8KgwqDCoMKgIHgyLCBpZF9hYTY0aXNhcjFfZWwxCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoCB1YmZ4wqDCoMKgIHgyLCB4MiwgI0lEX0FBNjRJU0FSMV9BUEFfU0hJRlQsICM4
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBjYm56wqDCoMKgIHgyLCAxZgo+Pj4+IGFsdGVybmF0aXZl
X2lmIEFSTTY0X0hBU19BRERSRVNTX0FVVEgKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIG1vdsKgwqDC
oMKgIHgzLCAxCj4+Pj4gYWx0ZXJuYXRpdmVfZWxzZQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgbW92
wqDCoMKgwqAgeDMsIDAKPj4+PiBhbHRlcm5hdGl2ZV9lbmRpZgo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqAgY2J6wqDCoMKgwqAgeDMsIDFmCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAvKiBQYXJrIHRoZSBt
aXNtYXRjaGVkIHNlY29uZGFyeSBDUFUgKi8KPj4+PiDCoMKgwqDCoMKgwqDCoMKgIGVhcmx5X3Bh
cmtfY3B1IENQVV9TVFVDS19SRUFTT05fTk9fUFRSQVVUSAo+Pj4+ICNlbmRpZgo+Pj4+IDE6wqDC
oMKgwqAgcmV0Cj4+Pj4gRU5EUFJPQyhfX2NwdV9zZWNvbmRhcnlfY2hlY2twdHJhdXRoKQo+Pj4+
Cj4+Pj4gYW5kIHRoZW4gY2hlY2sgaXQgZHVyaW5nIHRoZSBzZWNvbmRhcnlfc3RhcnR1cCwgc2lt
aWxhciB0byB3aGF0IGhhcHBlbnMgZm9yCj4+Pj4gNTJCSVRfVkEgZm9yIGV4YW1wbGUuCj4+Pj4K
Pj4+PiBJbiB0aGlzIHdheSAidXBkYXRlX2Vhcmx5X2NwdV9ib290X3N0YXR1cyIgd291bGQgdXBk
YXRlIHRoZQo+Pj4+IENQVV9TVFVDS19SRUFTT05fTk9fUFRSQVVUSCBmbGFnLgo+Pj4KPj4+IFRo
aXMgd2F5IGl0IHdhcyBpbXBsZW1lbnRlZCBlYXJsaWVyLiBDYXRhbGluIHN1Z2dlc3RlZCB0aGUg
cG9pbnRlciBhdXRoCj4+PiB2YXJpYXRpb24gaW4gY3B1cyBpcyBub3QgY3JpdGljYWwgZW5vdWdo
IGFuZCBjcHVmZWF0dXJlIGZyYW1ld29yayBjYW4gcGFyayBpdAo+Pj4gbGl0dGxlIGxhdGVyIFsx
XS4KPj4+Cj4+PiBBZ3JlZSB0aGF0IEkgc2hvdWxkIGhhdmUgcmVtb3ZlZCBhbGwgZGVmaW5pdGlv
bnMgb2YgQ1BVX1NUVUNLX1JFQVNPTl9OT19QVFJBVVRICj4+PiBhbmQgcHJldmVudCB1bm5lY2Vz
c2FyeSBjb25mdXNpb25zLgo+Pj4KPj4+IFsxXSA6IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xp
c3RzL2FybS1rZXJuZWwvbXNnNzgwNzY2Lmh0bWwKPj4KPj4gSXQgd2FzIGVpdGhlciBvciA6KSBT
b3JyeSBJIGRpZCBub3Qgc2VlIENhdGFsaW4ncyBjb21tZW50LCBwbGVhc2UgZ28gYWhlYWQgYW5k
Cj4+IHJlbW92ZSB0aGUgZGVmaW5pdGlvbiBvZiBDUFVfU1RVQ0tfUkVBU09OX05PX1BUUkFVVEgg
YW5kIHRoZSBjb2RlIHRoYXQgdXNlcyBpdAo+PiBpbiB0aGlzIGNhc2UuCj4gCj4gb2sKPiAKPj4K
Pj4gTWF5YmUgeW91IHdhbnQgdG8gZXhwYW5kIGFzIHdlbGwgeW91ciBjb21taXQgbWVzc2FnZSAo
d2hpY2ggYWxyZWFkeSBzZWVtcwo+PiBjb3ZlcmluZyB0aGlzIGNhc2UpIHRvIGV4cGxhaW4gd2h5
IGl0IGlzIHBvc3NpYmxlIHRvIGxldCB0aGUgY3B1IGZyYW1ld29yayBkZWFsCj4+IHdpdGggdGhp
cyBjYXNlLiBUaGlzIHNob3VsZCBtYWtlIHRoaW5ncyBjbGVhciBhY2NvcmRpbmcgdG8gbWUuCj4g
Cj4gc3VyZS4KPiAKPj4KPj4gQW5vdGhlciBxdWVzdGlvbiB0aGF0IHN0aWxsIHJlbWFpbnMgaXM6
IGRvIHdlIG5lZWQgdG8gaW50cm9kdWNlIGVhcmx5X3BhcmtfY3B1Cj4+IGFzIHBhcnQgb2YgdGhp
cyBzZXJpZXM/IFNpbmNlIGl0IGRvZXMgbm90IHNlZW0geW91IGFyZSB1c2luZyBpdCBhbnl3aGVy
ZS4KPiAKPiBJIHNob3VsZCBwcm9iYWJseSBkcm9wIHRoaXMgY2xlYW51cCBwYXRjaCBmcm9tIHRo
aXMgc2VyaWVzIGFuZCBtYXkgYmUKPiBzZW5kIGl0IHNlcGFyYXRlbHkuCj4KClRoYW5rcyEKCldp
dGggdGhpcyBjb21tZW50cyBhZGRyZXNzZWQ6ClJldmlld2VkLWJ5OiBWaW5jZW56byBGcmFzY2lu
byA8VmluY2Vuem8uRnJhc2Npbm9AYXJtLmNvbT4KCj4+Cj4+Pj4KPj4+PiBbLi4uXQo+Pj4+Cj4+
CgotLSAKUmVnYXJkcywKVmluY2Vuem8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
