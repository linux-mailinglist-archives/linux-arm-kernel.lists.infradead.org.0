Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBA481A81
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODife4ymYfcK6rNGyxnxXBsqQQoSDuw3xjcjDWbQw0g=; b=F3sFrtYUPzKA3C
	sFYnN5yN0P3umpsbx176LZTEWIKyNyxaqQ+yk14HvA7SgKlR788rBdJwBsiE1/yWUvsu6Hk8wSmqK
	WvKj6yahYrluVYo2KD4N8e3ZgXUrfZqTvKxMeuAoO/zGAOr7UndHg30ySElvvKtP3y+gb3XlRiD7i
	NpBpmzyCAnvXvxMAhb9nTLntE3coWrMRyhUsyXQntbC2ojHMQjekyTBBXEqmXnbjzBczA7fqG+Dgw
	sTN/J4GsE4FLbsOQdFdJjAuOknzaVmn+/d+HpUCFiPwSJB7yt92N8X+yXxDb8B/phNrMwifjchhJ0
	91dEuz/O1Dmdqwk0oqXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huch9-0001l7-7d; Mon, 05 Aug 2019 13:06:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hucgm-0001jW-1N
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:06:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E280D337;
 Mon,  5 Aug 2019 06:06:08 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4FEBA3F77D;
 Mon,  5 Aug 2019 06:06:07 -0700 (PDT)
Subject: Re: [PATCH 1/9] KVM: arm64: Document PV-time interface
To: Zenghui Yu <yuzenghui@huawei.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-2-steven.price@arm.com>
 <3bdd764a-b6f5-d17e-a703-d8eb13838efc@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <fd8b0c8d-79d1-1501-cee0-d3f6bc1c3487@arm.com>
Date: Mon, 5 Aug 2019 14:06:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3bdd764a-b6f5-d17e-a703-d8eb13838efc@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_060612_125925_E236C389 
X-CRM114-Status: GOOD (  14.99  )
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDgvMjAxOSAwNDoyMywgWmVuZ2h1aSBZdSB3cm90ZToKPiBIaSBTdGV2ZW4sCj4gCj4g
T24gMjAxOS84LzIgMjI6NTAsIFN0ZXZlbiBQcmljZSB3cm90ZToKPj4gSW50cm9kdWNlIGEgcGFy
YXZpcnR1YWxpemF0aW9uIGludGVyZmFjZSBmb3IgS1ZNL2FybTY0IGJhc2VkIG9uIHRoZQo+PiAi
QXJtIFBhcmF2aXJ0dWFsaXplZCBUaW1lIGZvciBBcm0tQmFzZSBTeXN0ZW1zIiBzcGVjaWZpY2F0
aW9uIERFTiAwMDU3QS4KPj4KPj4gVGhpcyBvbmx5IGFkZHMgdGhlIGRldGFpbHMgYWJvdXQgIlN0
b2xlbiBUaW1lIiBhcyB0aGUgZGV0YWlscyBvZiAiTGl2ZQo+PiBQaHlzaWNhbCBUaW1lIiBoYXZl
IG5vdCBiZWVuIGZ1bGx5IGFncmVlZC4KPj4KPj4gVXNlciBzcGFjZSBjYW4gc3BlY2lmeSBhIHJl
c2VydmVkIGFyZWEgb2YgbWVtb3J5IGZvciB0aGUgZ3Vlc3QgYW5kCj4+IGluZm9ybSBLVk0gdG8g
cG9wdWxhdGUgdGhlIG1lbW9yeSB3aXRoIGluZm9ybWF0aW9uIG9uIHRpbWUgdGhhdCB0aGUgaG9z
dAo+PiBrZXJuZWwgaGFzIHN0b2xlbiBmcm9tIHRoZSBndWVzdC4KPj4KPj4gQSBoeXBlcmNhbGwg
aW50ZXJmYWNlIGlzIHByb3ZpZGVkIGZvciB0aGUgZ3Vlc3QgdG8gaW50ZXJyb2dhdGUgdGhlCj4+
IGh5cGVydmlzb3IncyBzdXBwb3J0IGZvciB0aGlzIGludGVyZmFjZSBhbmQgdGhlIGxvY2F0aW9u
IG9mIHRoZSBzaGFyZWQKPj4gbWVtb3J5IHN0cnVjdHVyZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4+IC0tLQo+PiDCoCBEb2N1bWVu
dGF0aW9uL3ZpcnR1YWwva3ZtL2FybS9wdnRpbWUudHh0IHwgMTA3ICsrKysrKysrKysrKysrKysr
KysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMDcgaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9hcm0vcHZ0aW1lLnR4dAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgXl5eXl5eXgo+IFRoaXMgZGlyZWN0b3J5IGhhcyBiZWVuIHJlbmFtZWQg
cmVjZW50bHksIHNlZToKPiAKPiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEx
MzYxMDQvCgpUaGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0IC0gSSdsbCBtb3ZlIGl0IGluIHRo
ZSBuZXh0IHZlcnNpb24uCgpTdGV2ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
