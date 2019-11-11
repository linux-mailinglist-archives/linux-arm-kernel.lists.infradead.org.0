Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1A0F7867
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 17:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8ysoI5F1+iCTeirkbqg//GFTcD6Gtyge2cLuHPWJgE=; b=kuvxdQozrB5gJ+
	a3/NNamWX1K0UdTSBx9z++rkhB8O5OqqDOT+hwDV8/uboBXitgTBfeBdcEydpvc4qE1raw36j9BzX
	FjaRi0czKSa9EkcXNRZJZjPbAkCCEXCKcRhSneIXy8CGuX1+1qLz+d/l9x8qCLXGSmD8lhy/zsQQ/
	Rb+/YMaiCsXgmqWSUmg9eNVjD1ZZwRRxT+71C0YeTAmLAlkbDKxhJBkbXzaC3OnMsAeft43cOQiTv
	XWnnwPFB+XcCHv9I5j/WHOMZ2IJ+g5+WfBaWNQPiBkhwTZHIgaTEKdarKJt5zmO6vg4LBmSTlz0sb
	KWPlabxOraq4V62wcnow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCEK-0003yK-0z; Mon, 11 Nov 2019 16:07:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCEB-0003xs-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 16:07:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05B0B31B;
 Mon, 11 Nov 2019 08:07:43 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6C8A3F534;
 Mon, 11 Nov 2019 08:07:41 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: Rename WORKAROUND_1165522 to SPECULATIVE_AT
To: Marc Zyngier <maz@kernel.org>
References: <20191111141157.55062-1-steven.price@arm.com>
 <20191111141157.55062-2-steven.price@arm.com>
 <160a852027f4481cc63aed72c4f4a409@www.loen.fr>
