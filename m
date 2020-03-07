Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A717CC99
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 08:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/2PUqkdZyXvoJgbK71UkpLj4VK/I0NMGmPEBXqqcbI=; b=WahAt+t7kF10F/0vi80eZg4E1
	ufNwAaurTHAbW5KTEjoSCBQrscagLHRv4/Yf6gKQYmXqt71BuQ3anYP47fNABsy/PJNBj68jwTCYA
	3H5ivym2sKIZ7V7jZsDUq5ZH4+1KMISB1YR7w4v60KtgTGMKM7VP4kxqf5zX0XEeiXjINEmD+Oq7J
	GADuYJkgMzdSjCY8uxLL2Gy4+BAE3yqy3J+S/MFWjjbTiBrTec4AnrnAr0OsM5QSdXcjUObE4dkZL
	j3CpP4876hQmimcyHEYfMTLkuQkvnkADYSD3F7KpUy7g1rPbQEiq1NJKPN8P63++qd+Xf1khCSjoO
	64e2Rfobw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jATWd-0007xf-GJ; Sat, 07 Mar 2020 07:05:31 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jATWW-0007wa-Nk; Sat, 07 Mar 2020 07:05:26 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48ZFqW22V5zB09Zy;
 Sat,  7 Mar 2020 08:05:11 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=hFwvKFlt; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id JH70JFMo2Nhm; Sat,  7 Mar 2020 08:05:11 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48ZFqW06j2zB09Zx;
 Sat,  7 Mar 2020 08:05:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1583564711; bh=KLykoiwakmvXlj7iOgiNeBA+k4S6on8FDV27weKg6MI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=hFwvKFlt5tItEoeChiMcVbq8Z6WEJiAIueL914VqsjAkNiTW/tX4E4mkXgZPRPVQp
 1TSwGC1wl0uEf1SM3tvrvXA0/srRG2BvZ2uOnFi+rWlXqmPEgF9Of2NNwJRqkfVxFW
 8RUJEw8G1tWI+NWaS36EliXDmOzscoTf3q3gSbXQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D550D8B784;
 Sat,  7 Mar 2020 08:05:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id OhKGFoGl11OV; Sat,  7 Mar 2020 08:05:11 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 4A0DC8B776;
 Sat,  7 Mar 2020 08:05:09 +0100 (CET)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, Qian Cai <cai@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
 <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
 <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <c40d907a-b64b-ae0d-e58f-33dddf0e8edc@c-s.fr>
