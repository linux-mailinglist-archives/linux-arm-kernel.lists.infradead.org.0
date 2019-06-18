Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441874A4BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI2lKz1+sbyHp03dWpIp1wDeayrT7Rox1q5nqNbopY0=; b=qSeNibN27ERwmQ
	I3B6W/p7ztgjHqrgg3Hqm0hmNfAHXYcSwmiMBj8f0S+c0yccFY27lhrr2pSW32lM1hDWA3EPyGjcC
	Myyt85tMaXWN5e5tLFdfzH+uOVG4ickdm6xE81vNrBqkk38nuXsK570QLCkSYKghpLdEYWdOIddKW
	DGydnb/06Tjfk4FQFfKpfUKfZWQwBEJD3eP2M6dBZBImhW8FOulyqe64gEDJ8fqAEzCcKJfY+Lyv7
	QaBXf7LCiPn1bOjDCYxOnO1BBIzagvaCC13oSJwU0gbi0NJDz0ATNabQLOPuIeP+XWoN8rD/ja9jP
	UjUzqguyKPvasIhl/v+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFfO-0004FQ-0B; Tue, 18 Jun 2019 15:04:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFfA-0004En-Dg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:04:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 740342B;
 Tue, 18 Jun 2019 08:04:41 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 664943F718;
 Tue, 18 Jun 2019 08:04:40 -0700 (PDT)
Subject: Re: [PATCH v2] KVM: arm64: Skip more of the SError vaxorcism
To: Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
References: <20190610163034.116151-1-james.morse@arm.com>
 <54049114-9e59-dc1a-b355-6c3e7c0ab1f7@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <67f64f7e-3a01-9949-c0a7-1f8ccbf1edb4@arm.com>
Date: Tue, 18 Jun 2019 16:04:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <54049114-9e59-dc1a-b355-6c3e7c0ab1f7@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_080444_501061_329A68B3 
X-CRM114-Status: GOOD (  13.29  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAxMC8wNi8yMDE5IDE3OjM4LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24g
MTAvMDYvMjAxOSAxNzozMCwgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4+IER1cmluZyBfX2d1ZXN0X2V4
aXQoKSB3ZSBuZWVkIHRvIGNvbnN1bWUgYW55IFNFcnJvciBsZWZ0IHBlbmRpbmcgYnkgdGhlCj4+
IGd1ZXN0IHNvIGl0IGRvZXNuJ3QgY29udGFtaW5hdGUgdGhlIGhvc3QuIFdpdGggdjguMiB3ZSB1
c2UgdGhlCj4+IEVTQi1pbnN0cnVjdGlvbi4gRm9yIHN5c3RlbXMgd2l0aG91dCB2OC4yLCB3ZSB1
c2UgZHNiK2lzYiBhbmQgdW5tYXNrCj4+IFNFcnJvci4gV2UgZG8gdGhpcyBvbiBldmVyeSBndWVz
dCBleGl0Lgo+Pgo+PiBVc2UgdGhlIHNhbWUgZHNiK2lzcl9lbDEgdHJpY2ssIHRoaXMgbGV0cyB1
cyBrbm93IGlmIGFuIFNFcnJvciBpcyBwZW5kaW5nCj4+IGFmdGVyIHRoZSBkc2IsIGFsbG93aW5n
IHVzIHRvIHNraXAgdGhlIGlzYiBhbmQgc2VsZi1zeW5jaHJvbmlzaW5nIFBTVEFURQo+PiB3cml0
ZSBpZiBpdHMgbm90Lgo+Pgo+PiBUaGlzIG1lYW5zIFNFcnJvciByZW1haW5zIG1hc2tlZCBkdXJp
bmcgS1ZNJ3Mgd29ybGQtc3dpdGNoLCBzbyBhbnkgU0Vycm9yCj4+IHRoYXQgb2NjdXJzIGR1cmlu
ZyB0aGlzIHRpbWUgaXMgcmVwb3J0ZWQgYnkgdGhlIGhvc3QsIGluc3RlYWQgb2YgY2F1c2luZwo+
PiBhIGh5cC1wYW5pYy4KPj4KPj4gSWYgeW91IGdpdmUgZ2NjIGxpa2VseSgpL3VubGlrZWx5KCkg
aGludHMgaW4gYW4gaWYoKSBjb25kaXRpb24sIGl0Cj4+IHNodWZmbGVzIHRoZSBnZW5lcmF0ZWQg
YXNzZW1ibHkgc28gdGhhdCB0aGUgbGlrZWx5IGNhc2UgaXMgaW1tZWRpYXRlbHkKPj4gYWZ0ZXIg
dGhlIGJyYW5jaC4gTGV0cyBkbyB0aGUgc2FtZSBoZXJlLgoKPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQva3ZtL2h5cC9lbnRyeS5TIGIvYXJjaC9hcm02NC9rdm0vaHlwL2VudHJ5LlMKPj4gaW5k
ZXggYTVhNDI1NDMxNGExLi5jMmRlMWExZmFhZjQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
a3ZtL2h5cC9lbnRyeS5TCj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL2h5cC9lbnRyeS5TCj4+IEBA
IC0xNjEsMTggKzE2MSwyNCBAQCBhbHRlcm5hdGl2ZV9pZiBBUk02NF9IQVNfUkFTX0VYVE4KPj4g
wqDCoMKgwqDCoCBvcnLCoMKgwqAgeDAsIHgwLCAjKDE8PEFSTV9FWElUX1dJVEhfU0VSUk9SX0JJ
VCkKPj4gwqAgMTrCoMKgwqAgcmV0Cj4+IMKgIGFsdGVybmF0aXZlX2Vsc2UKPj4gLcKgwqDCoCAv
LyBJZiB3ZSBoYXZlIGEgcGVuZGluZyBhc3luY2hyb25vdXMgYWJvcnQsIG5vdyBpcyB0aGUKPj4g
LcKgwqDCoCAvLyB0aW1lIHRvIGZpbmQgb3V0LiBGcm9tIHlvdXIgVkFYb3JjaXN0IGJvb2ssIHBh
Z2UgNjY2Ogo+PiArwqDCoMKgIGRzYsKgwqDCoCBzecKgwqDCoMKgwqDCoMKgIC8vIFN5bmNocm9u
aXplIGFnYWluc3QgaW4tZmxpZ2h0IGxkL3N0Cj4+ICvCoMKgwqAgbXJzwqDCoMKgIHgyLCBpc3Jf
ZWwxCj4+ICvCoMKgwqAgYW5kwqDCoMKgIHgyLCB4MiwgIygxPDw4KcKgwqDCoCAvLyBJU1JfRUwx
LkEKPj4gK8KgwqDCoCBjYm56wqDCoMKgIHgyLCAyZgoKPiBJdCBkb2Vzbid0IGFwcGVhciB0aGF0
IGFueW9uZSBjYXJlcyBtdWNoIGFib3V0IHgyIGNvbnRhaW5pbmcgdGhlIG1hc2tlZCB2YWx1ZSBh
ZnRlcgo+IHJldHVybmluZywgc28gaXMgdGhpcyBqdXN0IGEgbmVlZGxlc3NseSBsb25nLWZvcm0g
VEJOWj8KClllcywgSSdkIG1ha2UgYSB0aGlyZC1yYXRlIGNvbXBpbGVyLgoKKEkgYWxtb3N0IGNl
cnRhaW5seSBoYWQgJ2NtcCB4MiwgeHpyJyBpbiB0aGVyZSBhdCBzb21lIHBvaW50ISkKCgpUaGFu
a3MsCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
