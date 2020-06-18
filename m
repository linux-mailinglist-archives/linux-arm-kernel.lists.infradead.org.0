Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E441FEBAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90Mfz3UD6EK+PVM+ATUKQJFPfZrHcGSArjHGvFUqm2g=; b=Gc5W1SHpgeA3TH
	7qfv6UJ8QCU4q2zr/1xAXkc24OyMQXu+AVjDZ/ahBG8aT1GE72lPVfMP1E3SXpxV2pkh+Lwa2qIZn
	c5u6UDdDVIMxja7JxMecC5VdA//Zwqra+aA+YBFYSCXQYSu/7JrPxDcMZJjKEU9uA0oY32oKQY0LS
	ZMueOTtHEagnx2PknVhwA2+7xTYDsVVw1y6U+538GupWCCNiB2QbSZWhbIGsaieRust3d/gsHx7wY
	77qJLYqJMs/n4zbxzuCHxSLoes2D2xwEAXE6sPfsUQYxfX+2mziSbS0L/miphJ7dfshP5aUp/HQGD
	+0etrl4GY0LOyTsilgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloHE-0008GR-Tp; Thu, 18 Jun 2020 06:43:56 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloGY-0007yl-M6; Thu, 18 Jun 2020 06:43:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 1/3] x86/hyperv: allocate the hypercall page with only read
 and execute bits
