Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B818160F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kNPcETopAMPYa/tPsbtwECHIDaH/erh0tgLgzM3bh5U=; b=VfdGyUWVqeFhHP0/+ymP7tn8K
	LV2/yhcTTMFE/yYL761X+ty2aYNEU8Q9YOV2weuTtTmUx5Eq5c3ocnlOa1VTNdJiF3UuTBRf+CoWf
	irWnWHxIu5JQohq9mMl7sRuXbt2sGRzW1QZneid0CN0mIjDYVqftPNam3vOiyYahwo1lbvAEy/PiO
	7C1WsdEU5FM6/RBmtxN7sGN2Ia4lU9yleaItENk6+G7WQo9EIFF+5+IEBKyc7cqyEkBBxVYa+vhaY
	EMu2FAUzWj5+OsPi4wwH0otrv/BkAt1tcxBbcUQakebLmGOE7dT/bS/ifT+NQHKAZgXFkp7tkAPrY
	9Ym1I5HIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBysn-0005fx-3G; Wed, 11 Mar 2020 10:46:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBysS-0005Uq-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:46:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D57331FB;
 Wed, 11 Mar 2020 03:46:15 -0700 (PDT)
Received: from [10.163.1.234] (unknown [10.163.1.234])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28EEE3F6CF;
 Wed, 11 Mar 2020 03:46:11 -0700 (PDT)
Subject: Re: [PATCH v6 09/18] arm64: enable ptrauth earlier
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-10-git-send-email-amit.kachhap@arm.com>
 <4000de90-6196-364d-dcad-5476d85e18e0@arm.com>
 <1ea33eee-186c-d073-8687-43302e00c807@arm.com>
 <92f04bd6-dced-a8c5-827d-0dfa5eabfb6a@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <436a6d6a-d5c3-14db-0a5f-afdb62125eff@arm.com>
