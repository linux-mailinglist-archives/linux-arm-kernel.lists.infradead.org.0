Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D76911DC9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZTDDSkU6aYYIBfOlB966AKvvEUqEKmYkGxcQiqrRvI=; b=TnMr5ntM4LAnoo
	/Ogj6Cc/vg9pkGCvsZ8Q+3CTjEy6o+eUeYRHplAHO+vJBcPqBIKHmG+X9LnVq8qJEvtJyG2GgjYWF
	97Ek7/kPR7CLi8Mr+422ZhIlbWcBTSbUll1ILl0YPyXBVYoz73oMXRpWXOxzRMKpnXkuu5OlGkzrC
	Tkd76HNmrjDzr/e8Y94DdKOhqkw/wRd/kgxVSx1PFGtKg5nkjCW2DalCxhPNlQiOaHIEPWtHRkG3s
	qtXqoA2UDr2bpPw60AMjVtKixL0b9ZPZir4x/N/+WByIYbwbERxJZZNwj2Q4tbWET0m83CmpdWHVj
	ohruvkGDqBpyAjl/E2ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbdR-0005RY-Ag; Fri, 13 Dec 2019 03:28:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbdH-0005Qq-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:28:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D823630E;
 Thu, 12 Dec 2019 19:28:46 -0800 (PST)
Received: from [192.168.0.10] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 931973F52E;
 Thu, 12 Dec 2019 19:28:43 -0800 (PST)
Subject: Re: [PATCH] arm64: Introduce ISAR6 CPU ID register
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <1576145663-9909-1-git-send-email-anshuman.khandual@arm.com>
 <20191212144633.GE46910@lakrids.cambridge.arm.com>
 <be707b09-6469-d12f-07d5-50d574dc7284@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <066cec52-f939-d55d-3a8a-e061767ec8d2@arm.com>
