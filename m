Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC54AD5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WvK/1PeKrQmxuasyU2swFUmBlkZNzZ/6thAtW+iMwGM=; b=KeWSwdywo6JCrdDELF4nVVBUM
	DwYL/Gj7gzqwTb1HYpQRwkYbuPYajlCfeGHth7YyGgvSeeYencTFXpF4H89cj6dASBRMBw1K57OEX
	GBMU/ur1ZIvNr/gb35SXd9EUFgSIU/dXruPcaCSjj4zvyLoiVkXg5vRlCegcU4kE8ANWLaCwMWNgW
	uqQ9Ipk9p1wBCkqaphNQ3EQmHt5CDrJZzM6952nBK6Vqg/mZWyER7ORgXXLZb3wnEHtec3hw0yBO5
	C8vGh5jRYA0XW2R+JxEL+el0ru/V+vCQWQjYc+MHqu8Jd/jle+oNIEmQvjXCau2hlZKAMYk5D2Cuh
	HVvnnth8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLeo-0003De-Si; Tue, 18 Jun 2019 21:28:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLed-0003Ci-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:28:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAFCE360;
 Tue, 18 Jun 2019 14:28:32 -0700 (PDT)
Received: from [192.168.122.164] (u201426.austin.arm.com [10.118.28.29])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C84843F718;
 Tue, 18 Jun 2019 14:28:32 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: John Garry <john.garry@huawei.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
 <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
 <718438d0-8648-897a-83e8-801146a0af86@arm.com>
 <f6f7f9bb-547d-3fd3-f3f8-1d55181f63d7@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <11fb712f-b3c2-5491-89ee-ea7efb18ddd8@arm.com>
