Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7580318AD12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lWiF5max2KSL4kjeRo7SlQe1PsCoKT62jBXAkTcqavQ=; b=WuG2d3Wz+hJsGybFgMMQ2vEka
	jkYAWj7E94NJ3eUZElHlgxRmEGKExTFwAohEeJ5IXAvbTzakhrQGQ6SOEgvk+R/L4G0HCaaAyUdh6
	ojRILA1CTakIJQTyTJtXfuBY1npC3GBqgL39fhWqpAiw0xmCy2kSqVgRIkCEM911f81bfVxedmzNh
	Z3IyxUvrd7JtZpAibA4RMpQa069b1f7BAwtS2SiCRm+fJTEr8mkGFiKavZtYgYcNAYRVzK9ZQipFq
	bCxc8vjnt4bJ09hzpBPdTwiMUjtDHGJiSZma0ZBguZFG/7ispR64zC7QZJYkV7HCR9JYnb7GEVmuG
	gDvM1f7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEpBD-0006Ie-8u; Thu, 19 Mar 2020 07:01:23 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEpB4-0006H6-TE; Thu, 19 Mar 2020 07:01:17 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48jd9D5Wspz9v1Md;
 Thu, 19 Mar 2020 08:01:04 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=kSCCxuWg; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id a91KdXxJSw9z; Thu, 19 Mar 2020 08:01:04 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48jd9D4MMFz9v1Mc;
 Thu, 19 Mar 2020 08:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1584601264; bh=f1YwOhdxX26Y+wBuzZ6KcmY62u5y/+8Hvgm0wH6ueYs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kSCCxuWg89EGpfCGJFvQQEKaoHe/kCd5TGb/eJd9YNW4o9nMza+I2DetAh60y0OYl
 jNWoevB3fgK3oMJ2kFYnvfR61+Z0w2UWeOnoIyGuiPFaUDv3CG1pmdSv9t5BVLTXov
 N7ub0KXLdsT/u4I32YAoSgYf0fhvDN90dndC0kTk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 784F58B769;
 Thu, 19 Mar 2020 08:01:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id MWrtuWx18n7g; Thu, 19 Mar 2020 08:01:05 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DFB5B8B798;
 Thu, 19 Mar 2020 08:01:03 +0100 (CET)
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <c3071359-c5d3-4247-7f16-6f61b2fa0756@c-s.fr>
Date: Thu, 19 Mar 2020 08:00:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318220634.32100-2-mike.kravetz@oracle.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_000115_243536_9558B18C 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: openpower.xyz (xyz)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxOC8wMy8yMDIwIMOgIDIzOjA2LCBNaWtlIEtyYXZldHogYSDDqWNyaXTCoDoKPiBUaGUg
YXJjaGl0ZWN0dXJlIGluZGVwZW5kZW50IHJvdXRpbmUgaHVnZXRsYl9kZWZhdWx0X3NldHVwIHNl
dHMgdXAKPiB0aGUgZGVmYXVsdCBodWdlIHBhZ2VzIHNpemUuICBJdCBoYXMgbm8gd2F5IHRvIHZl
cmlmeSBpZiB0aGUgcGFzc2VkCj4gdmFsdWUgaXMgdmFsaWQsIHNvIGl0IGFjY2VwdHMgaXQgYW5k
IGF0dGVtcHRzIHRvIHZhbGlkYXRlIGF0IGEgbGF0ZXIKPiB0aW1lLiAgVGhpcyByZXF1aXJlcyB1
bmRvY3VtZW50ZWQgY29vcGVyYXRpb24gYmV0d2VlbiB0aGUgYXJjaCBzcGVjaWZpYwo+IGFuZCBh
cmNoIGluZGVwZW5kZW50IGNvZGUuCj4gCj4gRm9yIGFyY2hpdGVjdHVyZXMgdGhhdCBzdXBwb3J0
IG1vcmUgdGhhbiBvbmUgaHVnZSBwYWdlIHNpemUsIHByb3ZpZGUKPiBhIHJvdXRpbmUgYXJjaF9o
dWdldGxiX3ZhbGlkX3NpemUgdG8gdmFsaWRhdGUgYSBodWdlIHBhZ2Ugc2l6ZS4KPiBodWdldGxi
X2RlZmF1bHRfc2V0dXAgY2FuIHVzZSB0aGlzIHRvIHZhbGlkYXRlIHBhc3NlZCB2YWx1ZXMuCj4g
Cj4gYXJjaF9odWdldGxiX3ZhbGlkX3NpemUgd2lsbCBhbHNvIGJlIHVzZWQgaW4gYSBzdWJzZXF1
ZW50IHBhdGNoIHRvCj4gbW92ZSBwcm9jZXNzaW5nIG9mIHRoZSAiaHVnZXBhZ2Vzej0iIGluIGFy
Y2ggc3BlY2lmaWMgY29kZSB0byBhIGNvbW1vbgo+IHJvdXRpbmUgaW4gYXJjaCBpbmRlcGVuZGVu
dCBjb2RlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2UgS3JhdmV0eiA8bWlrZS5rcmF2ZXR6QG9y
YWNsZS5jb20+Cj4gLS0tCj4gICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2h1Z2V0bGIuaCAgIHwg
IDIgKysKPiAgIGFyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYyAgICAgICAgfCAxOSArKysrKysr
KysrKysrKy0tLS0tCj4gICBhcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vaHVnZXRsYi5oIHwgIDMg
KysrCj4gICBhcmNoL3Bvd2VycGMvbW0vaHVnZXRsYnBhZ2UuYyAgICAgIHwgMjAgKysrKysrKysr
KysrKy0tLS0tLS0KPiAgIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaHVnZXRsYi5oICAgfCAgMyAr
KysKPiAgIGFyY2gvcmlzY3YvbW0vaHVnZXRsYnBhZ2UuYyAgICAgICAgfCAyOCArKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tCj4gICBhcmNoL3MzOTAvaW5jbHVkZS9hc20vaHVnZXRsYi5oICAg
IHwgIDMgKysrCj4gICBhcmNoL3MzOTAvbW0vaHVnZXRsYnBhZ2UuYyAgICAgICAgIHwgMTggKysr
KysrKysrKysrKy0tLS0tCj4gICBhcmNoL3NwYXJjL2luY2x1ZGUvYXNtL2h1Z2V0bGIuaCAgIHwg
IDMgKysrCj4gICBhcmNoL3NwYXJjL21tL2luaXRfNjQuYyAgICAgICAgICAgIHwgMjMgKysrKysr
KysrKysrKysrKy0tLS0tLS0KPiAgIGFyY2gveDg2L2luY2x1ZGUvYXNtL2h1Z2V0bGIuaCAgICAg
fCAgMyArKysKPiAgIGFyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMgICAgICAgICAgfCAyMSArKysr
KysrKysrKysrKystLS0tLS0KPiAgIGluY2x1ZGUvbGludXgvaHVnZXRsYi5oICAgICAgICAgICAg
fCAgNyArKysrKysrCj4gICBtbS9odWdldGxiLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMTYg
KysrKysrKysrKysrKy0tLQo+ICAgMTQgZmlsZXMgY2hhbmdlZCwgMTI2IGluc2VydGlvbnMoKyks
IDQzIGRlbGV0aW9ucygtKQo+IAoKW3NuaXBdCgo+IGRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMv
aW5jbHVkZS9hc20vaHVnZXRsYi5oIGIvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2h1Z2V0bGIu
aAo+IGluZGV4IGJkNjUwNGMyOGMyZi4uM2I1OTM5MDE2OTU1IDEwMDY0NAo+IC0tLSBhL2FyY2gv
cG93ZXJwYy9pbmNsdWRlL2FzbS9odWdldGxiLmgKPiArKysgYi9hcmNoL3Bvd2VycGMvaW5jbHVk
ZS9hc20vaHVnZXRsYi5oCj4gQEAgLTY0LDYgKzY0LDkgQEAgc3RhdGljIGlubGluZSB2b2lkIGFy
Y2hfY2xlYXJfaHVnZXBhZ2VfZmxhZ3Moc3RydWN0IHBhZ2UgKnBhZ2UpCj4gICB7Cj4gICB9Cj4g
ICAKPiArI2RlZmluZSBhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6ZSBhcmNoX2h1Z2V0bGJfdmFsaWRf
c2l6ZQo+ICtleHRlcm4gYm9vbCBfX2luaXQgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUodW5zaWdu
ZWQgbG9uZyBsb25nIHNpemUpOwoKRG9uJ3QgYWRkICdleHRlcm4nIGtleXdvcmQsIGl0IGlzIGly
cmVsZXZhbnQgZm9yIGEgZnVuY3Rpb24gZGVjbGFyYXRpb24uCgpjaGVja3BhdGNoIC0tc3RyaWN0
IGRvZXNuJ3QgbGlrZSBpdCBlaXRoZXIgCihodHRwczovL29wZW5wb3dlci54eXovam9iL3Nub3dw
YXRjaC9qb2Ivc25vd3BhdGNoLWxpbnV4LWNoZWNrcGF0Y2gvMTIzMTgvL2FydGlmYWN0L2xpbnV4
L2NoZWNrcGF0Y2gubG9nKQoKPiArCj4gICAjaW5jbHVkZSA8YXNtLWdlbmVyaWMvaHVnZXRsYi5o
Pgo+ICAgCj4gICAjZWxzZSAvKiAhIENPTkZJR19IVUdFVExCX1BBR0UgKi8KPiBkaWZmIC0tZ2l0
IGEvYXJjaC9wb3dlcnBjL21tL2h1Z2V0bGJwYWdlLmMgYi9hcmNoL3Bvd2VycGMvbW0vaHVnZXRs
YnBhZ2UuYwo+IGluZGV4IDMzYjM0NjFkOTFlOC4uYjc4ZjY2MDI1MmYzIDEwMDY0NAo+IC0tLSBh
L2FyY2gvcG93ZXJwYy9tbS9odWdldGxicGFnZS5jCj4gKysrIGIvYXJjaC9wb3dlcnBjL21tL2h1
Z2V0bGJwYWdlLmMKPiBAQCAtNTU4LDcgKzU1OCw3IEBAIHVuc2lnbmVkIGxvbmcgdm1hX21tdV9w
YWdlc2l6ZShzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgIAlyZXR1cm4gdm1hX2tlcm5l
bF9wYWdlc2l6ZSh2bWEpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBpbnQgX19pbml0IGFkZF9odWdl
X3BhZ2Vfc2l6ZSh1bnNpZ25lZCBsb25nIGxvbmcgc2l6ZSkKPiArYm9vbCBfX2luaXQgYXJjaF9o
dWdldGxiX3ZhbGlkX3NpemUodW5zaWduZWQgbG9uZyBsb25nIHNpemUpCj4gICB7Cj4gICAJaW50
IHNoaWZ0ID0gX19mZnMoc2l6ZSk7Cj4gICAJaW50IG1tdV9wc2l6ZTsKPiBAQCAtNTY2LDIwICs1
NjYsMjYgQEAgc3RhdGljIGludCBfX2luaXQgYWRkX2h1Z2VfcGFnZV9zaXplKHVuc2lnbmVkIGxv
bmcgbG9uZyBzaXplKQo+ICAgCS8qIENoZWNrIHRoYXQgaXQgaXMgYSBwYWdlIHNpemUgc3VwcG9y
dGVkIGJ5IHRoZSBoYXJkd2FyZSBhbmQKPiAgIAkgKiB0aGF0IGl0IGZpdHMgd2l0aGluIHBhZ2V0
YWJsZSBhbmQgc2xpY2UgbGltaXRzLiAqLwo+ICAgCWlmIChzaXplIDw9IFBBR0VfU0laRSB8fCAh
aXNfcG93ZXJfb2ZfMihzaXplKSkKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiArCQlyZXR1cm4gZmFs
c2U7Cj4gICAKPiAgIAltbXVfcHNpemUgPSBjaGVja19hbmRfZ2V0X2h1Z2VfcHNpemUoc2hpZnQp
Owo+ICAgCWlmIChtbXVfcHNpemUgPCAwKQo+IC0JCXJldHVybiAtRUlOVkFMOwo+ICsJCXJldHVy
biBmYWxzZTsKPiAgIAo+ICAgCUJVR19PTihtbXVfcHNpemVfZGVmc1ttbXVfcHNpemVdLnNoaWZ0
ICE9IHNoaWZ0KTsKPiAgIAo+IC0JLyogUmV0dXJuIGlmIGh1Z2UgcGFnZSBzaXplIGhhcyBhbHJl
YWR5IGJlZW4gc2V0dXAgKi8KPiAtCWlmIChzaXplX3RvX2hzdGF0ZShzaXplKSkKPiAtCQlyZXR1
cm4gMDsKPiArCXJldHVybiB0cnVlOwo+ICt9Cj4gICAKPiAtCWh1Z2V0bGJfYWRkX2hzdGF0ZShz
aGlmdCAtIFBBR0VfU0hJRlQpOwo+ICtzdGF0aWMgaW50IF9faW5pdCBhZGRfaHVnZV9wYWdlX3Np
emUodW5zaWduZWQgbG9uZyBsb25nIHNpemUpCj4gK3sKPiArCWludCBzaGlmdCA9IF9fZmZzKHNp
emUpOwo+ICsKPiArCWlmICghYXJjaF9odWdldGxiX3ZhbGlkX3NpemUoc2l6ZSkpCj4gKwkJcmV0
dXJuIC1FSU5WQUw7Cj4gICAKPiArCWlmICghc2l6ZV90b19oc3RhdGUoc2l6ZSkpCj4gKwkJaHVn
ZXRsYl9hZGRfaHN0YXRlKHNoaWZ0IC0gUEFHRV9TSElGVCk7Cj4gICAJcmV0dXJuIDA7Cj4gICB9
Cj4gICAKCltzbmlwXQoKPiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvbW0vaHVnZXRsYnBhZ2UuYyBi
L2FyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMKPiBpbmRleCA1YmZkNWFlZjUzNzguLjUxZTYyMDhm
ZGVlYyAxMDA2NDQKPiAtLS0gYS9hcmNoL3g4Ni9tbS9odWdldGxicGFnZS5jCj4gKysrIGIvYXJj
aC94ODYvbW0vaHVnZXRsYnBhZ2UuYwo+IEBAIC0xODEsMTYgKzE4MSwyNSBAQCBodWdldGxiX2dl
dF91bm1hcHBlZF9hcmVhKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBsb25nIGFkZHIsCj4g
ICAjZW5kaWYgLyogQ09ORklHX0hVR0VUTEJfUEFHRSAqLwo+ICAgCj4gICAjaWZkZWYgQ09ORklH
X1g4Nl82NAo+ICtib29sIF9faW5pdCBhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6ZSh1bnNpZ25lZCBs
b25nIGxvbmcgc2l6ZSkKPiArewo+ICsJaWYgKHNpemUgPT0gUE1EX1NJWkUpCj4gKwkJcmV0dXJu
IHRydWU7Cj4gKwllbHNlIGlmIChzaXplID09IFBVRF9TSVpFICYmIGJvb3RfY3B1X2hhcyhYODZf
RkVBVFVSRV9HQlBBR0VTKSkKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCWVsc2UKPiArCQlyZXR1cm4g
ZmFsc2U7Cj4gK30KPiArCj4gICBzdGF0aWMgX19pbml0IGludCBzZXR1cF9odWdlcGFnZXN6KGNo
YXIgKm9wdCkKPiAgIHsKPiAtCXVuc2lnbmVkIGxvbmcgcHMgPSBtZW1wYXJzZShvcHQsICZvcHQp
Owo+IC0JaWYgKHBzID09IFBNRF9TSVpFKSB7Cj4gLQkJaHVnZXRsYl9hZGRfaHN0YXRlKFBNRF9T
SElGVCAtIFBBR0VfU0hJRlQpOwo+IC0JfSBlbHNlIGlmIChwcyA9PSBQVURfU0laRSAmJiBib290
X2NwdV9oYXMoWDg2X0ZFQVRVUkVfR0JQQUdFUykpIHsKPiAtCQlodWdldGxiX2FkZF9oc3RhdGUo
UFVEX1NISUZUIC0gUEFHRV9TSElGVCk7Cj4gKwl1bnNpZ25lZCBsb25nIGxvbmcgcHMgPSBtZW1w
YXJzZShvcHQsICZvcHQpOwo+ICsKPiArCWlmIChhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6ZShwcykp
IHsKPiArCQlodWdldGxiX2FkZF9oc3RhdGUoaWxvZzIocHMpIC0gUEFHRV9TSElGVCk7Cj4gICAJ
fSBlbHNlIHsKPiAgIAkJaHVnZXRsYl9iYWRfc2l6ZSgpOwo+IC0JCXByaW50ayhLRVJOX0VSUiAi
aHVnZXBhZ2VzejogVW5zdXBwb3J0ZWQgcGFnZSBzaXplICVsdSBNXG4iLAo+ICsJCXByaW50ayhL
RVJOX0VSUiAiaHVnZXBhZ2VzejogVW5zdXBwb3J0ZWQgcGFnZSBzaXplICVsbHUgTVxuIiwKPiAg
IAkJCXBzID4+IDIwKTsKCk5vd2FkYXlzIHdlIHVzZSBwcl9lcnIoKSBpbnN0ZWFkIG9mIHByaW50
ay4KCkl0IHdvdWxkIGFsc28gbGlrZWx5IGFsbG93IHlvdSB0byBoYXZlIGV2ZXJ5dGhpbmcgZml0
IG9uIGEgc2luZ2xlIGxpbmUuCgo+ICAgCQlyZXR1cm4gMDsKPiAgIAl9Cj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvaHVnZXRsYi5oIGIvaW5jbHVkZS9saW51eC9odWdldGxiLmgKPiBpbmRl
eCBiODMxZTlmYTFhMjYuLjMzMzQzZWI5ODBkMCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2h1Z2V0bGIuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvaHVnZXRsYi5oCj4gQEAgLTY3OCw2ICs2
NzgsMTMgQEAgc3RhdGljIGlubGluZSBzcGlubG9ja190ICpodWdlX3B0ZV9sb2NrcHRyKHN0cnVj
dCBoc3RhdGUgKmgsCj4gICAJcmV0dXJuICZtbS0+cGFnZV90YWJsZV9sb2NrOwo+ICAgfQo+ICAg
Cj4gKyNpZm5kZWYgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUKPiArc3RhdGljIGlubGluZSBib29s
IGFyY2hfaHVnZXRsYl92YWxpZF9zaXplKHVuc2lnbmVkIGxvbmcgbG9uZyBzaXplKQo+ICt7Cj4g
KwlyZXR1cm4gKHNpemUgPT0gSFBBR0VfU0laRSk7CgpOb3Qgc3VyZSB0aGUgKCApIGFyZSBuZWNl
c3NhcnkuCgo+ICt9Cj4gKyNlbmRpZgo+ICsKPiAgICNpZm5kZWYgaHVnZXBhZ2VzX3N1cHBvcnRl
ZAo+ICAgLyoKPiAgICAqIFNvbWUgcGxhdGZvcm0gZGVjaWRlIHdoZXRoZXIgdGhleSBzdXBwb3J0
IGh1Z2UgcGFnZXMgYXQgYm9vdAo+IGRpZmYgLS1naXQgYS9tbS9odWdldGxiLmMgYi9tbS9odWdl
dGxiLmMKPiBpbmRleCBkOGViZDg3Njg3MWQuLjJmOTkzNTliOTNhZiAxMDA2NDQKPiAtLS0gYS9t
bS9odWdldGxiLmMKPiArKysgYi9tbS9odWdldGxiLmMKPiBAQCAtMzIyNCwxMiArMzIyNCwyMiBA
QCBzdGF0aWMgaW50IF9faW5pdCBodWdldGxiX25ycGFnZXNfc2V0dXAoY2hhciAqcykKPiAgIH0K
PiAgIF9fc2V0dXAoImh1Z2VwYWdlcz0iLCBodWdldGxiX25ycGFnZXNfc2V0dXApOwo+ICAgCj4g
LXN0YXRpYyBpbnQgX19pbml0IGh1Z2V0bGJfZGVmYXVsdF9zZXR1cChjaGFyICpzKQo+ICtzdGF0
aWMgaW50IF9faW5pdCBkZWZhdWx0X2h1Z2VwYWdlc3pfc2V0dXAoY2hhciAqcykKPiAgIHsKPiAt
CWRlZmF1bHRfaHN0YXRlX3NpemUgPSBtZW1wYXJzZShzLCAmcyk7Cj4gKwl1bnNpZ25lZCBsb25n
IGxvbmcgc2l6ZTsKCldoeSB1bnNpZ25lZCBsb25nIGxvbmcgPwoKZGVmYXVsdF9oc3RhdGVfc2l6
ZSBpcyBsb25nLgoKSSBjYW4ndCBpbWFnaW5lIDMyIGJpdHMgcGxhdGZvcm1zIGhhdmluZyBhIGh1
Z2VwYWdlIHdpdGggYSA2NCBiaXRzIHNpemUuCgo+ICsJY2hhciAqc2F2ZWRfcyA9IHM7Cj4gKwo+
ICsJc2l6ZSA9IG1lbXBhcnNlKHMsICZzKTsKClRoZSB1cGRhdGVkIHMgaXMgbm90IHJldXNlZCBh
ZnRlciB0aGF0IHNvIHlvdSBjYW4gcGFzcyBOVUxMIGluc3RlYWQgb2YgCiZzIGFuZCB0aGVuIHlv
dSBkb24ndCBuZWVkIHRoZSBzYXZlZF9zLgoKPiArCj4gKwlpZiAoIWFyY2hfaHVnZXRsYl92YWxp
ZF9zaXplKHNpemUpKSB7Cj4gKwkJcHJfZXJyKCJIdWdlVExCOiB1bnN1cHBvcnRlZCBkZWZhdWx0
X2h1Z2VwYWdlc3ogJXNcbiIsIHNhdmVkX3MpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsKPiAr
CWRlZmF1bHRfaHN0YXRlX3NpemUgPSBzaXplOwo+ICAgCXJldHVybiAxOwo+ICAgfQo+IC1fX3Nl
dHVwKCJkZWZhdWx0X2h1Z2VwYWdlc3o9IiwgaHVnZXRsYl9kZWZhdWx0X3NldHVwKTsKPiArX19z
ZXR1cCgiZGVmYXVsdF9odWdlcGFnZXN6PSIsIGRlZmF1bHRfaHVnZXBhZ2Vzel9zZXR1cCk7Cj4g
ICAKPiAgIHN0YXRpYyB1bnNpZ25lZCBpbnQgY3B1c2V0X21lbXNfbnIodW5zaWduZWQgaW50ICph
cnJheSkKPiAgIHsKPiAKCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
