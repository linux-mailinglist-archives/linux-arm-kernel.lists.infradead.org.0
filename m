Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55AE118089
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 07:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NG5Vz3e1dLz0b/+PSXUw6Y0VNvPXcYbXyUcKBiZ3l4E=; b=qjyr39XjkwIus5/2WgiOf4xGu
	agm//4n+MqVO7Le7o0Ht0C/RLs8fkb+S1PR/8IgVuUFXewYImSbyqY/UYWxtCzbklKtTSNFhH9DFL
	dGr2LyBZQr8ChcxTnjZc3v5UjSp80xKMwBaVYx6UD+Z4aN2cVIiBjUg+qeNUbiAeXuDogGsyM6IPo
	PiYhGms2duRhBHLa037wZ/oYiXLMzeryDyEKyinRlG7NxCnIZBY7R3OvSb4WZRcdQPoXXdKRg4XBA
	cNnaqg+Y3BE5JFjeA+88JNJKucDDl23Q7Qhw3Lld77L4eIqljBMZ8Ia5P+geQWV0oziVLLXUgtw7g
	MCrHh4O6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZ7J-0004is-Jw; Tue, 10 Dec 2019 06:35:29 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZ7C-0004dm-Ha
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 06:35:24 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47X9Kb5hrrz9vBmx;
 Tue, 10 Dec 2019 07:35:15 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=FnZPC6Pa; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id mLr7XqX7TPBB; Tue, 10 Dec 2019 07:35:15 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47X9Kb4HChz9vBmv;
 Tue, 10 Dec 2019 07:35:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1575959715; bh=EUHakfQZwNjDyNpMu0Q8JwdIe7wmUpTzbd0Lye8z+SQ=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=FnZPC6Pa0+yhD/+AxgFA095UyCvnSy+8dA9WpzskPNJpa9JYz8RLDZQmjFZ4fDCcC
 MPDkpw+RQEw0lBhYKZqX6UcRKNgPIdbmDO3176Htuq0NDMK42R5an/d9/v8zbfGE4n
 qxqo3oesJHRGuIzPAd50/B6guDsbrzmJAVIeyFWw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6EFD58B802;
 Tue, 10 Dec 2019 07:35:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id qPcjq3_4_bHw; Tue, 10 Dec 2019 07:35:16 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BCADD8B754;
 Tue, 10 Dec 2019 07:35:15 +0100 (CET)