Date: Tue, 18 Jun 2019 16:28:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f6f7f9bb-547d-3fd3-f3f8-1d55181f63d7@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142835_953045_44BAE754 
X-CRM114-Status: GOOD (  17.14  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA2LzE4LzE5IDEyOjIzIFBNLCBKb2huIEdhcnJ5IHdyb3RlOgo+IE9uIDE4LzA2LzIw
MTkgMTU6NDAsIFZhbGVudGluIFNjaG5laWRlciB3cm90ZToKPj4gT24gMTgvMDYvMjAxOSAxNToy
MSwgSmVyZW15IExpbnRvbiB3cm90ZToKPj4gWy4uLl0KPj4+Pj4gKyAqIFJldHVybjogLUVOT0VO
VCBpZiB0aGUgUFBUVCBkb2Vzbid0IGV4aXN0LCB0aGUgQ1BVIGNhbm5vdCBiZSAKPj4+Pj4gZm91
bmQgb3IKPj4+Pj4gKyAqwqDCoMKgwqDCoMKgIHRoZSB0YWJsZSByZXZpc2lvbiBpc24ndCBuZXcg
ZW5vdWdoLgo+Pj4+PiArICogT3RoZXJ3aXNlIHJldHVybnMgZmxhZyB2YWx1ZQo+Pj4+PiArICov
Cj4+Pj4KPj4+PiBOaXQ6IHN0cmljdGx5IHNwZWFraW5nIHdlJ3JlIG5vdCByZXR1cm5pbmcgdGhl
IGZsYWcgdmFsdWUgYnV0IGl0cyBtYXNrCj4+Pj4gYXBwbGllZCB0byB0aGUgZmxhZ3MgZmllbGQu
IEkgZG9uJ3QgdGhpbmsgYW55b25lIHdpbGwgY2FyZSBhYm91dCAKPj4+PiBnZXR0aW5nCj4+Pj4g
dGhlIGFjdHVhbCBmbGFnIHZhbHVlLCBidXQgaXQgc2hvdWxkIGJlIG1hZGUgb2J2aW91cyBpbiB0
aGUgZG9jOgo+Pj4KPj4+IE9yIEkgY2xhcmlmeSB0aGUgY29kZSB0byBhY3R1YWxseSBkbyB3aGF0
IHRoZSBjb21tZW50cyBzYXlzLiBNYXliZSAKPj4+IHRoYXQgaXMgd2hhdCBKb2huIEcgd2FzIGFs
c28gcG9pbnRpbmcgb3V0IHRvbz8KPj4+Cj4gCj4gTm8sIEkgd2FzIGp1c3Qgc2F5aW5nIHRoYXQg
dGhlIGtlcm5lbCB0b3BvbG9neSBjYW4gYmUgYnJva2VuIHdpdGhvdXQgCj4gdGhpcyBzZXJpZXMu
Cj4gCj4+Cj4+IE1tbSBJIGRpZG4ndCBmaW5kIGFueSByZXBseSBmcm9tIEpvaG4gcmVnYXJkaW5n
IHRoaXMgaW4gdjEsIGJ1dCBJIAo+PiB3b3VsZG4ndAo+PiBtaW5kIGVpdGhlciB3YXksIGFzIGxv
bmcgYXMgdGhlIGRvYyAmIGNvZGUgYXJlIGFsaWduZWQuCj4+Cj4gCj4gQlRXLCB0byBtZSwgZnVu
Y3Rpb24gYWNwaV9wcHR0X2NwdV9pc190aHJlYWQoKSBzZWVtcyB0byB0cnkgdG8gZG8gdG9vIAo+
IG11Y2gsIGkuZS4gY2hlY2sgaWYgdGhlIFBQVFQgaXMgbmV3IGVub3VnaCB0byBzdXBwb3J0IHRo
ZSB0aHJlYWQgZmxhZyAKPiBhbmQgYWxzbyBjaGVjayBpZiBpdCBpcyBzZXQgZm9yIGEgc3BlY2lm
aWMgY3B1LiBJJ2QgY29uc2lkZXIgc2VwYXJhdGUgCj4gZnVuY3Rpb25zIGhlcmUuCgo/IFlvdXIg
c3VnZ2VzdGluZyByZXBsYWNpbmcgdGhlCgoKaWYgKHRhYmxlLT5yZXZpc2lvbiA+PSByZXYpCglj
cHVfbm9kZSA9IGFjcGlfZmluZF9wcm9jZXNzb3Jfbm9kZSh0YWJsZSwgYWNwaV9jcHVfaWQpOwoK
Y2hlY2sgd2l0aAoKaWYgKHJldmlzaW9uX2NoZWNrKHRhYmxlLCByZXYpKQoJY3B1X25vZGUgPSBh
Y3BpX2ZpbmRfcHJvY2Vzc29yX25vZGUodGFibGUsIGFjcGlfY3B1X2lkKTsKCgphbmQgYSBmdW5j
dGlvbiBsaWtlCgpzdGF0aWMgaW50IHJldmlzaW9uX2NoZWNrKGFjcGl4eHh4ICp0YWJsZSwgaW50
IHJldikKewoJcmV0dXJuICh0YWJsZS0+cmV2aXNpb24gPj0gcmV2KTsKfQoKQWx0aG91Z2gsIGZy
YW5rbHkgaWYgb25lIHdlcmUgdG8gZG8gdGhpcywgaXQgc2hvdWxkIHByb2JhYmx5IGJlIGEgbWFj
cm8gCndpdGggdGhlIHRhYmxlIHR5cGUsIGFuZCB1c2VkIGluIHRoZSBkb3plbiBvciBzbyBvdGhl
ciBwbGFjZXMgSSBmb3VuZCAKZG9pbmcgc2ltaWxhciBjaGVja3MgKHNwY3IsIGlvcnQsIGV0Yyku
CgpPciBzb21ldGhpbmcgZWxzZT8KCgoKCj4gCj4gdGhhbmtzLAo+IEpvaG4KPiAKPj4gWy4uLl0K
Pj4KPj4gLgo+Pgo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
