Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6241F1E6182
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/m7Q6z3of2M5oeAZn4EQg9mlm1xDacqWBEk+UgBNw+Y=; b=g/nAcQ3Db1IDCe
	bvYz/F+bohfIkhpEEvambeyWmtEXSJP/6A1TmjzHXYbkkvREnk160qCn6wXAGG7tbGZfJaph4+Oy8
	9YpOZyZuz/RhY8rgVc0Zn4dmZO3XRG9EQtue6RVxqhN/dG91uBtCVl88btrWoL3af6m5CRuOjfFkm
	LSNDRawIRKVDXsiyp64H6YPkrXQNsTtU5+SV2BHfT2gtVV4JrEeUjbP8B2OXkT0YH9l6AAd4ptKBj
	4HXVTaei2Od0GqkGON7JdPePVbgen1aGfd7gGLXCjhscGMfkccqsdbRcUX7hnjVfHSL4FR5Ze8E7H
	IiJ/YMqHmF1XYleM8gGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeI4x-00043J-9l; Thu, 28 May 2020 12:56:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeI4i-00041P-Cz
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:55:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5792AD6E;
 Thu, 28 May 2020 05:55:55 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FE503F52E;
 Thu, 28 May 2020 05:55:54 -0700 (PDT)
Subject: Re: [PATCH 2/3] KVM: arm64: Stop save/restoring ACTLR_EL1
To: Marc Zyngier <maz@kernel.org>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-3-james.morse@arm.com>
 <4d42a5db0b573c7a184aea654829a06c@kernel.org>
 <07d09551c456c6be326473e003def3ab@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <6ddbc8b4-1ed9-33a7-1f86-21edadad5aec@arm.com>
Date: Thu, 28 May 2020 13:55:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <07d09551c456c6be326473e003def3ab@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_055556_488270_60A1A515 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDI4LzA1LzIwMjAgMTM6MzgsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTA1LTI4IDEzOjM2LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9uIDIwMjAtMDUtMjYgMTc6
MTgsIEphbWVzIE1vcnNlIHdyb3RlOgo+Pj4gS1ZNIHNldHMgSENSX0VMMi5UQUNSICh3aGljaCBp
dCBjYWxscyBIQ1JfVEFDKSB2aWEgSENSX0dVRVNUX0ZMQUdTLgo+Pj4gVGhpcyBtZWFucyBBQ1RM
UiogYWNjZXNzZXMgZnJvbSB0aGUgZ3Vlc3QgYXJlIGFsd2F5cyB0cmFwcGVkLCBhbmQKPj4+IGFs
d2F5cyByZXR1cm4gdGhlIHZhbHVlIGluIHRoZSBzeXNfcmVncyBhcnJheS4KPj4+Cj4+PiBUaGUg
Z3Vlc3QgY2FuJ3QgY2hhbmdlIHRoZSB2YWx1ZSBvZiB0aGVzZSByZWdpc3RlcnMsIHNvIHdlIGFy
ZQo+Pj4gc2F2ZSByZXN0b3JpbmcgdGhlIHJlc2V0IHZhbHVlLCB3aGljaCBjYW1lIGZyb20gdGhl
IGhvc3QuCj4+Pgo+Pj4gU3RvcCBzYXZlL3Jlc3RvcmluZyB0aGlzIHJlZ2lzdGVyLgo+Pj4KPj4+
IFRoaXMgYWxzbyBzdG9wcyB0aGlzIHJlZ2lzdGVyIGJlaW5nIGFmZmVjdGVkIGJ5IHN5c3JlZ3Nf
bG9hZGVkX29uX2NwdSwKPj4+IHNvIHdlIGNhbiBwcm92aWRlIDMyIGJpdCBhY2Nlc3NvcnMgdGhh
dCBhbHdheXMgdXNlIHRoZSBpbi1tZW1vcnkgY29weS4KCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9rdm0vaHlwL3N5c3JlZy1zci5jIGIvYXJjaC9hcm02NC9rdm0vaHlwL3N5c3JlZy1zci5j
Cj4+PiBpbmRleCA3NWIxOTI1NzYzZjEuLjU3MTE2Y2YzYTFhNSAxMDA2NDQKPj4+IC0tLSBhL2Fy
Y2gvYXJtNjQva3ZtL2h5cC9zeXNyZWctc3IuYwo+Pj4gKysrIGIvYXJjaC9hcm02NC9rdm0vaHlw
L3N5c3JlZy1zci5jCgo+Pj4gQEAgLTEzMyw3ICsxMzIsNiBAQCBzdGF0aWMgdm9pZCBfX2h5cF90
ZXh0Cj4+PiBfX3N5c3JlZ19yZXN0b3JlX2VsMV9zdGF0ZShzdHJ1Y3Qga3ZtX2NwdV9jb250ZXh0
ICpjdHh0KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBpc2IoKTsKPj4+IMKgwqDCoMKgIH0KPj4+Cj4+
PiAtwqDCoMKgIHdyaXRlX3N5c3JlZyhjdHh0LT5zeXNfcmVnc1tBQ1RMUl9FTDFdLMKgwqDCoMKg
wqDCoMKgIGFjdGxyX2VsMSk7Cj4+Cj4+IElmIHdlIGRvbid0IG5lZWQgdG8gc2F2ZS9yZXN0b3Jl
IGl0LCB3ZSBjYW4gYWxzbyBkcm9wIGl0cyBwcmVzZW5jZQo+PiBpbiB0aGUgc3lzX3JlZ3MgYXJy
YXkuCgpTbyBldmVuIHVzZXItc3BhY2UgYWNjZXNzZXMgcmVhZCBmcm9tIHRoZSBoYXJkd2FyZSBy
ZWdpc3Rlcj8gRmluZSBieSBtZS4KCgo+PiBJdCBzdHJpa2VzIG1lIHRoYXQgd2UgZG9uJ3QgZXZl
biBoYXZlIGEgdHJhcCBoYW5kbGVyIGZvciB0aGlzIHN5c3JlZywKPj4gd2hldGhlciBpdCBpcyAz
MiBvciA2NGJpdC4uLiBUaGF0J3MgYSBiaXQgdW5mb3J0dW5hdGUsIHRvIHNheSB0aGUKPj4gbGVh
c3QuLi4KPiAKPiBBaCwgbm8uIHRoZSBzdWNrZXIgaXMgaGlkZGVuIGF3YXkgaW4gImdlbmVyaWNf
djgiLi4uCgpUaGF0IHRoaW5nIGlzIEE3L0ExNSAoYW5kIHRoZW4gdXNlci1BQkkpIGxlZ2FjeSBy
aWdodD8KCkkgd2FzIGxvb2tpbmcgYXQgcmlwcGluZyBhbGwgdGhhdCBvdXQgd2hlbiBJIHJhbiBv
dmVyIHRoZXNlLiBSRkMgZ3JhZGUsIGtub3duIG5vdCB0byBiaXNlY3Q6Cmh0dHA6Ly93d3cubGlu
dXgtYXJtLm9yZy9naXQ/cD1saW51eC1qbS5naXQ7YT1zaG9ydGxvZztoPXJlZnMvaGVhZHMva3Zt
X2tpbGxfdGFyZ2V0X3RhYmxlL3YwCgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