From: Steven Price <steven.price@arm.com>
Message-ID: <013eec05-b558-d97a-bf95-248a62f25dc5@arm.com>
Date: Mon, 11 Nov 2019 16:07:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <160a852027f4481cc63aed72c4f4a409@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_080744_005390_670F45FE 
X-CRM114-Status: GOOD (  21.74  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTEvMjAxOSAxNTo0MiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFN0ZXZlbiwKPiAK
PiBPbiAyMDE5LTExLTExIDE1OjIxLCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4+IENvcnRleC1BNTUg
aXMgYWZmZWN0ZWQgYnkgYSBzaW1pbGFyIGVycmF0dW0sIHNvIHJlbmFtZSB0aGUgZXhpc3RpbmcK
Pj4gd29ya2Fyb3VuZCBmb3IgZXJyYXJ1bSAxMTY1NTIyIHNvIGl0IGNhbiBiZSB1c2VkIGZvciBi
b3RoIGVycmF0YS4KPiAKPiBuaXQ6IGVycmF0dW0KClRoYW5rcywgSSBkbyBzZWVtIHRvIGhhdmUg
dHJvdWJsZSBzcGVsbGluZyBpdCBjb3JyZWN0bHkgOikKCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN0
ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtNjQv
S2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArKysrCj4+IMKgYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9jcHVjYXBzLmjCoCB8wqAgMiArLQo+PiDCoGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20va3ZtX2hvc3QuaCB8wqAgMiArLQo+PiDCoGFyY2gvYXJtNjQvaW5jbHVkZS9h
c20va3ZtX2h5cC5owqAgfMKgIDMgKy0tCj4+IMKgYXJjaC9hcm02NC9rZXJuZWwvY3B1X2VycmF0
YS5jwqDCoMKgIHwgMTcgKysrKysrKysrKysrKy0tLS0KPj4gwqBhcmNoL2FybTY0L2t2bS9oeXAv
c3dpdGNoLmPCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4gwqBhcmNoL2FybTY0L2t2bS9oeXAvdGxi
LmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKystLQo+PiDCoDcgZmlsZXMgY2hhbmdlZCwgMjMg
aW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L0tjb25maWcgYi9hcmNoL2FybTY0L0tjb25maWcKPj4gaW5kZXggM2YwNDdhZmI5ODJjLi42
Y2I0ZWZmNjAyYzYgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZwo+PiArKysgYi9h
cmNoL2FybTY0L0tjb25maWcKPj4gQEAgLTUxMCw5ICs1MTAsMTMgQEAgY29uZmlnIEFSTTY0X0VS
UkFUVU1fMTQxODA0MAo+Pgo+PiDCoMKgwqDCoMKgwqAgSWYgdW5zdXJlLCBzYXkgWS4KPj4KPj4g
K2NvbmZpZyBBUk02NF9XT1JLQVJPVU5EX1NQRUNVTEFUSVZFX0FUCj4+ICvCoMKgwqAgYm9vbAo+
PiArCj4+IMKgY29uZmlnIEFSTTY0X0VSUkFUVU1fMTE2NTUyMgo+PiDCoMKgwqDCoCBib29sICJD
b3J0ZXgtQTc2OiBTcGVjdWxhdGl2ZSBBVCBpbnN0cnVjdGlvbiB1c2luZyBvdXQtb2YtY29udGV4
dAo+PiB0cmFuc2xhdGlvbiByZWdpbWUgY291bGQgY2F1c2Ugc3Vic2VxdWVudCByZXF1ZXN0IHRv
IGdlbmVyYXRlIGFuCj4+IGluY29ycmVjdCB0cmFuc2xhdGlvbiIKPj4gwqDCoMKgwqAgZGVmYXVs
dCB5Cj4+ICvCoMKgwqAgc2VsZWN0IEFSTTY0X1dPUktBUk9VTkRfU1BFQ1VMQVRJVkVfQVQKPiAK
PiBJJ2Qgb2JqZWN0IHRoYXQgQVJNNjRfRVJSQVRVTV8xMzE5MzY3IChhbmQgaXRzIGJpZyBicm90
aGVyIDEzMTk1MzcpCj4gYXJlIGFsc28gcmVsYXRlZCB0byBzcGVjdWxhdGl2ZSBBVCBleGVjdXRp
b24sIGFuZCB5ZXQgYXJlIG5vdCBjb3ZlcmVkCj4gYnkgdGhpcyBjb25maWd1cmF0aW9uIHN5bWJv
bC4KCkdvb2QgcG9pbnQuCgo+IEkgY2FuIHNlZSB0aHJlZSBzb2x1dGlvbnMgdG8gdGhpczoKPiAK
PiAtIEVpdGhlciB5b3UgY2FsbCBpdCBTUEVDVUxBVElWRV9BVF9WSEUgYW5kIGludHJvZHVjZSBT
UEVDVUxBVElWRV9BVF9OVkhFCj4gwqAgZm9yIHN5bW1ldHJ5CgpUZW1wdGluZy4uLgoKPiAtIE9y
IHlvdSBtYWtlIFNQRUNVTEFUSVZFX0FUIGNvdmVyIGFsbCB0aGUgc3BlY3VsYXRpdmUgQVQgZXJy
YXRhLCB3aGljaAo+IMKgIG1heSBvciBtYXkgbm90IHdvcmsuLi4KClRoaXMgYWN0dWFsbHkgc291
bmRzIHRoZSBuZWF0ZXN0LCBidXQgSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhlcmUncyBnb2luZwp0
byBiZSBhbnkgY29uZmxpY3RzIGJldHdlZW4gVkhFL05WSEUuIEknbGwgcHJvdG90eXBlIHRoaXMg
YW5kIHNlZSBob3cKdWdseSBpdCBpcy4KCj4gLSBPciBldmVuIGJldHRlciwgeW91IGp1c3QgYW1t
ZW5kIHRoZSBkb2N1bWVudGF0aW9uIHRvIHNheSB0aGF0IDExNjU1MjIKPiDCoCBhbHNvIGNvdmVy
cyB0aGUgbmV3bHkgZm91bmQgQTU1IG9uZSAoanVzdCBsaWtlIHdlIGhhdmUgZm9yIEE1Ny9BNzIp
CgpXZWxsIE1hcmsgUnV0bGFuZCBkaXNsaWtlZCBteSBpbml0aWFsIHRob3VnaHRzIGFib3V0IGp1
c3QgaW5jbHVkaW5nIGJvdGgKZXJyYXRhIGluIG9uZSBvcHRpb24gbGlrZSB0aGF0IC0gaGVuY2Ug
dGhlIHJlZmFjdG9yaW5nIGluIHRoaXMgcGF0Y2guCkFsdGhvdWdoIG9mIGNvdXJzZSB0aGF0J3Mg
ZXhhY3RseSB3aGF0J3MgaGFwcGVuZWQgd2l0aCAxMzE5MzY3LzEzMTk1MzcuLi4KCj4gV2hhdCBk
byB5b3UgdGhpbms/CgpJJ2xsIGhhdmUgYSBnbyBhdCBTUEVDVUxBVElWRV9BVCBjb3ZlcmluZyBi
b3RoIFZIRS9OVkhFIC0gZnJvbSBhbgppbml0aWFsIGxvb2sgaXQgc2VlbXMgbGlrZSBpdCBzaG91
bGQgd29yayBhbmQgaXQgd291bGQgYmUgbmVhdCBpZiBpdApkb2VzLiBJbiBwYXJ0aWN1bGFyIGl0
IHNob3VsZCBhdm9pZCB0aGUgbmVjZXNzaXR5IHRvIHJlcXVpcmUgVkhFIHdoZW4KdGhlIGVycmF0
dW0gaXMgcHJlc2VudC4KCk90aGVyd2lzZSBJIGd1ZXNzIFNQRUNVTEFUSVZFX0FUX3ssTn1WSEUg
aXMgcHJvYmFibHkgc2Vjb25kIGJlc3QuCgpUaGFua3MsCgpTdGV2ZQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