Date: Fri, 13 Dec 2019 08:59:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <be707b09-6469-d12f-07d5-50d574dc7284@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_192847_622406_4FB00CCE 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMi8yMDE5IDA4OjUyIFBNLCBTdXp1a2kgS3VydXBwYXNzZXJ5IFBvdWxvc2Ugd3Jv
dGU6Cj4gT24gMTIvMTIvMjAxOSAxNDo0NiwgTWFyayBSdXRsYW5kIHdyb3RlOgo+PiBPbiBUaHUs
IERlYyAxMiwgMjAxOSBhdCAwMzo0NDoyM1BNICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90
ZToKPj4+ICsjZGVmaW5lIElEX0lTQVI2X0pTQ1ZUX1NISUZUwqDCoMKgwqDCoMKgwqAgMAo+Pj4g
KyNkZWZpbmUgSURfSVNBUjZfRFBfU0hJRlTCoMKgwqDCoMKgwqDCoCA0Cj4+PiArI2RlZmluZSBJ
RF9JU0FSNl9GSE1fU0hJRlTCoMKgwqDCoMKgwqDCoCA4Cj4+PiArI2RlZmluZSBJRF9JU0FSNl9T
Ql9TSElGVMKgwqDCoMKgwqDCoMKgIDEyCj4+PiArI2RlZmluZSBJRF9JU0FSNl9TUEVDUkVTX1NI
SUZUwqDCoMKgwqDCoMKgwqAgMTYKPj4+ICsjZGVmaW5lIElEX0lTQVI2X0JGMTZfU0hJRlTCoMKg
wqDCoMKgwqDCoCAyMAo+Pj4gKyNkZWZpbmUgSURfSVNBUjZfSThNTV9TSElGVMKgwqDCoMKgwqDC
oMKgIDI0Cj4+Cj4+PiBAQCAtMzk5LDYgKzM5OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgX19m
dHJfcmVnX2VudHJ5IHsKPj4+IMKgwqDCoMKgwqAgQVJNNjRfRlRSX1JFRyhTWVNfSURfSVNBUjRf
RUwxLCBmdHJfZ2VuZXJpY18zMmJpdHMpLAo+Pj4gwqDCoMKgwqDCoCBBUk02NF9GVFJfUkVHKFNZ
U19JRF9JU0FSNV9FTDEsIGZ0cl9pZF9pc2FyNSksCj4+PiDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9S
RUcoU1lTX0lEX01NRlI0X0VMMSwgZnRyX2lkX21tZnI0KSwKPj4KPj4+ICvCoMKgwqAgQVJNNjRf
RlRSX1JFRyhTWVNfSURfSVNBUjZfRUwxLCBmdHJfZ2VuZXJpY18zMmJpdHMpLAo+Pgo+PiBVc2lu
ZyBmdHJfZ2VuZXJpY18zMmJpdHMgZXhwb3NlcyB0aGUgbG93ZXN0LWNvbW1vbi1kZW5vbWluYXRv
ciBmb3IgYWxsCj4+IDQtYml0IGZpZWxkcyBpbiB0aGUgcmVnaXN0ZXIsIGFuZCBJIGRvbid0IHRo
aW5rIHRoYXQncyB0aGUgcmlnaHQgdGhpbmcKPj4gdG8gZG8gaGVyZSwgYmVjYXVzZToKPj4KPj4g
KiBXZSBoYXZlIG5vIGlkZWEgd2hhdCBJRF9JU0FSNiBiaXRzIFszMToyOF0gbWF5IG1lYW4gaW4g
ZnV0dXJlLgo+Pgo+PiAqIEFGQUlDVCwgdGhlIGluc3RydWN0aW9ucyBkZXNjcmliZWQgYnkgSURf
SVNBUjYuU1BFQ1JFUyAoZnJvbSB0aGUKPj4gwqDCoCBBUk12OC4wLVByZWRJbnYgZXh0ZW5zaW9u
KSBvcGVyYXRlIG9uIHRoZSBsb2NhbCBQRSBhbmQgYXJlIG5vdAo+PiDCoMKgIGJyb2FkY2FzdC4g
VG8gbWFrZSB0aG9zZSB3b3JrIGFzIGEgZ3Vlc3QgZXhwZWN0cywgdGhlIGhvc3Qgd2lsbCBuZWVk
Cj4+IMKgwqAgdG8gZG8gYWRkaXRpb25hbCB0aGluZ3MgKGUuZy4gdG8gcHJlc2VydmUgdGhhdCBp
bGx1c2lvbiB3aGVuIGEgdkNQVSBpcwo+PiDCoMKgIG1pZ3JhdGVkIGZyb20gb25lIHBDUFUgdG8g
YW5vdGhlciBhbmQgYmFjaykuCj4+Cj4+IEdpdmVuIHRoYXQsIHRoaW5rIHdlIHNob3VsZCBhZGQg
YW4gZXhwbGljaXQgZnRyX2lkX2lzYXI2IHdoaWNoIG9ubHkKPj4gZXhwb3NlcyB0aGUgZmllbGRz
IHRoYXQgd2UncmUgY2VydGFpbiBhcmUgc2FmZSB0byBleHBvc2UgdG8gYSBndWVzdAo+PiAoaS5l
LiB3aXRob3V0IFNQRUNSRVMpLgo+IAo+IEFncmVlLiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMg
b3V0LiBJIHJlY29tbWVuZGVkIHRoZSB1c2FnZSBvZgo+IGdlbmVyaWNfMzJiaXRzIHRhYmxlIHdp
dGhvdXQgYWN0dWFsbHkgbG9va2luZyBhdCB0aGUgZmVhdHVyZQo+IGRlZmluaXRpb25zLgo+IAo+
IEFuc2h1bWFuLAo+IAo+IFNvcnJ5IGFib3V0IHRoaXMuCgpOb3QgYSBwcm9ibGVtLCB3aWxsIGFk
ZCBhbiBleHBsaWNpdCBkZWZpbml0aW9uIGZvciBmdHJfaWRfaXNhcjYgd2l0aAphbGwgZmVhdHVy
ZXMgZXhjZXB0IFNQRUNSRVMgYXMgTWFyayBoYWQgcG9pbnRlZCBwdXQuCgo+IAo+IENoZWVycwo+
IFN1enVraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