Subject: Re: [PATCH v2 1/4] mm: define MAX_PTRS_PER_{PTE,PMD,PUD}
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-2-dja@axtens.net>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <80f340f2-0323-8092-7e6d-c93b26fb7cf7@c-s.fr>
Date: Tue, 10 Dec 2019 07:35:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191210044714.27265-2-dja@axtens.net>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_223522_875226_DDDBA9EE 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMC8xMi8yMDE5IMOgIDA1OjQ3LCBEYW5pZWwgQXh0ZW5zIGEgw6ljcml0wqA6Cj4gcG93
ZXJwYyBoYXMgYm9vdC10aW1lIGNvbmZpZ3VyYWJsZSBQVFJTX1BFUl9QVEUsIFBNRCBhbmQgUFVE
LiBUaGUKPiB2YWx1ZXMgYXJlIHNlbGVjdGVkIGJhc2VkIG9uIHRoZSBNTVUgdW5kZXIgd2hpY2gg
dGhlIGtlcm5lbCBpcwo+IGJvb3RlZC4gVGhpcyBpcyBtdWNoIGxpa2UgaG93IDQgdnMgNS1sZXZl
bCBwYWdpbmcgb24geDg2XzY0IGxlYWRzIHRvCj4gYm9vdC10aW1lIGNvbmZpZ3VyYWJsZSBQVFJT
X1BFUl9QNEQuCj4gCj4gU28gZmFyLCB0aGlzIGhhc24ndCBsZWFrZWQgb3V0IG9mIGFyY2gvcG93
ZXJwYy4gQnV0IHdpdGggS0FTQU4sIHdlCj4gaGF2ZSBzdGF0aWMgYXJyYXlzIGJhc2VkIG9uIFBU
UlNfUEVSXyosIHNvIGZvciBwb3dlcnBjIHN1cHBvcnQgbXVzdAo+IHByb3ZpZGUgY29uc3RhbnQg
dXBwZXIgYm91bmRzIGZvciBnZW5lcmljIGNvZGUuCj4gCj4gRGVmaW5lIE1BWF9QVFJTX1BFUl97
UFRFLFBNRCxQVUR9IGZvciB0aGlzIHB1cnBvc2UuCj4gCj4gSSBoYXZlIGNvbmZpZ3VyZWQgdGhl
c2UgY29uc3RhbnRzOgo+ICAgLSBpbiBhc20tZ2VuZXJpYyBoZWFkZXJzCj4gICAtIG9uIGFyY2hl
cyB0aGF0IGltcGxlbWVudCBLQVNBTjogeDg2LCBzMzkwLCBhcm02NCwgeHRlbnNhIGFuZCBwb3dl
cnBjCgpJIHRoaW5rIHdlIHNob3VkIGF2b2lkIHNwcmVhZGluZyBkZWZhdWx0IHZhbHVlcyBhbGwg
b3ZlciB0aGUgcGxhY2Ugd2hlbiAKYWxsIGFyY2hlcyBidXQgb25lIHVzZXMgdGhlIGRlZmF1bHQu
CgpJIHdvdWxkIGRyb3AgdGhpcyBwYXRjaCAxLCBzcXVhc2ggdGhlIHBvd2VycGMgcGFydCBvZiBp
dCBpbiB0aGUgbGFzdCAKcGF0Y2gsIGFuZCBkZWZpbmUgZGVmYXVsdHMgaW4gcGF0Y2ggMiwgc2Vl
IG15IGNvbW1lbnRzIHRoZXJlLgoKPiAKPiBJIGhhdmVuJ3Qgd2lyZWQgdXAgYW55IG90aGVyIGFy
Y2hlcyBqdXN0IHlldCAtIHRoZXJlIGlzIG5vIHVzZXIgb2YKPiB0aGUgY29uc3RhbnRzIG91dHNp
ZGUgb2YgdGhlIEtBU0FOIGNvZGUgSSBhZGQgaW4gdGhlIG5leHQgcGF0Y2gsIHNvCj4gbWlzc2lu
ZyB0aGUgY29uc3RhbnRzIG9uIGFyY2hlcyB0aGF0IGRvbid0IHN1cHBvcnQgS0FTQU4gc2hvdWxk
bid0Cj4gYnJlYWsgYW55dGhpbmcuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpc3RvcGhlIExlcm95
IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQXh0ZW5z
IDxkamFAYXh0ZW5zLm5ldD4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJs
ZS1od2RlZi5oICAgICAgIHwgMyArKysKPiAgIGFyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9ib29r
M3MvNjQvaGFzaC5oICAgIHwgNCArKysrCj4gICBhcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vYm9v
azNzLzY0L3BndGFibGUuaCB8IDcgKysrKysrKwo+ICAgYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNt
L2Jvb2szcy82NC9yYWRpeC5oICAgfCA1ICsrKysrCj4gICBhcmNoL3MzOTAvaW5jbHVkZS9hc20v
cGd0YWJsZS5oICAgICAgICAgICAgICB8IDMgKysrCj4gICBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9w
Z3RhYmxlX3R5cGVzLmggICAgICAgICB8IDUgKysrKysKPiAgIGFyY2gveHRlbnNhL2luY2x1ZGUv
YXNtL3BndGFibGUuaCAgICAgICAgICAgIHwgMSArCj4gICBpbmNsdWRlL2FzbS1nZW5lcmljL3Bn
dGFibGUtbm9wNGQtaGFjay5oICAgICB8IDkgKysrKystLS0tCj4gICBpbmNsdWRlL2FzbS1nZW5l
cmljL3BndGFibGUtbm9wbWQuaCAgICAgICAgICB8IDkgKysrKystLS0tCj4gICBpbmNsdWRlL2Fz
bS1nZW5lcmljL3BndGFibGUtbm9wdWQuaCAgICAgICAgICB8IDkgKysrKystLS0tCj4gICAxMCBm
aWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiAKCkNocmlz
dG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