Date: Thu, 18 Jun 2020 08:43:05 +0200
Message-Id: <20200618064307.32739-2-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618064307.32739-1-hch@lst.de>
References: <20200618064307.32739-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXZvaWQgYSBXXlggdmlvbGF0aW9uIGNhdXNlIGJ5IHRoZSBmYWN0IHRoYXQgUEFHRV9LRVJORUxf
RVhFQyBpbmNsdWRlcyB0aGUKd3JpdGFibGUgYml0LgoKRm9yIHRoaXMgcmVzdXJyZWN0IHRoZSBy
ZW1vdmVkIFBBR0VfS0VSTkVMX1JYIGRlZmluaXTRlm9uLCBidXQgYXMKUEFHRV9LRVJORUxfUk9Y
IHRvIG1hdGNoIGFybTY0IGFuZCBwb3dlcnBjLgoKRml4ZXM6IDc4YmIxN2Y3NmVkYyAoIng4Ni9o
eXBlcnY6IHVzZSB2bWFsbG9jX2V4ZWMgZm9yIHRoZSBoeXBlcmNhbGwgcGFnZSIpClJlcG9ydGVk
LWJ5OiBEZXh1YW4gQ3VpIDxkZWN1aUBtaWNyb3NvZnQuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KVGVzdGVkLWJ5OiBWaXRhbHkgS3V6bmV0c292IDx2
a3V6bmV0c0ByZWRoYXQuY29tPgotLS0KIGFyY2gveDg2L2h5cGVydi9odl9pbml0LmMgICAgICAg
ICAgICB8IDQgKysrLQogYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5oIHwgMiAr
KwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2lu
aXQuYwppbmRleCBhNTRjNmE0MDE1ODFkZC4uMmJkYzcyZTY4OTBlY2EgMTAwNjQ0Ci0tLSBhL2Fy
Y2gveDg2L2h5cGVydi9odl9pbml0LmMKKysrIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwpA
QCAtMzc1LDcgKzM3NSw5IEBAIHZvaWQgX19pbml0IGh5cGVydl9pbml0KHZvaWQpCiAJZ3Vlc3Rf
aWQgPSBnZW5lcmF0ZV9ndWVzdF9pZCgwLCBMSU5VWF9WRVJTSU9OX0NPREUsIDApOwogCXdybXNy
bChIVl9YNjRfTVNSX0dVRVNUX09TX0lELCBndWVzdF9pZCk7CiAKLQlodl9oeXBlcmNhbGxfcGcg
PSB2bWFsbG9jX2V4ZWMoUEFHRV9TSVpFKTsKKwlodl9oeXBlcmNhbGxfcGcgPSBfX3ZtYWxsb2Nf
bm9kZV9yYW5nZShQQUdFX1NJWkUsIDEsIFZNQUxMT0NfU1RBUlQsCisJCQlWTUFMTE9DX0VORCwg
R0ZQX0tFUk5FTCwgUEFHRV9LRVJORUxfUk9YLAorCQkJVk1fRkxVU0hfUkVTRVRfUEVSTVMsIE5V
TUFfTk9fTk9ERSwgX19mdW5jX18pOwogCWlmIChodl9oeXBlcmNhbGxfcGcgPT0gTlVMTCkgewog
CQl3cm1zcmwoSFZfWDY0X01TUl9HVUVTVF9PU19JRCwgMCk7CiAJCWdvdG8gcmVtb3ZlX2NwdWhw
X3N0YXRlOwpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5o
IGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5oCmluZGV4IDJkYTFmOTViODhk
NzYxLi44MTZiMzFjNjg1NTA1ZiAxMDA2NDQKLS0tIGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0
YWJsZV90eXBlcy5oCisrKyBiL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfdHlwZXMuaApA
QCAtMTk0LDYgKzE5NCw3IEBAIGVudW0gcGFnZV9jYWNoZV9tb2RlIHsKICNkZWZpbmUgX1BBR0Vf
VEFCTEVfTk9FTkMJIChfX1BQfF9fUld8X1VTUnxfX19BfCAgIDB8X19fRHwgICAwfCAgIDApCiAj
ZGVmaW5lIF9QQUdFX1RBQkxFCQkgKF9fUFB8X19SV3xfVVNSfF9fX0F8ICAgMHxfX19EfCAgIDB8
ICAgMHwgX0VOQykKICNkZWZpbmUgX19QQUdFX0tFUk5FTF9STwkgKF9fUFB8ICAgMHwgICAwfF9f
X0F8X19OWHxfX19EfCAgIDB8X19fRykKKyNkZWZpbmUgX19QQUdFX0tFUk5FTF9ST1gJIChfX1BQ
fCAgIDB8ICAgMHxfX19BfCAgIDB8X19fRHwgICAwfF9fX0cpCiAjZGVmaW5lIF9fUEFHRV9LRVJO
RUxfTk9DQUNIRQkgKF9fUFB8X19SV3wgICAwfF9fX0F8X19OWHxfX19EfCAgIDB8X19fR3wgX19O
QykKICNkZWZpbmUgX19QQUdFX0tFUk5FTF9WVkFSCSAoX19QUHwgICAwfF9VU1J8X19fQXxfX05Y
fF9fX0R8ICAgMHxfX19HKQogI2RlZmluZSBfX1BBR0VfS0VSTkVMX0xBUkdFCSAoX19QUHxfX1JX
fCAgIDB8X19fQXxfX05YfF9fX0R8X1BTRXxfX19HKQpAQCAtMjE5LDYgKzIyMCw3IEBAIGVudW0g
cGFnZV9jYWNoZV9tb2RlIHsKICNkZWZpbmUgUEFHRV9LRVJORUxfUk8JCV9fcGdwcm90X21hc2so
X19QQUdFX0tFUk5FTF9STyAgICAgICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfRVhF
QwlfX3BncHJvdF9tYXNrKF9fUEFHRV9LRVJORUxfRVhFQyAgICAgICB8IF9FTkMpCiAjZGVmaW5l
IFBBR0VfS0VSTkVMX0VYRUNfTk9FTkMJX19wZ3Byb3RfbWFzayhfX1BBR0VfS0VSTkVMX0VYRUMg
ICAgICAgfCAgICAwKQorI2RlZmluZSBQQUdFX0tFUk5FTF9ST1gJCV9fcGdwcm90X21hc2soX19Q
QUdFX0tFUk5FTF9ST1ggICAgICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfTk9DQUNI
RQlfX3BncHJvdF9tYXNrKF9fUEFHRV9LRVJORUxfTk9DQUNIRSAgICB8IF9FTkMpCiAjZGVmaW5l
IFBBR0VfS0VSTkVMX0xBUkdFCV9fcGdwcm90X21hc2soX19QQUdFX0tFUk5FTF9MQVJHRSAgICAg
IHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfTEFSR0VfRVhFQwlfX3BncHJvdF9tYXNrKF9f
UEFHRV9LRVJORUxfTEFSR0VfRVhFQyB8IF9FTkMpCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
