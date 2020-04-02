Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2606419BA61
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAJP+SFRmb+Th7C2yOgh96f8RmIlCvf0feSJlajhZDs=; b=V1+zDzemCikcPq
	r8xQ6U2I4voLw6m0XqCbJ1TAxpDMi4V6V8KhXuYqkaIWDgbmRYNUj0g78gV9Ns0SagYKY0vz0PHTP
	CnnG1cRrVpweRLlkancv/OFlcglCLjqQqKYe7SejQGQgRjxFh0UKvPaJv8CFv2kkjVha6u49uH65w
	EnG/L9yjXIQDLs3jj62mQgyzvfpcAHwzqjZmwteZGNLxwgx6/xtcIChePxyuaK76YvYKmyrjFz/Ld
	l9D25pryXu15UeSSmoTS8pUGP4leNmRAEFO6Vkh69Ezjaq4rymeqmcXmPMcXyoZkMC3MGxwpdkcOM
	/MpWFCst/DQERRBVp1nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpkL-0007KD-RV; Thu, 02 Apr 2020 02:38:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpkF-0007Ja-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 02:38:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57FA430E;
 Wed,  1 Apr 2020 19:38:14 -0700 (PDT)
Received: from [10.163.1.8] (unknown [10.163.1.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 481723F71E;
 Wed,  1 Apr 2020 19:38:11 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64/cpufeature: Add DIT and CSV2 feature bits in
 ID_PFR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
 <fc6a3044-4ca7-8a37-d948-498d0d89a426@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <428968f6-d4ba-7b64-a2b0-59177c6a6be7@arm.com>
Date: Thu, 2 Apr 2020 08:08:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fc6a3044-4ca7-8a37-d948-498d0d89a426@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_193815_323472_AC1D9231 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8yMC8yMDIwIDExOjM3IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IENjOiBN
YXJrIFJ1dGxhbmQKClN1cmUsIHdpbGwgYWRkIHRoaXMgdG8gYWxsIHRoZSBwYXRjaGVzIGhlcmUu
IEFsc28gYWRkICdTdWdnZXN0ZWQtYnknCnRhZ3Mgb24gYWxsIHRoZSBjaGFuZ2VzIHByb3Bvc2Vk
IGJ5IE1hcmsuIFNob3VsZCBoYXZlIGFscmVhZHkgYWRkZWQKdGhhdCBpbiB0aGlzIHZlcnNpb24g
YXMgd2VsbCwgbXkgYmFkLgoKPiAKPiBPbiAwMS8yOC8yMDIwIDEyOjM5IFBNLCBBbnNodW1hbiBL
aGFuZHVhbCB3cm90ZToKPj4gRW5hYmxlIERJVCBhbmQgQ1NWMiBmZWF0dXJlIGJpdHMgaW4gSURf
UEZSMCByZWdpc3RlciBhcyBwZXIgQVJNIERESSAwNDg3RS5hCj4+IHNwZWNpZmljYXRpb24uIEV4
Y2VwdCBSQVMgYW5kIEFNVSwgYWxsIG90aGVyIGZlYXR1cmUgYml0cyBhcmUgbm93IGVuYWJsZWQu
Cj4+Cj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+PiBD
YzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4gQ2M6IFN1enVraSBLIFBvdWxvc2Ug
PHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnCj4+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVh
bEBhcm0uY29tPgo+IAo+IFJldmlld2VkLWJ5OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2kucG91
bG9zZUBhcm0uY29tPgo+IAo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNy
ZWcuaCB8IDMgKysrCj4+IMKgIGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuY8KgIHwgMiAr
Kwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vc3lzcmVnLmgKPj4gaW5kZXggMDU0YWFiN2ViZjFiLi40NjlkNjFjOGZhYmYgMTAwNjQ0Cj4+
IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gKysrIGIvYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9zeXNyZWcuaAo+PiBAQCAtNzE4LDYgKzcxOCw5IEBACj4+IMKgICNkZWZp
bmUgSURfSVNBUjZfRFBfU0hJRlTCoMKgwqDCoMKgwqDCoCA0Cj4+IMKgICNkZWZpbmUgSURfSVNB
UjZfSlNDVlRfU0hJRlTCoMKgwqDCoMKgwqDCoCAwCj4+IMKgICsjZGVmaW5lIElEX1BGUjBfRElU
X1NISUZUwqDCoMKgwqDCoMKgwqAgMjQKPj4gKyNkZWZpbmUgSURfUEZSMF9DU1YyX1NISUZUwqDC
oMKgwqDCoMKgwqAgMTYKPj4gKwo+PiDCoCAjZGVmaW5lIElEX1BGUjJfU1NCU19TSElGVMKgwqDC
oMKgwqDCoMKgIDQKPj4gwqAgI2RlZmluZSBJRF9QRlIyX0NTVjNfU0hJRlTCoMKgwqDCoMKgwqDC
oCAwCj4+IMKgIGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMgYi9h
cmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gaW5kZXggYzFlODM3ZmM4Zjk3Li45ZTRk
YWIxNWM2MDggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+
PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gQEAgLTM0MSw2ICszNDEs
OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9pc2FyNltdID0g
ewo+PiDCoCB9Owo+PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0
cl9pZF9wZnIwW10gPSB7Cj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRS
X1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX1BGUjBfRElUX1NISUZULCA0LCAwKSwKPj4gK8Kg
wqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FG
RSwgSURfUEZSMF9DU1YyX1NISUZULCA0LCAwKSwKPj4gwqDCoMKgwqDCoCBBUk02NF9GVFJfQklU
UyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgMTIsIDQsIDApLMKgwqDC
oMKgwqDCoMKgIC8qIFN0YXRlMyAqLwo+PiDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9I
SURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCA4LCA0LCAwKSzCoMKgwqDCoMKgwqDC
oCAvKiBTdGF0ZTIgKi8KPj4gwqDCoMKgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBG
VFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgNCwgNCwgMCkswqDCoMKgwqDCoMKgwqAgLyogU3Rh
dGUxICovCj4+Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
