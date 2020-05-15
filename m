Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11B11D55B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JvU92xNwKdLx9MG8qrlYS+W9M/BV6ADtIVsMPxscnXM=; b=VlgDR/Bdf+Baze1DZ3emlOJNj
	ls40G9M4qc8KfLGg9SrLmSZCMU4/yE9QG9dvjszZb0KW4lye3v/3CN7kwns+dzFYbEKdQOuO/x/xo
	NZITPcIzl6DoA3MfH9UbCtHbfKTzZCA8w9Krc/1E8JEmKh7E8deOvHelspMhhGQn1sXKdyEqk92br
	m0Nh86Yy2Ew/DF/OdlytCxhPV+1zJy739S6aDmIIuzUm+j49KQEFb+GtxUvWjZSCjpdQbk6pWTInq
	Z5n2o4YhGB3Ky/nAZVDGiUukMcknUDILKEiqJJoIrMjZ3kKks7cWw9RDgAQK1erwboXWrUG0/P1p6
	w2g+WEjAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZd0q-0004zH-8i; Fri, 15 May 2020 16:16:40 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZd0g-0004vT-PU
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:16:32 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id EE34CF91752B055297BB;
 Fri, 15 May 2020 17:16:08 +0100 (IST)
Received: from [127.0.0.1] (10.47.1.24) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Fri, 15 May
 2020 17:16:07 +0100
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
 <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
 <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
 <7c05b08b-2edc-7f97-0175-898e9772673e@huawei.com>
 <668f819c8747104814245cd6faebdd9a@kernel.org>
 <a22aaa72-4f5f-40d4-33e0-0aff8b65fdc2@huawei.com>
 <c37d8b15f09c6c933e39b81f39fcb827@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <17dd20ba-075d-33d1-e16a-417924b2956a@huawei.com>
Date: Fri, 15 May 2020 17:15:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <c37d8b15f09c6c933e39b81f39fcb827@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.1.24]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_091630_973069_C51EDF77 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 "chenxiang \(M\)" <chenxiang66@hisilicon.com>, Will Deacon <will@kernel.org>,
 luojiaxing <luojiaxing@huawei.com>, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAyMCAxNjozNywgTWFyYyBaeW5naWVyIHdyb3RlOgoKSGkgTWFyYywKCj4+Pgo+
