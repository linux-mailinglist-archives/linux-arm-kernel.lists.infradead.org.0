Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76811DFC2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 03:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uukzbyoJw7aqy6C67910gBcz6k/oeNS7DTTFjrNlkQ=; b=rhyglmc6cCP5j+
	hzxOe+S8WC6NkC44g9il7Igktueecty2qEVG8ZZaSKOcE6Lp9jng7GnmACA0iBgmFxlHRBhy/8XTp
	7ifbR9gAC+z0XuThbSdW0NnWrAjGJcxdnTJeqlSb5XDVXGNKQQI2yMnHxfqlgcz11Pi3p0VO0u56l
	Nn56Nfx3ulv8fEnJIzDFT9bRS9ETuPtyAzsRw0+973wFLKvPsRzPXiT/1ZyxC+xByoaBmoOE0sErm
	di/EOq/6XxvzgBSgVE/suBt3LnVvD2fb6sqvaaM6bzsnHwmDAL8B1niIR/uFyRznDSNh8m+6drRnq
	SNMTHmz2o8Aq8ww6uOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcf9o-0003ng-Gm; Sun, 24 May 2020 01:10:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcf9c-0003mp-1S
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 01:10:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3E0230E;
 Sat, 23 May 2020 18:10:14 -0700 (PDT)
Received: from [10.163.75.81] (unknown [10.163.75.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E24C23F52E;
 Sat, 23 May 2020 18:10:12 -0700 (PDT)
Subject: Re: [PATCH V4 13/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64MMFR1 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-14-git-send-email-anshuman.khandual@arm.com>
 <6ad2dde0-455f-90a6-7b76-eda4fe8d6efe@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ca5e8fe6-b36f-dc22-bc6f-b96a845a399d@arm.com>
Date: Sun, 24 May 2020 06:39:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <6ad2dde0-455f-90a6-7b76-eda4fe8d6efe@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_181016_130847_93C855B6 
X-CRM114-Status: GOOD (  12.75  )
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
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xOS8yMDIwIDA3OjE0IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzE5LzIwMjAgMTA6NDAgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgRVRT
LCBUV0VELCBYTlggYW5kIFNQRUNTRUkgZmVhdHVyZXMgYml0cyBpbiBJRF9BQTY0TU1GUjEgcmVn
aXN0ZXIgYXMKPj4gcGVyIEFSTSBEREkgMDQ4N0YuYSBzcGVjaWZpY2F0aW9uLgo+Pgo+PiBDYzog
Q2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4gQ2M6IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPgo+PiBDYzogU3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4K
Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZwo+Pgo+PiBTdWdnZXN0ZWQtYnk6IFdpbGwgRGVhY29uIDx3
aWxsQGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNo
dW1hbi5raGFuZHVhbEBhcm0uY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9zeXNyZWcuaCB8IDQgKysrKwo+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmPC
oCB8IDQgKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaCBiL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gaW5kZXggOTVmZGZjNWU5YmQwLi5mOWRkMmM1YWIwNzQg
MTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gKysrIGIv
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaAo+PiBAQCAtNzM0LDYgKzczNCwxMCBAQAo+
PiDCoCAjZW5kaWYKPj4gwqAgwqAgLyogaWRfYWE2NG1tZnIxICovCj4+ICsjZGVmaW5lIElEX0FB
NjRNTUZSMV9FVFNfU0hJRlTCoMKgwqDCoMKgwqDCoCAzNgo+PiArI2RlZmluZSBJRF9BQTY0TU1G
UjFfVFdFRF9TSElGVMKgwqDCoMKgwqDCoMKgIDMyCj4+ICsjZGVmaW5lIElEX0FBNjRNTUZSMV9Y
TlhfU0hJRlTCoMKgwqDCoMKgwqDCoCAyOAo+PiArI2RlZmluZSBJRF9BQTY0TU1GUjFfU1BFQ1NF
SV9TSElGVMKgwqDCoCAyNAo+PiDCoCAjZGVmaW5lIElEX0FBNjRNTUZSMV9QQU5fU0hJRlTCoMKg
wqDCoMKgwqDCoCAyMAo+PiDCoCAjZGVmaW5lIElEX0FBNjRNTUZSMV9MT1JfU0hJRlTCoMKgwqDC
oMKgwqDCoCAxNgo+PiDCoCAjZGVmaW5lIElEX0FBNjRNTUZSMV9IUERfU0hJRlTCoMKgwqDCoMKg
wqDCoCAxMgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIGIv
YXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IGluZGV4IDdjZTE5Zjk3YmE3My4uMWYx
MGZmN2RmNzA1IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMK
Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IEBAIC0yOTksNiArMjk5
LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXJtNjRfZnRyX2JpdHMgZnRyX2lkX2FhNjRtbWZy
MFtdID0gewo+PiDCoCB9Owo+PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9i
aXRzIGZ0cl9pZF9hYTY0bW1mcjFbXSA9IHsKPj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJf
SElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NE1NRlIxX0VUU19TSElG
VCwgNCwgMCksCj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklD
VCwgRlRSX0xPV0VSX1NBRkUsIElEX0FBNjRNTUZSMV9UV0VEX1NISUZULCA0LCAwKSwKPj4gK8Kg
wqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FG
RSwgSURfQUE2NE1NRlIxX1hOWF9TSElGVCwgNCwgMCksCj4+ICvCoMKgwqAgQVJNNjRfRlRSX0JJ
VFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX0FBNjRNTUZSMV9T
UEVDU0VJX1NISUZULCA0LCAwKSwKPiAKPiBTcGVjU0VJIG11c3QgYmUgSElHSEVSX1NBRkUsIGxp
a2Ugd2UgZGlkIGZvciBNTUZSNCA/CgpTdXJlLCB3aWxsIGNoYW5nZS4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