Date: Wed, 11 Mar 2020 16:16:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <92f04bd6-dced-a8c5-827d-0dfa5eabfb6a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034616_846297_031C3C99 
X-CRM114-Status: GOOD (  18.48  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmluY2Vuem8sCgpPbiAzLzExLzIwIDM6NTYgUE0sIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3Rl
Ogo+IEhpIEFtaXQsCj4gCj4gT24gMy8xMS8yMCA2OjI2IEFNLCBBbWl0IEthY2hoYXAgd3JvdGU6
Cj4gCj4gWy4uLl0KPiAKPj4+Cj4+PiBNeSBleHBlY3RhdGlvbiBpcyB0aGF0IHlvdSBzaG91bGQg
Y2FsbCBlYXJseV9wYXJrX2NwdSB0byBkbyB0aGF0IGlmIHRoZQo+Pj4gc2Vjb25kYXJ5IGRvZXMg
bm90IHN1cHBvcnQgUFRSQVVUSCBzaW1pbGFyIHRvIHdoYXQgeW91IGRpZCBpbiB2MiBvZiB0aGlz
IHNlcmllczoKPj4+Cj4+PiBFTlRSWShfX2NwdV9zZWNvbmRhcnlfY2hlY2twdHJhdXRoKQo+Pj4g
I2lmZGVmIENPTkZJR19BUk02NF9QVFJfQVVUSAo+Pj4gIMKgwqDCoMKgwqDCoMKgIC8qIENoZWNr
IGlmIHRoZSBDUFUgc3VwcG9ydHMgcHRyYXV0aCAqLwo+Pj4gIMKgwqDCoMKgwqDCoMKgIG1yc8Kg
wqDCoMKgIHgyLCBpZF9hYTY0aXNhcjFfZWwxCj4+PiAgwqDCoMKgwqDCoMKgwqAgdWJmeMKgwqDC
oCB4MiwgeDIsICNJRF9BQTY0SVNBUjFfQVBBX1NISUZULCAjOAo+Pj4gIMKgwqDCoMKgwqDCoMKg
IGNibnrCoMKgwqAgeDIsIDFmCj4+PiBhbHRlcm5hdGl2ZV9pZiBBUk02NF9IQVNfQUREUkVTU19B
VVRICj4+PiAgwqDCoMKgwqDCoMKgwqAgbW92wqDCoMKgwqAgeDMsIDEKPj4+IGFsdGVybmF0aXZl
X2Vsc2UKPj4+ICDCoMKgwqDCoMKgwqDCoCBtb3bCoMKgwqDCoCB4MywgMAo+Pj4gYWx0ZXJuYXRp
dmVfZW5kaWYKPj4+ICDCoMKgwqDCoMKgwqDCoCBjYnrCoMKgwqDCoCB4MywgMWYKPj4+ICDCoMKg
wqDCoMKgwqDCoCAvKiBQYXJrIHRoZSBtaXNtYXRjaGVkIHNlY29uZGFyeSBDUFUgKi8KPj4+ICDC
oMKgwqDCoMKgwqDCoCBlYXJseV9wYXJrX2NwdSBDUFVfU1RVQ0tfUkVBU09OX05PX1BUUkFVVEgK
Pj4+ICNlbmRpZgo+Pj4gMTrCoMKgwqDCoCByZXQKPj4+IEVORFBST0MoX19jcHVfc2Vjb25kYXJ5
X2NoZWNrcHRyYXV0aCkKPj4+Cj4+PiBhbmQgdGhlbiBjaGVjayBpdCBkdXJpbmcgdGhlIHNlY29u
ZGFyeV9zdGFydHVwLCBzaW1pbGFyIHRvIHdoYXQgaGFwcGVucyBmb3IKPj4+IDUyQklUX1ZBIGZv
ciBleGFtcGxlLgo+Pj4KPj4+IEluIHRoaXMgd2F5ICJ1cGRhdGVfZWFybHlfY3B1X2Jvb3Rfc3Rh
dHVzIiB3b3VsZCB1cGRhdGUgdGhlCj4+PiBDUFVfU1RVQ0tfUkVBU09OX05PX1BUUkFVVEggZmxh
Zy4KPj4KPj4gVGhpcyB3YXkgaXQgd2FzIGltcGxlbWVudGVkIGVhcmxpZXIuIENhdGFsaW4gc3Vn
Z2VzdGVkIHRoZSBwb2ludGVyIGF1dGgKPj4gdmFyaWF0aW9uIGluIGNwdXMgaXMgbm90IGNyaXRp
Y2FsIGVub3VnaCBhbmQgY3B1ZmVhdHVyZSBmcmFtZXdvcmsgY2FuIHBhcmsgaXQKPj4gbGl0dGxl
IGxhdGVyIFsxXS4KPj4KPj4gQWdyZWUgdGhhdCBJIHNob3VsZCBoYXZlIHJlbW92ZWQgYWxsIGRl
ZmluaXRpb25zIG9mIENQVV9TVFVDS19SRUFTT05fTk9fUFRSQVVUSAo+PiBhbmQgcHJldmVudCB1
bm5lY2Vzc2FyeSBjb25mdXNpb25zLgo+Pgo+PiBbMV0gOiBodHRwczovL3d3dy5zcGluaWNzLm5l
dC9saXN0cy9hcm0ta2VybmVsL21zZzc4MDc2Ni5odG1sCj4gCj4gSXQgd2FzIGVpdGhlciBvciA6
KSBTb3JyeSBJIGRpZCBub3Qgc2VlIENhdGFsaW4ncyBjb21tZW50LCBwbGVhc2UgZ28gYWhlYWQg
YW5kCj4gcmVtb3ZlIHRoZSBkZWZpbml0aW9uIG9mIENQVV9TVFVDS19SRUFTT05fTk9fUFRSQVVU
SCBhbmQgdGhlIGNvZGUgdGhhdCB1c2VzIGl0Cj4gaW4gdGhpcyBjYXNlLgoKb2sKCj4gCj4gTWF5
YmUgeW91IHdhbnQgdG8gZXhwYW5kIGFzIHdlbGwgeW91ciBjb21taXQgbWVzc2FnZSAod2hpY2gg
YWxyZWFkeSBzZWVtcwo+IGNvdmVyaW5nIHRoaXMgY2FzZSkgdG8gZXhwbGFpbiB3aHkgaXQgaXMg
cG9zc2libGUgdG8gbGV0IHRoZSBjcHUgZnJhbWV3b3JrIGRlYWwKPiB3aXRoIHRoaXMgY2FzZS4g
VGhpcyBzaG91bGQgbWFrZSB0aGluZ3MgY2xlYXIgYWNjb3JkaW5nIHRvIG1lLgoKc3VyZS4KCj4g
Cj4gQW5vdGhlciBxdWVzdGlvbiB0aGF0IHN0aWxsIHJlbWFpbnMgaXM6IGRvIHdlIG5lZWQgdG8g
aW50cm9kdWNlIGVhcmx5X3BhcmtfY3B1Cj4gYXMgcGFydCBvZiB0aGlzIHNlcmllcz8gU2luY2Ug
aXQgZG9lcyBub3Qgc2VlbSB5b3UgYXJlIHVzaW5nIGl0IGFueXdoZXJlLgoKSSBzaG91bGQgcHJv
YmFibHkgZHJvcCB0aGlzIGNsZWFudXAgcGF0Y2ggZnJvbSB0aGlzIHNlcmllcyBhbmQgbWF5IGJl
CnNlbmQgaXQgc2VwYXJhdGVseS4KCj4gCj4+Pgo+Pj4gWy4uLl0KPj4+Cj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