Date: Sat, 7 Mar 2020 08:05:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_230525_070600_8ACC380D 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwNy8wMy8yMDIwIMOgIDAxOjU2LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDAzLzA3LzIwMjAgMDY6MDQgQU0sIFFpYW4gQ2FpIHdyb3RlOgo+Pgo+Pgo+Pj4g
T24gTWFyIDYsIDIwMjAsIGF0IDc6MDMgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIDxBbnNodW1hbi5L
aGFuZHVhbEBhcm0uY29tPiB3cm90ZToKPj4+Cj4+PiBIbW0sIHNldF9wdGVfYXQoKSBmdW5jdGlv
biBpcyBub3QgcHJlZmVycmVkIGhlcmUgZm9yIHRoZXNlIHRlc3RzLiBUaGUgaWRlYQo+Pj4gaXMg
dG8gYXZvaWQgb3IgYXRsZWFzdCBtaW5pbWl6ZSBUTEIvY2FjaGUgZmx1c2hlcyB0cmlnZ2VyZWQg
ZnJvbSB0aGVzZSBzb3J0Cj4+PiBvZiAnc3RhdGljJyB0ZXN0cy4gc2V0X3B0ZV9hdCgpIGlzIHBs
YXRmb3JtIHByb3ZpZGVkIGFuZCBjb3VsZC9taWdodCB0cmlnZ2VyCj4+PiB0aGVzZSBmbHVzaGVz
IG9yIHNvbWUgb3RoZXIgcGxhdGZvcm0gc3BlY2lmaWMgc3luY2hyb25pemF0aW9uIHN0dWZmLiBK
dXN0Cj4+Cj4+IFdoeSBpcyB0aGF0IGltcG9ydGFudCBmb3IgdGhpcyBkZWJ1Z2dpbmcgb3B0aW9u
Pwo+IAo+IFByaW1hcmlseSByZWFzb24gaXMgdG8gYXZvaWQgVExCL2NhY2hlIGZsdXNoIGluc3Ry
dWN0aW9ucyBvbiB0aGUgc3lzdGVtCj4gZHVyaW5nIHRoZXNlIHRlc3RzIHRoYXQgb25seSBpbnZv
bHZlIHRyYW5zZm9ybWluZyBkaWZmZXJlbnQgcGFnZSB0YWJsZQo+IGxldmVsIGVudHJpZXMgdGhy
b3VnaCBoZWxwZXJzLiBVbmxlc3MgcmVhbGx5IG5lY2Vzc2FyeSwgd2h5IHNob3VsZCBpdAo+IGVt
aXQgYW55IFRMQi9jYWNoZSBmbHVzaCBpbnN0cnVjdGlvbnMgPwoKV2hhdCdzIHRoZSBwcm9ibGVt
IHdpdGggdGhvc2VzIGZsdXNoZXMgPwoKPiAKPj4KPj4+IHdvbmRlcmluZyBpcyB0aGVyZSBzcGVj
aWZpYyByZWFzb24gd2l0aCByZXNwZWN0IHRvIHRoZSBzb2Z0IGxvY2sgdXAgcHJvYmxlbQo+Pj4g
bWFraW5nIGl0IG5lY2Vzc2FyeSB0byB1c2Ugc2V0X3B0ZV9hdCgpIHJhdGhlciB0aGFuIGEgc2lt
cGxlIFdSSVRFX09OQ0UoKSA/Cj4+Cj4+IExvb2tzIGF0IHRoZSBzMzkwIHZlcnNpb24gb2Ygc2V0
X3B0ZV9hdCgpLCBpdCBoYXMgdGhpcyBjb21tZW50LAo+PiB2bWFkZHIpOwo+Pgo+PiAvKgo+PiAg
ICogQ2VydGFpbiBhcmNoaXRlY3R1cmVzIG5lZWQgdG8gZG8gc3BlY2lhbCB0aGluZ3Mgd2hlbiBQ
VEVzCj4+ICAgKiB3aXRoaW4gYSBwYWdlIHRhYmxlIGFyZSBkaXJlY3RseSBtb2RpZmllZC4gIFRo
dXMsIHRoZSBmb2xsb3dpbmcKPj4gICAqIGhvb2sgaXMgbWFkZSBhdmFpbGFibGUuCj4+ICAgKi8K
Pj4KPj4gSSBjYW4gb25seSBndWVzcyB0aGF0IHBvd2VycGMgIGNvdWxkIGJlIHRoZSBzYW1lIGhl
cmUuCj4gCj4gVGhpcyBjb21tZW50IGlzIHByZXNlbnQgaW4gbXVsdGlwbGUgcGxhdGZvcm1zIHdo
aWxlIGRlZmluaW5nIHNldF9wdGVfYXQoKS4KPiBJcyBub3QgJ2JhcnJpZXIoKScgaGVyZSBhbG9u
ZSBnb29kIGVub3VnaCA/IEVsc2Ugd2hhdCBleGFjdGx5IHNldF9wdGVfYXQoKQo+IGRvZXMgYXMg
Y29tcGFyZWQgdG8gV1JJVEVfT05DRSgpIHRoYXQgYXZvaWRzIHRoZSBzb2Z0IGxvY2sgdXAsIGp1
c3QgdHJ5aW5nCj4gdG8gdW5kZXJzdGFuZC4KPiAKCgpBcmdoICEgSSBkaWRuJ3QgcmVhbGlzZSB0
aGF0IHlvdSB3ZXJlIHdyaXRpbmcgZGlyZWN0bHkgaW50byB0aGUgcGFnZSAKdGFibGVzLiBXaGVu
IGl0IHdvcmtzLCB0aGF0J3Mgb25seSBieSBjaGFuY2UgSSBndWVzcy4KClRvIHByb3Blcmx5IHNl
dCB0aGUgcGFnZSB0YWJsZSBlbnRyaWVzLCBzZXRfcHRlX2F0KCkgaGFzIHRvIGJlIHVzZWQ6Ci0g
T24gcG93ZXJwYyA4eHgsIHdpdGggMTZrIHBhZ2VzLCB0aGUgcGFnZSB0YWJsZSBlbnRyeSBtdXN0
IGJlIGNvcGllZCAKZm91ciB0aW1lcy4gc2V0X3B0ZV9hdCgpIGRvZXMgaXQsIFdSSVRFX09OQ0Uo
KSBkb2Vzbid0LgotIE9uIHBvd2VycGMgYm9vazNzLzMyIChoYXNoIE1NVSksIHRoZSBmbGFnIF9Q
QUdFX0hBU0hQVEUgbXVzdCBiZSAKcHJlc2VydmVkIGFtb25nIHdyaXRlcy4gc2V0X3B0ZV9hdCgp
IHByZXNlcnZlcyBpdCwgV1JJVEVfT05DRSgpIGRvZXNuJ3QuCgpzZXRfcHRlX2F0KCkgYWxzbyBk
b2VzIGEgZmV3IG90aGVyIG1hbmRhdG9yeSB0aGluZ3MsIGxpa2UgY2FsbGluZyAKcHRlX21rcHRl
KCkKClNvLCB0aGUgV1JJVEVfT05DRSgpIG11c3QgZGVmaW5pdGVseSBiZWNvbWUgYSBzZXRfcHRl
X2F0KCkKCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
