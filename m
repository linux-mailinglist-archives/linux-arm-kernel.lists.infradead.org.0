Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F56BED0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAHVzrnxshuA7F/3Nkn565n/YNhReEP10CkN89Xm6Ag=; b=dO0RaY8SjiR7O9
	LiVCuvKRr0XD3jdZzK4QjkM2oel1yb8CiBmNbKye+rr3UsQwrGfGZT3CX2simaRMVzm/KsiG562XD
	7REcpEnL9eJVi3nf9beEWwFdYC52TFU8YpuYaFAR7QD6oa5UXlrsuhJbMqC28vDxUVS6ZSUVxRI8U
	KHyPyO7z2no7ZyXxDSJ+Xao/+DnUZCCr13pHcsHA2OarH+cRfiGbPhV31GI0v5OZR5yHdacgRq4Rf
	MLNMvYQ+QNcH+c4eSmmLbjRwIztTxhCFYriLbB8uFXlz5Y0vPGHYce9R84LIUjBW9d6apzA4dTIP0
	ZkcF98lUheWjg1DN13zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlYn-0003iX-Mb; Wed, 17 Jul 2019 15:09:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlYd-0003iK-E7
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jul 2019 15:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SVWkaeTZUofn6ExxaVIGuAizGoZUu1XC7cjSP278ehA=; b=hgNH4C3meP6H4QR8nVYYGc/a0B
 ChHUKb4btr0qAx6C8fV9B8xFTttU5BMmi0L6YuyZ64y1yIRegluNaML0nKc+5l/8CQuVKgI20C/OV
 x9sInHemezlesMlXmU075RKKJtz9YcsfHCrG6tFv0U2oLGdDXqIM2XsUQKIposBfNnkc+kQ5NFgUC
 PgPjZzUUQ5NquuE4WRBPEoarvydOg6GiwXe8TXmfScxRR26HP2a7l8ZcvTWI90urs1qmoa/ds2VrB
 1FrwevaggTNefAgs2WpgVJcEJe9ceT7ZJNvvnX0ntVY+ZigWIRIZdPYGY4sds6P/X9/3tMIErtBLB
 3VyyNAgA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlYR-0002yN-5C; Wed, 17 Jul 2019 15:09:15 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id DA14B20197A67; Wed, 17 Jul 2019 17:09:13 +0200 (CEST)
Date: Wed, 17 Jul 2019 17:09:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190717150913.GY3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716155022.GR3419@hirez.programming.kicks-ass.net>
 <193BBB31-F376-451F-BDE1-D4807140EB51@oracle.com>
 <20190716184724.GH3402@hirez.programming.kicks-ass.net>
 <20190717083944.GR3463@hirez.programming.kicks-ass.net>
 <FFC2D45A-24B3-40E1-ABBB-1D696E830B23@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <FFC2D45A-24B3-40E1-ABBB-1D696E830B23@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMTcsIDIwMTkgYXQgMTA6Mjc6MzBBTSAtMDQwMCwgQWxleCBLb2dhbiB3cm90
