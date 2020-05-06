Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D071C68FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAvtv1tq9Bj7t8l50/jHs5azPuJCrW+ZefBecO9SGmo=; b=juAxPYoBy/C2pC
	LO93Tw3lagjdTOGDMLXjR1CkyKuxXh/pSiM/TnScTXN/+JH5/CapSxfA2vVUej9CmZ6zssZXAvjhj
	WmqUHUl4Viqc5zb4mUfhmePqRuORhekVgoXXXUHeV9WJ7eqlsdSOPBCBrWIT68L2CZUtXkSIIfUbQ
	2mV44I6p47PkUwOFWivW5uO7i9C+SrRXwenUaV70mnmTQG3pIwtGEjKtyGb57NkqklFbZdn2hPPiw
	tP8TJxoWcfoEiVSVujzW0o2kzlfalYIRLZumJgoVYEaLnavreIsbMAVVmJB0OjneW1LbqzvE7/vMb
	v1l13R+TD0/bne5qQ8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDcp-00063i-9N; Wed, 06 May 2020 06:33:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDcf-000637-8f
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:33:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF6FF30E;
 Tue,  5 May 2020 23:33:35 -0700 (PDT)
Received: from [10.163.71.196] (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C737B3F68F;
 Tue,  5 May 2020 23:33:33 -0700 (PDT)
Subject: Re: [PATCH V3 11/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64PFR1 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-12-git-send-email-anshuman.khandual@arm.com>
 <4c6e9f6e-fffa-8fdf-ad1a-f0c6514c3571@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <197bddfb-d63f-7824-63eb-cc38ae729efe@arm.com>
Date: Wed, 6 May 2020 12:03:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <4c6e9f6e-fffa-8fdf-ad1a-f0c6514c3571@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_233337_354934_F25ED00D 
X-CRM114-Status: GOOD (  15.24  )
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

CgpPbiAwNS8wNS8yMDIwIDAyOjU0IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzAyLzIwMjAgMDI6MzQgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBFbmFibGUgdGhl
IGZvbGxvd2luZyBmZWF0dXJlcyBiaXRzIGluIElEX0FBNjRQRlIxIHJlZ2lzdGVyIGFzIHBlciBB
Uk0gRERJCj4+IDA0ODdGLmEgc3BlY2lmaWNhdGlvbi4KPj4KPj4gQ2M6IENhdGFsaW4gTWFyaW5h
cyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJu
ZWwub3JnPgo+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQ2M6
IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcKPj4KPj4gU3VnZ2VzdGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3Jn
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hhbmR1YWxA
YXJtLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmggfCA0
ICsrKysKPj4gwqAgYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jwqAgfCA0ICsrKysKPj4g
wqAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3N5
c3JlZy5oCj4+IGluZGV4IGM5M2VhNjYxM2Y1MS4uZjFjMGQ4NzQyMjBhIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3N5c3JlZy5oCj4+ICsrKyBiL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vc3lzcmVnLmgKPj4gQEAgLTY2Niw3ICs2NjYsMTEgQEAKPj4gwqAgI2RlZmluZSBJ
RF9BQTY0UEZSMF9FTDBfMzJCSVRfNjRCSVTCoMKgwqAgMHgyCj4+IMKgIMKgIC8qIGlkX2FhNjRw
ZnIxICovCj4+ICsjZGVmaW5lIElEX0FBNjRQRlIxX01QQU1GUkFDX1NISUZUwqDCoMKgIDE2Cj4+
ICsjZGVmaW5lIElEX0FBNjRQRlIxX1JBU0ZSQUNfU0hJRlTCoMKgwqAgMTIKPj4gKyNkZWZpbmUg
SURfQUE2NFBGUjFfTVRFX1NISUZUwqDCoMKgwqDCoMKgwqAgOAo+PiDCoCAjZGVmaW5lIElEX0FB
NjRQRlIxX1NTQlNfU0hJRlTCoMKgwqDCoMKgwqDCoCA0Cj4+ICsjZGVmaW5lIElEX0FBNjRQRlIx
X0JUX1NISUZUwqDCoMKgwqDCoMKgwqAgMAo+PiDCoCDCoCAjZGVmaW5lIElEX0FBNjRQRlIxX1NT
QlNfUFNUQVRFX05JwqDCoMKgIDAKPj4gwqAgI2RlZmluZSBJRF9BQTY0UEZSMV9TU0JTX1BTVEFU
RV9PTkxZwqDCoMKgIDEKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1
cmUuYyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+PiBpbmRleCBmNWEzOWUwNDA4
MDQuLjE4MWUwOWQ2MjE0NyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVh
dHVyZS5jCj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+PiBAQCAtMjMz
LDcgKzIzMywxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9h
YTY0cGZyMFtdID0gewo+PiDCoCB9Owo+PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0
X2Z0cl9iaXRzIGZ0cl9pZF9hYTY0cGZyMVtdID0gewo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRT
KEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NFBGUjFfTVBB
TUZSQUNfU0hJRlQsIDQsIDApLAo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9WSVNJQkxF
LCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NFBGUjFfUkFTRlJBQ19TSElGVCwg
NCwgMCksCj4gCj4gVGhlc2Ugc2hvdWxkIGJlIGhpZGRlbiBhcyB3ZWxsLgoKV2lsbCBjaGFuZ2Uu
Cgo+IAo+PiArwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBG
VFJfTE9XRVJfU0FGRSwgSURfQUE2NFBGUjFfTVRFX1NISUZULCA0LCAwKSwKPj4gwqDCoMKgwqDC
oCBBUk02NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUs
IElEX0FBNjRQRlIxX1NTQlNfU0hJRlQsIDQsIElEX0FBNjRQRlIxX1NTQlNfUFNUQVRFX05JKSwK
Pj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklDVCwgRlRSX0xP
V0VSX1NBRkUsIElEX0FBNjRQRlIxX0JUX1NISUZULCA0LCAwKSwKPiAKPiBJIHdvdWxkIHNheSBy
ZW1vdmUgdGhlIE1URSwgQlRJIGZpZWxkcyBmb3Igbm93LiBBcyB0aGV5IG11c3QgYmUgVklTSUJM
RSwgYnV0IHdpdGggdGhlIGtlcm5lbCBzdXBwb3J0IGZvciB0aGVzZSBtZXJnZWQuIFRoZXkgd2ls
bCBiZSBhZGRlZCB3aXRoIHRoZWlyIHJlc3BlY3RpdmUgc2VyaWVzLgpTdXJlLCB3aWxsIGRyb3Ag
YWJvdmUgY2hhbmdlcyBmcm9tIHRoZSBzZXJpZXMuCgo+IAo+IFN1enVraQo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