Pgo+PiBJdCdzIG5vdCBqdXN0IHVzZXJzcGFjZS4gU29tZSBkcml2ZXJzIGNhbGwgaXJxX3NldF9h
ZmZpbml0eXtfaGludH19KCkKPj4gYWxzbywgd2l0aCBhIG5vbi1vdmVybGFwcGluZyBhZmZpbml0
eSBtYXNrLgo+Pgo+PiBXZSBjb3VsZCBqdXN0IGVycm9yIHRoZXNlIHJlcXVlc3RzLCBidXQgc29t
ZSBkcml2ZXJzIHJlbHkgb24gdGhpcwo+PiBiZWhhdmlvci4gQ29uc2lkZXIgdGhlIHVuY29yZSBk
cml2ZXIgSSBtZW50aW9uZWQgYWJvdmUsIHdoaWNoIFdBUk5zCj4+IHdoZW4gdGhlIGFmZmluaXR5
IHNldHRpbmcgZmFpbHMuIFNvIGl0IHRyaWVzIHRvIHNldCB0aGUgYWZmaW5pdHkgd2l0aAo+PiB0
aGUgY3B1bWFzayBvZiB0aGUgY2x1c3RlciBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZSwgYnV0
IHdpdGggRDA2J3MKPj4gSVRTIGNvbmZpZywgYmVsb3csIHRoZXJlIG1heSBiZSBubyBvdmVybGFw
Lgo+IAo+IERvZXMgdGhpcyBQTVUgdXNlIHRoZSBJVFM/IFRoYXQncyBhIHByZXR0eSBvZGQgc2V0
dXAuCj4gCgpZZXMsIEkgdGhpbmsgc28uIE91ciBvbGQgZnJpZW5kLCBtYmlnZW4uLi4KCj4gU28g
dGhpcyBpcyBhIGNhc2Ugd2hlcmUgdGhlIGRldmljZSBoYXMgYW4gaW1wbGljaXQgYWZmaW5pdHkg
dGhhdAo+IGlzbid0IHRoYXQgb2YgdGhlIElUUy4gSHVodS4uLgo+IAo+Pj4KPj4+IFdoYXQgeW91
IGFyZSBhZHZvY2F0aW5nIGZvciBpcyBhIHN0cmljdCBhZGhlcmVuY2UgdG8gdGhlIHByb3ZpZGVk
Cj4+PiBtYXNrLCBhbmQgaXQgZG9lc24ndCBzZWVtIHRvIGJlIHdoYXQgb3RoZXIgYXJjaGl0ZWN0
dXJlcyBhcmUgcHJvdmlkaW5nLgo+Pj4gSSBjb25zaWRlciB0aGUgdXNlcnNwYWNlLXByb3ZpZGVk
IGFmZmluaXR5IGFzIGEgaGludCBtb3JlIHRoYXQgYW55dGhpbmcKPj4+IGVsc2UsIGFzIGluIHRo
aXMgY2FzZSB0aGUga2VybmVsIGRvZXMga25vdyBiZXR0ZXIgKHJvdXRpbmcgdGhlIGludGVycnVw
dAo+Pj4gdG8gYSBmb3JlaWduIG5vZGUgbWlnaHQgYmUgY29zdGx5LCBvciBldmVuIGltcG9zc2li
bGUsIHNlZSB0aGUgVFgxCj4+PiBlcnJhdHVtKS4KPj4KPj4gUmlnaHQKPj4KPj4+Cj4+PiDCoCBG
cm9tIHdoYXQgSSByZW1lbWJlciBvZiB0aGUgZWFybGllciBkaXNjdXNzaW9uLCB5b3Ugc2F3IGFu
IGlzc3VlIG9uCj4+PiBhIHN5c3RlbSB3aXRoIHR3byBzb2NrZXRzIGFuZCBhIHNpbmdsZSBJVFMs
IHdpdGggdGhlIG5vZGUgbWFzayBsaW1pdGVkCj4+PiB0byB0aGUgZmlyc3Qgc29ja2V0LiBJcyB0
aGF0IGNvcnJlY3Q/Cj4+Cj4+IEEgYml0IG1vcmUgY29tcGxpY2F0ZWQ6IDIgc29ja2V0cywgMiBO
VU1BIG5vZGVzIHBlciBzb2NrZXQsIGFuZCBJVFMKPj4gY29uZmlnIGFzIGZvbGxvd3M6Cj4+IEQw
NkVTwqAgMXggSVRTIHdpdGggcHJveGltaXR5IG5vZGUgIzAKPj4KPj4gcm9vdEAobm9uZSkkIGRt
ZXNnIHwgZ3JlcCBJVFMKPj4gWyAwLjAwMDAwMF0gU1JBVDogUFhNIDAgLT4gSVRTIDAgLT4gTm9k
ZSAwCj4+Cj4+Cj4+IEQwNkNTCj4+IDJ4IElUUyB3aXRoIHByb3hpbWl0eSBub2RlICMwLCAjMgo+
Pgo+PiBlc3R1YXJ5Oi8kIGRtZXNnIHwgZ3JlcCBJVFMKPj4gW8KgwqDCoCAwLjAwMDAwMF0gU1JB
VDogUFhNIDAgLT4gSVRTIDAgLT4gTm9kZSAwCj4+IFvCoMKgwqAgMC4wMDAwMDBdIFNSQVQ6IFBY
TSAyIC0+IElUUyAxIC0+IE5vZGUgMgo+Pgo+PiBJdCBjb21wbGljYXRlcyB0aGluZ3MuCj4+Cj4+
IFdlIGNvdWxkIGFkZCBleHRyYSBpbnRlbGxpZ2VuY2UgdG8gcmVjb3JkIGlmIGFuIG5vZGUgaGFz
IGFuIElUUwo+PiBhc3NvY2lhdGVkLiBJbiB0aGUgY2FzZSBvZiB0aGF0IG5vdCBiZWluZyB0cnVl
LCB3ZSB3b3VsZCBmYWxsYmFjayBvbgo+PiB0aGUgcmVxdWVzdGVkIGFmZmluIG9ubHkgKGZvciBj
YXNlIG9mIG5vIG92ZXJsYXApLiBJdCBnZXRzIGEgYml0IG1vcmUKPj4gbWVzc3kgdGhlbi4KPiAK
PiBJdCBsb29rcyBsaWtlIHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgdGhhdCB3ZSBjYW4ndCByZWxp
YWJseSBkZXNjcmliZQo+IGFuIElUUyBhZmZpbmUgdG8gbXVsdGlwbGUgTlVNQSBub2Rlcy4uLiBJ
ZiB3ZSBjb3VsZCBkZXNjcmliZSB0aGF0LCB0aGVuCj4gdGhlIGFib3ZlIHNpdHVhdGlvbiB3b3Vs
ZG4ndCBvY2N1ciAod2UnZCBzYXkgdGhhdCBJVFMtMCBjb3ZlcnMgYm90aAo+IG5vZGVzIDAgYW5k
IDEpLiBCdXQgSSBjYW4ndCBmaW5kIGEgd2F5IHRvIGV4cHJlc3MgdGhpcyB3aXRoIFNSQVQgYW5k
Cj4gX1BYTS4gQWxzbywgU1JBVCBkZXNjcmliZXMgdGhlIGFmZmluaXR5IG9mIHRoZSBJVFMgd2l0
aCBtZW1vcnksIGFuZCBub3QKPiB3aXRoIHRoZSBDUFVzLi4uIEl0IGlzIGFsbCBhIGJpdCBmc2Nr
J2QuIDotKAoKWWVhaC4KCldlIGNvdWxkIHRyeSB0byBkZWFsIHdpdGggdGhvc2UgZXhjbHVkZWQg
Q1BVcywgbm90IHdpdGhpbiBhbiBJVFMgbm9kZSAKY3B1bWFzaywgYnkgdHJ5aW5nIHRvIGZpbmQg
dGhlICJjbG9zZXN0IiBJVFMsIGFuZCBleHBhbmRpbmcgdGhlIGNwdW1hc2sgCm9mIHRoYXQgSVRT
IHRvIGNvdmVyIHRob3NlLiBOb3Qgc3VyZSBpZiBpdCdzIHdvcnRoIGl0LgoKQnV0IHRoaXMgc29y
dCBvZiBwcm9ibGVtIGhhcyBhbHdheXMgY3JvcHBlZCB1cCwgd2l0aCBubyBjbGVhciB3YXkgdG8g
CmRlc2NyaWJlIG91ciB0b3BvbG9neSBleGFjdGx5LgoKPiAKPiBJIGd1ZXNzIEknbGwgYXBwbHkg
eW91ciBjaGFuZ2UgZm9yIG5vdyB3aXRoIGEgY29tbWVudCBleHBsYWluaW5nIHRoZQo+IHNpdHVh
dGlvbi4KPiAKCkNoZWVycywKSm9obgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
