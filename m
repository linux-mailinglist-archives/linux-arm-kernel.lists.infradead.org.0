Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7431C4ECA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54L6ZWBi/NiBS2cRfd3bwFtZ/AwIfWNZCJo1tzW19B4=; b=pWCXYmOdObtf7w
	S6ypI7hR+Jhkj8lmliiLUTAXHrv7SRvCviEXGOEn16e3GstK4SyjhQuGfsd+W1vmiU9y7aep7d5rt
	Mwzc6+NY9rzCeGYjGyEgyP6ceyjqdQ75twBHS3rD3VDAMfg5wOpMUfC+XV+Hjjx6G9AoXJRufgYtB
	Bk+goX9TpvQM4SPJQjtz/P2X/7fGF7gG0zh/wwXttsK6VCQmHSSQhZzuUIO5qR+MWhC+IcARlU7ZT
	1Ia8kt0t5C5rC8J0yqFJAxLPt79f7aj8HkdWzHlx8eGfPqeOeBm0D6IJOUajTbeUlBLmW+LWiV/Ka
	iFYBHmzlQeOFJCBBNCDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrfI-00020p-Ld; Tue, 05 May 2020 07:06:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrf9-00020D-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:06:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C8521FB;
 Tue,  5 May 2020 00:06:43 -0700 (PDT)
Received: from [10.163.71.248] (unknown [10.163.71.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8DF63F68F;
 Tue,  5 May 2020 00:06:40 -0700 (PDT)
Subject: Re: [PATCH V3 09/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64ISAR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-10-git-send-email-anshuman.khandual@arm.com>
 <0e5274dc-e2e3-646a-076b-ebe195048c5a@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f50ed4ab-0028-088f-1e49-925af5cfa2f2@arm.com>
Date: Tue, 5 May 2020 12:36:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0e5274dc-e2e3-646a-076b-ebe195048c5a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_000643_874928_71D34304 
X-CRM114-Status: GOOD (  14.40  )
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

CgpPbiAwNS8wNS8yMDIwIDEwOjI0IEFNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzAyLzIwMjAgMDI6MzMgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgVExC
IGZlYXR1cmVzIGJpdCBpbiBJRF9BQTY0SVNBUjAgcmVnaXN0ZXIgYXMgcGVyIEFSTSBEREkgMDQ4
N0YuYQo+PiBzcGVjaWZpY2F0aW9uLgo+Pgo+PiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGlu
Lm1hcmluYXNAYXJtLmNvbT4KPj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+
IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+PiBDYzogU3V6dWtpIEsg
UG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KPj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+
Pgo+PiBTdWdnZXN0ZWQtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVhbEBhcm0uY29tPgo+
PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaCB8IDEgKwo+PiDCoCBh
cmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmPCoCB8IDEgKwo+PiDCoCAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9zeXNyZWcuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmgKPj4gaW5kZXgg
MGYzNDkyN2Y1MmI5Li40MGVhZjg5ZjEwMzIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vc3lzcmVnLmgKPj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcu
aAo+PiBAQCAtNTk3LDYgKzU5Nyw3IEBACj4+IMKgIMKgIC8qIGlkX2FhNjRpc2FyMCAqLwo+PiDC
oCAjZGVmaW5lIElEX0FBNjRJU0FSMF9STkRSX1NISUZUwqDCoMKgwqDCoMKgwqAgNjAKPj4gKyNk
ZWZpbmUgSURfQUE2NElTQVIwX1RMQl9TSElGVMKgwqDCoMKgwqDCoMKgIDU2Cj4+IMKgICNkZWZp
bmUgSURfQUE2NElTQVIwX1RTX1NISUZUwqDCoMKgwqDCoMKgwqAgNTIKPj4gwqAgI2RlZmluZSBJ
RF9BQTY0SVNBUjBfRkhNX1NISUZUwqDCoMKgwqDCoMKgwqAgNDgKPj4gwqAgI2RlZmluZSBJRF9B
QTY0SVNBUjBfRFBfU0hJRlTCoMKgwqDCoMKgwqDCoCA0NAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5j
Cj4+IGluZGV4IGY0ZTE1ZTM1NWFlZS4uZGJlZGNhZTI4MDYxIDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1
ZmVhdHVyZS5jCj4+IEBAIC0xNzQsNiArMTc0LDcgQEAgc3RhdGljIGJvb2wgX19zeXN0ZW1fbWF0
Y2hlc19jYXAodW5zaWduZWQgaW50IG4pOwo+PiDCoMKgICovCj4+IMKgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgYXJtNjRfZnRyX2JpdHMgZnRyX2lkX2FhNjRpc2FyMFtdID0gewo+PiDCoMKgwqDCoMKg
IEFSTTY0X0ZUUl9CSVRTKEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwg
SURfQUE2NElTQVIwX1JORFJfU0hJRlQsIDQsIDApLAo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRT
KEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NElTQVIwX1RM
Ql9TSElGVCwgNCwgMCksCj4gCj4gSSBkb24ndCBzZWUgYW55IHJlYXNvbiB3aHkgdGhpcyBzaG91
bGQgYmUgVklTSUJMRSB0byB0aGUgdXNlcnNwYWNlLgoKT2theSwgd2lsbCBtYWtlIGl0IEZUUl9I
SURERU4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
