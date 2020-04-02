Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA6E19BA67
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOC3xn4c5dagpm4CovIuIyO1jk3qgGOM8iUNwXYIUYI=; b=LqXujvfnDKiWlM
	o6wfw0U1c4vfZTRyGwRJU/AtYwDj98u3XUMuu6FW4LKialC/yiPamkuQSLbp2jaGOVPEjfzLWnYX/
	pUvZlwWjdPs984C1cC1pYt1govemqQs1G8VJb5fxH8EE3xVVtONkQfAf2ax4ukRvjGaFjIiN8wdL6
	NB1zsGD21c5lzKCg7gGfcxFOEE36ud2HVmNx9s+ddP23d6GCaFI1uZBzHMTKLqgquT7JDwA2lMzbY
	GNuu4KOboiGOQmgjgAxBnWT39Nx9Byn9PsJjLHO0X0n2vRr4Tz332es/HosLgD/aFIwxVPhFh5QQm
	RKR/T5zR0Mdskkj7g3vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpqc-0002Ei-3l; Thu, 02 Apr 2020 02:44:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpqV-0002EF-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 02:44:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 268E330E;
 Wed,  1 Apr 2020 19:44:42 -0700 (PDT)
Received: from [10.163.1.8] (unknown [10.163.1.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE6F93F71E;
 Wed,  1 Apr 2020 19:44:39 -0700 (PDT)
Subject: Re: [PATCH 6/6] arm64/cpufeature: Replace all open bits shift
 encodings with macros
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-7-git-send-email-anshuman.khandual@arm.com>
 <caea646f-2a74-115b-ab03-fb1325ed101f@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5d331165-6d3f-55d3-8994-d736d5fdb3ef@arm.com>
Date: Thu, 2 Apr 2020 08:14:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <caea646f-2a74-115b-ab03-fb1325ed101f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_194443_916137_2B6ABCB4 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, will@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8yMS8yMDIwIDEyOjEwIEFNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDAx
LzI4LzIwMjAgMTI6MzkgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBUaGVyZSBhcmUg
bWFueSBvcGVuIGJpdHMgc2hpZnQgZW5jb2RpbmdzIGZvciB2YXJpb3VzIENQVSBJRCByZWdpc3Rl
cnMgdGhhdAo+PiBhcmUgc2NhdHRlcmVkIGFjcm9zcyBjcHVmZWF0dXJlLiBUaGlzIHJlcGxhY2Vz
IHRoZW0gd2l0aCByZWdpc3RlciBzcGVjaWZpYwo+PiBzZW5zaWJsZSBtYWNybyBkZWZpbml0aW9u
cy4gVGhpcyBzaG91bGQgbm90IGhhdmUgYW55IGZ1bmN0aW9uYWwgY2hhbmdlLgo+Pgo+PiBDYzog
Q2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4gQ2M6IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+IENjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3Jn
Pgo+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQ2M6IEphbWVz
IE1vcnNlIDxqYW1lcy5tb3JzZUBhcm0uY29tPgo+PiBDYzogU3V6dWtpIEsgUG91bG9zZSA8c3V6
dWtpLnBvdWxvc2VAYXJtLmNvbT4KPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
Pj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFy
bS5jb20+Cj4+IC0tLQo+IAo+IAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJl
LmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IEBAIC0yNjMsNyAr
MjYzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyBmdHJfY3RyW10gPSB7
Cj4+IMKgwqDCoMKgwqDCoCAqIG1ha2UgdXNlIG9mICptaW5MaW5lLgo+PiDCoMKgwqDCoMKgwqAg
KiBJZiB3ZSBoYXZlIGRpZmZlcmluZyBJLWNhY2hlIHBvbGljaWVzLCByZXBvcnQgaXQgYXMgdGhl
IHdlYWtlc3QgLSBWSVBULgo+PiDCoMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDCoCBBUk02NF9GVFJf
QklUUyhGVFJfVklTSUJMRSwgRlRSX05PTlNUUklDVCwgRlRSX0VYQUNULCAxNCwgMiwgSUNBQ0hF
X1BPTElDWV9WSVBUKSzCoMKgwqAgLyogTDFJcCAqLwo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRT
KEZUUl9WSVNJQkxFLCBGVFJfTk9OU1RSSUNULCBGVFJfRVhBQ1QsIENUUl9MMUlQX1NISUZULCAy
LCBJQ0FDSEVfUE9MSUNZX1ZJUFQpLMKgwqDCoCAvKiBMMUlwICovCj4+IMKgwqDCoMKgwqAgQVJN
NjRfRlRSX0JJVFMoRlRSX1ZJU0lCTEUsIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCBDVFJf
SU1JTkxJTkVfU0hJRlQsIDQsIDApLAo+PiDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9FTkQsCj4+IMKg
IH07Cj4+IEBAIC0yNzQsMTkgKzI3NCwxOSBAQCBzdHJ1Y3QgYXJtNjRfZnRyX3JlZyBhcm02NF9m
dHJfcmVnX2N0cmVsMCA9IHsKPj4gwqAgfTsKPj4gwqAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBh
cm02NF9mdHJfYml0cyBmdHJfaXQgd2lsbCBub3QgYmUgYSBnb29kIGlkZWEgdG8gaWRfbW1mcjBb
XSA9IHsKPj4gLcKgwqDCoCBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1Qs
IEZUUl9MT1dFUl9TQUZFLCAyOCwgNCwgMHhmKSzCoMKgwqAgLyogSW5uZXJTaHIgKi8KPj4gLcKg
wqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FG
RSwgMjQsIDQsIDApLMKgwqDCoCAvKiBGQ1NFICovCj4+IC3CoMKgwqAgQVJNNjRfRlRSX0JJVFMo
RlRSX0hJRERFTiwgRlRSX05PTlNUUklDVCwgRlRSX0xPV0VSX1NBRkUsIDIwLCA0LCAwKSzCoMKg
wqAgLyogQXV4UmVnICovCj4+IC3CoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRS
X1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIDE2LCA0LCAwKSzCoMKgwqAgLyogVENNICovCj4+IC3C
oMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NB
RkUsIDEyLCA0LCAwKSzCoMKgwqAgLyogU2hhcmVMdmwgKi8KPj4gLcKgwqDCoCBTX0FSTTY0X0ZU
Ul9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCA4LCA0LCAweGYp
LMKgwqDCoCAvKiBPdXRlclNociAqLwo+PiAtwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9ISURE
RU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCA0LCA0LCAwKSzCoMKgwqAgLyogUE1TQSAq
Lwo+PiAtwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZUUl9M
T1dFUl9TQUZFLCAwLCA0LCAwKSzCoMKgwqAgLyogVk1TQSAqLwo+PiArwqDCoMKgIFNfQVJNNjRf
RlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX01NRlIw
X0lOTkVSU0hSX1NISUZULCA0LCAweGYpLAo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9I
SURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCBJRF9NTUZSMF9GQ1NFX1NISUZULCA0
LCAwKSwKPj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfTk9OU1RSSUNU
LCBGVFJfTE9XRVJfU0FGRSwgSURfTU1GUjBfQVVYUkVHX1NISUZULCA0LCAwKSwKPj4gK8KgwqDC
oCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwg
SURfTU1GUjBfVENNX1NISUZULCA0LCAwKSwKPj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJf
SElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfTU1GUjBfU0hBUkVMVkxfU0hJ
RlQsIDQsIDApLAo+PiArwqDCoMKgIFNfQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NU
UklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX01NRlIwX09VVEVSU0hSX1NISUZULCA0LCAweGYpLAo+
PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dF
Ul9TQUZFLCBJRF9NTUZSMF9QTVNBX1NISUZULCA0LCAwKSwKPj4gK8KgwqDCoCBBUk02NF9GVFJf
QklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfTU1GUjBfVk1T
QV9TSElGVCwgNCwgMCksCj4+IMKgwqDCoMKgwqAgQVJNNjRfRlRSX0VORCwKPj4gwqAgfTsKPj4g
wqAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyBmdHJfaWRfYWE2NGRmcjBb
XSA9IHsKPj4gLcKgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBG
VFJfRVhBQ1QsIDM2LCAyOCwgMCksCj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERF
TiwgRlRSX1NUUklDVCwgRlRSX0VYQUNULCBJRF9BQTY0REZSMF9ET1VCTEVMT0NLX1NISUZULCAy
OCwgMCksCj4gCj4gVGhpcyBtdXN0IGJlIGEgc2lnbmVkIGZlYXR1cmUsIGFzIHdlIGhhdmUgdGhl
IGZvbGxvd2luZyBwb3NzaWJsZSB2YWx1ZXMgOgo+IAo+IMKgwqDCoMKgMGIwMDAwIC0gRG91Ymxl
IGxvY2sgaW1wbGVtZW50ZWQKPiDCoMKgwqDCoDBiMTExMSAtIERvdWJsZSBsb2NrIG5vdCBpbXBs
ZW1lbnRlZC4KPiAKPiBTbywgaW4gY2FzZSBvZiBhIGNvbmZsaWN0IHdlIHdhbnQgdGhlIHNhZmUg
dmFsdWUgYXMgMGIxMTExLgo+IAo+IFBsZWFzZSBjb3VsZCB5b3UgZml4IHRoaXMgYXMgd2VsbCA/
CgpTdXJlIGJ1dCBpbiBhIHNlcGFyYXRlIHBhdGNoLCBhcyB3b3VsZCBsaWtlIHRvIHByZXZlbnQg
bWl4aW5nIGFueQphY3R1YWwgY29kZSBjaGFuZ2UgZnJvbSBtYWNybyByZXBsYWNlbWVudC4KCj4g
Cj4gCj4gVGhpcyBwYXRjaCBhcyBzdWNoIGxvb2tzIGZpbmUgdG8gbWUuCj4gCj4gUmV2aWV3ZWQt
Ynk6IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