ZToKPiA+IE9uIEp1bCAxNywgMjAxOSwgYXQgNDozOSBBTSwgUGV0ZXIgWmlqbHN0cmEgPHBldGVy
ekBpbmZyYWRlYWQub3JnPiB3cm90ZToKCj4gPiBzdGF0aWMgdm9pZCBjbmFfc3BsaWNlX3RhaWwo
c3RydWN0IGNuYV9ub2RlICpjbiwgc3RydWN0IGNuYV9ub2RlICpoZWFkLCBzdHJ1Y3QgY25hX25v
ZGUgKnRhaWwpCj4gPiB7Cj4gPiAJc3RydWN0IGNuYV9ub2RlICpsaXN0Owo+ID4gCj4gPiAJLyog
cmVtb3ZlIFtoZWFkLHRhaWxdICovCj4gPiAJV1JJVEVfT05DRShjbi0+bWNzLm5leHQsIHRhaWwt
Pm1jcy5uZXh0KTsKPiA+IAl0YWlsLT5tY3MubmV4dCA9IE5VTEw7Cj4gPiAKPiA+IAkvKiBzdGlj
ayBbaGVhZCx0YWlsXSBvbiB0aGUgc2Vjb25kYXJ5IGxpc3QgdGFpbCAqLwo+ID4gCWlmIChjbi0+
bWNzLmxvY2tlZCA8PSAxKSB7Cj4gPiAJCS8qIGNyZWF0ZSBzZWNvbmRhcnkgbGlzdCAqLwo+ID4g
CQloZWFkLT50YWlsID0gdGFpbDsKPiA+IAkJY24tPm1jcy5sb2NrZWQgPSBoZWFkLT5lbmNvZGVk
X3RhaWw7Cj4gPiAJfSBlbHNlIHsKPiA+IAkJLyogYWRkIHRvIHRhaWwgKi8KPiA+IAkJbGlzdCA9
IChzdHJ1Y3QgY25hX25vZGUgKilkZWNvZGVfdGFpbChjbi0+bWNzLmxvY2tlZCk7Cj4gPiAJCWxp
c3QtPnRhaWwtPm5leHQgPSBoZWFkOwo+ID4gCQlsaXN0LT50YWlsID0gdGFpbDsKPiA+IAl9Cj4g
PiB9Cj4gPiAKPiA+IHN0YXRpYyBzdHJ1Y3QgY25hX25vZGUgKmNuYV9maW5kX25leHQoc3RydWN0
IG1jc19zcGlubG9jayAqbm9kZSkKPiA+IHsKPiA+IAlzdHJ1Y3QgY25hX25vZGUgKmNuaSwgKmNu
ID0gKHN0cnVjdCBjbmFfbm9kZSAqKW5vZGU7Cj4gPiAJc3RydWN0IGNuYV9ub2RlICpoZWFkLCAq
dGFpbCA9IE5VTEw7Cj4gPiAKPiA+IAkvKiBmaW5kIGFueSBuZXh0IGxvY2sgZnJvbSAnb3VyJyBu
b2RlICovCj4gPiAJZm9yIChoZWFkID0gY25pID0gKHN0cnVjdCBjbmFfbm9kZSAqKVJFQURfT05D
RShjbi0+bWNzLm5leHQpOwo+ID4gCSAgICAgY25pICYmIGNuaS0+bm9kZSAhPSBjbi0+bm9kZTsK
PiA+IAkgICAgIHRhaWwgPSBjbmksIGNuaSA9IChzdHJ1Y3QgY25hX25vZGUgKilSRUFEX09OQ0Uo
Y25pLT5tY3MubmV4dCkpCj4gPiAJCTsKPiA+IAo+ID4gCS8qIHdoZW4gZm91bmQsIHNwbGljZSBh
bnkgc2tpcHBlZCBsb2NrcyBvbnRvIHRoZSBzZWNvbmRhcnkgbGlzdCAqLwo+ID4gCWlmIChjbmkg
JiYgdGFpbCkKPiA+IAkJY25hX3NwbGljZV90YWlsKGNuLCBoZWFkLCB0YWlsKTsKPiA+IAo+ID4g
CXJldHVybiBjbmk7Cj4gPiB9Cj4gPiAKPiA+IEhvdydzIHRoYXQ/Cj4gCj4gVGhpcyBpcyBhbG1v
c3QgcGVyZmVjdCEhIDopCj4gCj4gVGhlIGFib3ZlIHNob3VsZCB3b3JrLCBidXQgSSB0aGluayB3
ZSBzaG91bGQgaGF2ZSBhIHNwZWNpYWxpemVkIGZhc3QtcGF0aCBmb3IgCj4gY2hlY2tpbmcgdGhl
IGltbWVkaWF0ZSBuZXh0IG5vZGUgaW4gdGhlIG1haW4gcXVldWUuIFRoaXMgd291bGQgYmUgdGhl
IGNvbW1vbgo+IGNhc2UsIG9uY2Ugd2Ugc3BsaWNlIOKAmG90aGVy4oCZIG5vZGVzIG9udG8gdGhl
IHNlY29uZGFyeSBxdWV1ZS4gSW4gdGhlIGFib3ZlIHdlCj4gd291bGQgZ28gdGhyb3VnaCBmb3Vy
IGJyYW5jaGVzIGJlZm9yZSByZXR1cm5pbmcgZnJvbSBjbmFfZmluZF9uZXh0KCkuIEluIHRoZSAK
PiBmb2xsb3dpbmcgd2Ugd291bGQgaGF2ZSBqdXN0IG9uZToKClJpZ2h0LCBidXQgY2FuIHlvdSBt
ZWFzdXJlIGEgZGlmZmVyZW5jZT8gOy0pIEFueXdheSwgbm8gcmVhbCBvYmplY3Rpb24sCmp1c3Qg
cGxheWluZyBkZXZpbHMgYWR2b2NhdGUgaGVyZS4KCj4gPiBzdGF0aWMgc3RydWN0IGNuYV9ub2Rl
ICpjbmFfZmluZF9uZXh0KHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUpCj4gPiB7Cj4gPiAJc3Ry
dWN0IGNuYV9ub2RlICpjbiA9IChzdHJ1Y3QgY25hX25vZGUgKilub2RlOwo+IAkgICBzdHJ1Y3Qg
Y25hX25vZGUgKmNuaSA9IChzdHJ1Y3QgY25hX25vZGUgKilSRUFEX09OQ0UoY24tPm1jcy5uZXh0
KTsKPiA+IAo+ID4gCXN0cnVjdCBjbmFfbm9kZSAqaGVhZCwgKnRhaWwgPSBOVUxMOwo+ID4gCj4g
CSAgIC8qIGZhc3QgcGF0aCAqLwo+IAkgICBpZiAoY25pLT5ub2RlID09IGNuLT5ub2RlKSAKPiAJ
CXJldHVybiBjbmk7Cj4gCj4gPiAJLyogZmluZCBhbnkgbmV4dCBsb2NrIGZyb20gJ291cicgbm9k
ZSAqLwo+ID4gCWZvciAoaGVhZCA9IGNuLT5tY3MubmV4dDsKCSAgICAgaGVhZCA9IGNuaSwKCnlv
dSBqdXN0IGRpZCB0aGF0IGxvYWQgOi0pCgo+ID4gCSAgICAgY25pICYmIGNuaS0+bm9kZSAhPSBj
bi0+bm9kZTsKPiA+IAkgICAgIHRhaWwgPSBjbmksIGNuaSA9IChzdHJ1Y3QgY25hX25vZGUgKilS
RUFEX09OQ0UoY25pLT5tY3MubmV4dCkpCj4gPiAJCTsKPiA+IAo+ID4gCS8qIHdoZW4gZm91bmQs
IHNwbGljZSBhbnkgc2tpcHBlZCBsb2NrcyBvbnRvIHRoZSBzZWNvbmRhcnkgbGlzdCAqLwo+ID4g
CWlmIChjbmkgJiYgdGFpbCkKPiA+IAkJY25hX3NwbGljZV90YWlsKGNuLCBoZWFkLCB0YWlsKTsK
PiA+IAo+ID4gCXJldHVybiBjbmk7Cj4gPiB9Cj4gCj4gCj4gQWxzbywgYW55IHJlYXNvbiB5b3Ug
c2F5IOKAmGxvY2vigJkgaW5zdGVhZCBvZiDigJlub2Rl4oCZIGluIHRoZSBjb21tZW50cz8KPiBJ
LmUuLCBJIHRoaW5rICJ3aGVuIGZvdW5kLCBzcGxpY2UgYW55IHNraXBwZWQgbG9ja3Mgb250byB0
aGUgc2Vjb25kYXJ5IGxpc3TigJ0gc2hvdWxkIGJlCj4gIndoZW4gZm91bmQsIHNwbGljZSBhbnkg
c2tpcHBlZCBub2RlcyBvbnRvIHRoZSBzZWNvbmRhcnkgbGlzdOKAnS4KCkR1ZSB0byB0aGUgY29u
ZnVzaW9uIGJldHdlZW4gbG9jayB3YWl0ZXIgbm9kZSBhbmQgbnVtYSBub2RlIDotKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
