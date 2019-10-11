Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80090D477E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/3KBXud0LedKL3QqjdUDcIk4/OxBxGy++LxI7k/k8U=; b=F9TqQ/uigYKFZy
	biHtX0DcAKBA59WTJbRes2YJu1agLpWk3rlFdangKlqpZd6jAiBG97DAQj6wOWfoNkAkU3E+XLzjr
	cChoYdSxrGinCLn5/MDKF6leiii3hrbG37Avpn9hVgAKe0Slu7XjYQz9dANMCNk4jh2yziYSBkO0h
	2k8DsAMiy+u8ubDcTFNtFPr+PFp9Z11lD9/BuCddclWqwI14K8KAB+ULjfWMDtv9xRV+7UMv8F/9H
	ypjfMFbKGRSoX8aLI37Io4r4RwSoOEXg+uCt/bIusVOVaIO3yehWIv5rn3GMQ7GlrXoc3QyWwlyyb
	/ct59jwD31ANAyDH+LIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzYm-0000ds-27; Fri, 11 Oct 2019 18:22:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzYR-0000W8-BZ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:22:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCD141570;
 Fri, 11 Oct 2019 11:22:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 418213F703;
 Fri, 11 Oct 2019 11:22:18 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: Fake the IminLine size on systems affected by
 Neoverse-N1 #1542419
To: Suzuki K Poulose <suzuki.poulose@arm.com>
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-3-james.morse@arm.com>
 <f6fb7ef1-0130-c5ea-23f7-692c0933ce3b@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <def795fb-f950-b7d9-41ab-493ad7c24722@arm.com>
Date: Fri, 11 Oct 2019 19:22:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f6fb7ef1-0130-c5ea-23f7-692c0933ce3b@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_112219_447331_6C9CE5CB 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMDcvMTAvMjAxOSAxMDo0OCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwMi8xMC8yMDE5IDEwOjQ5LCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gU3lzdGVtcyBhZmZl
Y3RlZCBieSBOZW92ZXJzZS1OMSAjMTU0MjQxOSBzdXBwb3J0IERJQyBzbyBkbyBub3QgbmVlZCB0
bwo+PiBwZXJmb3JtIGljYWNoZSBtYWludGVuYW5jZSBvbmNlIG5ldyBpbnN0cnVjdGlvbnMgYXJl
IGNsZWFuZWQgdG8gdGhlIFBvVS4KPj4gRm9yIHRoZSBlcnJhdGEgd29ya2Fyb3VuZCwgdGhlIGtl
cm5lbCBoaWRlcyBESUMgZnJvbSB1c2VyLXNwYWNlLCBzbyB0aGF0Cj4+IHRoZSB1bm5lY2Vzc2Fy
eSBjYWNoZSBtYWludGVuYW5jZSBjYW4gYmUgdHJhcHBlZCBieSBmaXJtd2FyZS4KPj4KPj4gVG8g
cmVkdWNlIHRoZSBudW1iZXIgb2YgdHJhcHMsIHByb2R1Y2UgYSBmYWtlIEltaW5MaW5lIHZhbHVl
IGJhc2VkIG9uCj4+IFBBR0VfU0laRS4KCgo+PiDCoCBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9r
ZXJuZWwvdHJhcHMuYyBiL2FyY2gvYXJtNjQva2VybmVsL3RyYXBzLmMKPj4gaW5kZXggNDY1ZjBh
MGY4ZjBhLi45OTE2NDdhNjVmZTggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Ry
YXBzLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvdHJhcHMuYwo+PiBAQCAtNDcwLDkgKzQ3
MCwxMyBAQCBzdGF0aWMgdm9pZCBjdHJfcmVhZF9oYW5kbGVyKHVuc2lnbmVkIGludCBlc3IsIHN0
cnVjdCBwdF9yZWdzICpyZWdzKQo+PiDCoMKgwqDCoMKgIGludCBydCA9IEVTUl9FTHhfU1lTNjRf
SVNTX1JUKGVzcik7Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyB2YWwgPSBhcm02NF9mdHJf
cmVnX3VzZXJfdmFsdWUoJmFybTY0X2Z0cl9yZWdfY3RyZWwwKTsKPj4gwqAgLcKgwqDCoCBpZiAo
Y3B1c19oYXZlX2NvbnN0X2NhcChBUk02NF9XT1JLQVJPVU5EXzE1NDI0MTkpKQo+PiArwqDCoMKg
IGlmIChjcHVzX2hhdmVfY29uc3RfY2FwKEFSTTY0X1dPUktBUk9VTkRfMTU0MjQxOSkpIHsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHZhbCAmPSB+QklUKENUUl9ESUNfU0hJRlQpOwo+PiDCoCArwqDC
oMKgwqDCoMKgwqAgdmFsICY9IH5DVFJfSU1JTkxJTkVfTUFTSzsKPj4gK8KgwqDCoMKgwqDCoMKg
IHZhbCB8PSBQQUdFX1NISUZUIC0gMjsKCj4gbml0OiBJIHdvdWxkIGRvIDoKPiDCoMKgwqDCoMKg
wqDCoCB2YWwgfD0gKFBBR0VfU0hJRlQgLSAyKSAmIENUUl9JTUlOTElORV9NQVNLOwoKSSBndWVz
cyB0aGF0IHNhdmVzIGFueW9uZSBoYXZpbmcgdG8gd29ycnkgYWJvdXQgc3VycHJpc2luZyBQQUdF
X1NISUZUIHZhbHVlcywKCgo+IG1pbm9yIG5pdDogQWxzbyBkbyB3ZSBuZWVkIGEgY29tbWVudCBo
ZXJlIHRvIHNheSB3aHkgd2UgZG8gdGhlIElNSU5MSU5FIGJpdCA/IEkKPiB1bmRlcnN0YW5kIGl0
IGlzIHBhcnQgb2YgdGhlIGNvbW1pdCwgYnV0IGhhdmluZyBpdCBoZXJlIG1heSBiZSBoZWxwZnVs
LgoKU3VyZSwKCgo+IEVpdGhlciB3YXk6Cj4gCj4gUmV2aWV3ZWQtYnk6IFN1enVraSBLIFBvdWxv
c2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+CgoKVGhhbmtzIQoKSmFtZXMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
