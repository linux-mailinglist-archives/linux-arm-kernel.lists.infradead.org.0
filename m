Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2061C6906
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbTVD78SnITtureqLNGCgZB28uJ4DQl5ex+N1zbJr0s=; b=b80mjntqEkAhIe
	mbZSCt4OOsCpwapDTgnPfhFcT/uOVT8Ysbj1G0iGOfuQCkVKLXKlseqsDQANKEXTGSIQbNVYlbbII
	sPSi5yYrcmpYl2ezgUBLZQeLWc0p5pIuh261M1rkm0/sTBKF+UREUKun85umtNTuoRmQqUlR2Sa3N
	kENhzL4fKsBvtS3VJgn3KADNUzs7zZnSb4tLBnkx8mjN6Se553jZlgz7DZQ4+zhdes0855rxHadCz
	gcxenyHZz7XpSoX4VX/6cRhC9ockAvIH/yDqJxf49M0UY/QjtabXl1HpmG/RZ+mMrk492cQkKYMaT
	68O3q22FuNV6nITXE56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDfX-0000uk-Ca; Wed, 06 May 2020 06:36:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDfK-0000t8-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:36:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB09830E;
 Tue,  5 May 2020 23:36:21 -0700 (PDT)
Received: from [10.163.71.196] (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB4A83F68F;
 Tue,  5 May 2020 23:36:19 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 10/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64PFR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-11-git-send-email-anshuman.khandual@arm.com>
 <f5e8b407-c731-7ff9-df47-fc54182f2d25@arm.com>
Message-ID: <7116fd7d-eb16-c5c4-c8e4-ffdc71b0983c@arm.com>
Date: Wed, 6 May 2020 12:05:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f5e8b407-c731-7ff9-df47-fc54182f2d25@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_233622_863453_57F93DFA 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8wNS8yMDIwIDEwOjI5IEFNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzAyLzIwMjAgMDI6MzMgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgTVBB
TSBhbmQgU0VMMiBmZWF0dXJlcyBiaXRzIGluIElEX0FBNjRQRlIwIHJlZ2lzdGVyIGFzIHBlciBB
Uk0gRERJCj4+IDA0ODdGLmEgc3BlY2lmaWNhdGlvbi4KPj4KPj4gQ2M6IENhdGFsaW4gTWFyaW5h
cyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJu
ZWwub3JnPgo+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQ2M6
IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcKPj4KPj4gU3VnZ2VzdGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3Jn
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hhbmR1YWxA
YXJtLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmggfCAy
ICsrCj4+IMKgIGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuY8KgIHwgMiArKwo+PiDCoCAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVn
LmgKPj4gaW5kZXggNDBlYWY4OWYxMDMyLi5jOTNlYTY2MTNmNTEgMTAwNjQ0Cj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9zeXNyZWcuaAo+PiBAQCAtNjQxLDYgKzY0MSw4IEBACj4+IMKgICNkZWZpbmUgSURfQUE2
NFBGUjBfQ1NWMl9TSElGVMKgwqDCoMKgwqDCoMKgIDU2Cj4+IMKgICNkZWZpbmUgSURfQUE2NFBG
UjBfRElUX1NISUZUwqDCoMKgwqDCoMKgwqAgNDgKPj4gwqAgI2RlZmluZSBJRF9BQTY0UEZSMF9B
TVVfU0hJRlTCoMKgwqDCoMKgwqDCoCA0NAo+PiArI2RlZmluZSBJRF9BQTY0UEZSMF9NUEFNX1NI
SUZUwqDCoMKgwqDCoMKgwqAgNDAKPj4gKyNkZWZpbmUgSURfQUE2NFBGUjBfU0VMMl9TSElGVMKg
wqDCoMKgwqDCoMKgIDM2Cj4+IMKgICNkZWZpbmUgSURfQUE2NFBGUjBfU1ZFX1NISUZUwqDCoMKg
wqDCoMKgwqAgMzIKPj4gwqAgI2RlZmluZSBJRF9BQTY0UEZSMF9SQVNfU0hJRlTCoMKgwqDCoMKg
wqDCoCAyOAo+PiDCoCAjZGVmaW5lIElEX0FBNjRQRlIwX0dJQ19TSElGVMKgwqDCoMKgwqDCoMKg
IDI0Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMgYi9hcmNo
L2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gaW5kZXggZGJlZGNhZTI4MDYxLi5mNWEzOWUw
NDA4MDQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+PiAr
KysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gQEAgLTIxNyw2ICsyMTcsOCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9hYTY0cGZyMFtdID0g
ewo+PiDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9OT05TVFJJQ1Qs
IEZUUl9MT1dFUl9TQUZFLCBJRF9BQTY0UEZSMF9DU1YyX1NISUZULCA0LCAwKSwKPj4gwqDCoMKg
wqDCoCBBUk02NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NB
RkUsIElEX0FBNjRQRlIwX0RJVF9TSElGVCwgNCwgMCksCj4+IMKgwqDCoMKgwqAgQVJNNjRfRlRS
X0JJVFMoRlRSX0hJRERFTiwgRlRSX05PTlNUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX0FBNjRQ
RlIwX0FNVV9TSElGVCwgNCwgMCksCj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX1ZJU0lC
TEUsIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCBJRF9BQTY0UEZSMF9NUEFNX1NISUZULCA0
LCAwKSwKPj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklDVCwg
RlRSX0xPV0VSX1NBRkUsIElEX0FBNjRQRlIwX1NFTDJfU0hJRlQsIDQsIDApLAo+IAo+IEJvdGgg
b2YgdGhlbSBtdXN0IGJlIGhpZGRlbi4gQW5kIGFsc28gbmVlZCB0byBjaGVjayB0aGUgaW1wYWN0
IG9mIGV4cG9zaW5nIHRoaXMgdG8gdGhlIGd1ZXN0cywgZXNwZWNpYWxseSBNUEFNLgoKSnVzdCB0
cnlpbmcgdG8gdW5kZXJzdGFuZC4gV2Ugc2hvdWxkIG1ha2UgYm90aCBNUEFNIGFuZCBTRUwyLCBG
VFJfSElEREVOIGZvcgpub3csIGluIHdoaWNoIGNhc2UgdGhleSBzaG91bGQgbm90IGJlIHZpc2li
bGUgdG8gdGhlIHVzZXJzcGFjZSBvciBndWVzdHMuIEJ1dAp3ZSB3b3VsZCBuZWVkIHRvIGNoZWNr
IGltcGFjdCBvZiB0aGVpciBleHBvc3VyZSB0byBndWVzdHMgYmVmb3JlIHRoZXkgY2FuIGJlCm1h
ZGUgdmlzaWJsZSBsYXRlciBvbi4gSXMgdGhhdCBjb3JyZWN0ID8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
