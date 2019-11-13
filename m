Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4CFB291
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2esDMyOoejkCPH60kIG2Mlkxd3Np0x8idwLKYTmW/HU=; b=ppEu4ZzMUKO9kb
	/AYDBXZyMDVq842r0cbTdYj/EEbAOWnbFrM8M1yIb+DYUS5kgc/s4b7OVTmrU3G/Aj+4ZD6M9y8Fr
	xyf/7dkGIis61qwethtgcQbByTAKgVp6zZs/nRQZja3HUW2XTXskYUDLazk2YCoR+7EfZD4xivegL
	6zTiFi6IL/h/CNJa4lnH1XsoEw59dyvznkjWKeGPsMxjyFg++OuDisLFIbFt0L+SQ5uBkuJO0ALnu
	TUfTbgKcEbYXst7U/G6SqSYtiMHGQ6euCzKkCQT+OV5ckXK7gUI9iRnmeoboGWfvdTEWW5pgvrQiq
	KwuT63DJ5LFsALLBuA9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUte0-0005Pn-Ks; Wed, 13 Nov 2019 14:29:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtdt-0005Oz-O9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:29:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8BD27A7;
 Wed, 13 Nov 2019 06:29:08 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4EF33F6C4;
 Wed, 13 Nov 2019 06:29:07 -0800 (PST)
Subject: Re: [PATCH v2 1/2] arm64: Combine workarounds for speculative AT
 errata
To: Marc Zyngier <maz@kernel.org>
References: <20191113114118.2427-1-steven.price@arm.com>
 <20191113114118.2427-2-steven.price@arm.com>
 <566ecd45c8bf07b3cb5d75a10c9413a8@www.loen.fr>
From: Steven Price <steven.price@arm.com>
Message-ID: <d66a3b7f-0338-ca70-7a98-b95aba64221a@arm.com>
Date: Wed, 13 Nov 2019 14:29:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <566ecd45c8bf07b3cb5d75a10c9413a8@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_062909_831390_4050947B 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMTEvMjAxOSAxMjo0NCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTEtMTMg
MTI6NTAsIFN0ZXZlbiBQcmljZSB3cm90ZToKPj4gQ29ydGV4LUE1Ny9BNzIgaGF2ZSBhIHNpbWls
YXIgZXJyYXRhIHRvIENvcnRleC1BNzYgcmVnYXJkaW5nIHNwZWN1bGF0aW9uCj4+IG9mIHRoZSBB
VCBpbnN0cnVjdGlvbi4gU2luY2UgdGhlIHdvcmthcm91bmQgZm9yIEE1Ny9BNzIgZG9lc24ndCBy
ZXF1aXJlCj4+IFZIRSwgdGhlIHJlc3RyaWN0aW9uIGVuZm9yY2luZyBWSEUgZm9yIEE3NiBjYW4g
YmUgcmVtb3ZlZCBieSBjb21iaW5pbmcKPj4gdGhlIHdvcmthcm91bmQgZmxhZyBmb3IgYm90aCBl
cnJhdGEuCj4gCj4gQXJlIHdlIHN1cmUgdGhhdCBBNzYgYmVoYXZlcyB0aGUgc2FtZSBhcyBBNTcv
QTcyIHdoZW4gaXQgY29tZXMgdG8gbm90Cj4gY2FjaGluZyBhbnkgb2YgdGhlIEVQRCogYml0cyBp
biB0aGUgVExCPyBCZWNhdXNlIHRoZSAxMzE5MzY3IHdvcmthcm91bmQKPiBoYXMgYSBsb3Qgb2Yg
dGhlIEE3MiBtaWNyb2FyY2ggaW1wbGljaXQgdG8gaXQsIGFuZCBJJ20gbm90IHN1cmUgdGhpcwo+
IHdvcmtzIGFzIGlzIG9uIEE3NiBvciBBNTUuLi4KCkhtbSwgd2VsbCBJIHdhcyBnb2luZyBwdXJl
bHkgb24gdGhlIGVycmF0YSBkb2N1bWVudHMgd2hpY2ggaGF2ZQpiYXNpY2FsbHkgdGhlIHNhbWUg
dGV4dCBmb3IgYWxsIHRoZSBlcnJhdGEuIEkgaGF2ZSB0byBhZG1pdCBJIGRvIG5vdAp1bmRlcnN0
YW5kIHRoZSBtaWNyb2FyY2ggZGV0YWlscyBoZXJlLiBQZXJoYXBzIGl0IHdvdWxkIGJlIGJldHRl
ciB0bwpsZWF2ZSB0aGUgVkhFIGFuZCBOVkhFIGNhc2VzIHNlcGFyYXRlZCB0aGVuPwoKU3RldmVu
Cgo+IFRoZSBwYXRjaCBpdHNlbGYgbG9va3MgT0ssIGJ1dCBJJ2QgbGlrZSBzb21lIHJlYXNzdXJh
bmNlIGFib3V0IHRoZQo+IGFib3ZlLgo+IAo+IMKgwqDCoMKgwqDCoMKgwqAgTS4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
