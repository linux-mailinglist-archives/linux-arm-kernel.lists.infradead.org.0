Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EE5128890
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 11:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHLKrYc7pcy4YrnuN5XB40tR3x+qr1b7SzjhQOZPW7c=; b=hJE75QkSoq38jV
	/YqzwwSrnKx2M2Z02NFh1n6lo0zBURro5K8bpKbHIV2lB95Zp9/hiWG+w3kvRhX6+54abj1lLOhTu
	bQYIUKHlid7nP/mNwOd2CXuA8gp2oS2wpaw+6BFodmRZqoY+GstWmhLIJjlW2APxll+ey1a91JJfc
	if6wrUy3aRSlo8gEGkWfm3y20Ph862k6Cei3a13XpWQnyt7tLfS5VOe73Hpxg5MoimHKxp1Q0yOnp
	IZLW2SrNZyrdzwz3/M+oFp3pQELhOXo/ji5ySjkO/mLC+6THRadeeloM9GSaMap6JvSCII1jFzwWl
	BBZFSC5Dv6V+oFPOFUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iic7P-0006Fv-Bv; Sat, 21 Dec 2019 10:36:19 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iic7F-0006E1-MH
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 10:36:13 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47g28K257Sz9sP3;
 Sat, 21 Dec 2019 21:36:00 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1576924564;
 bh=J7LUOTE/TlZOLs6A/wa+UANDkPEn7Eg1zFTj8wUajJI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=ep41QhtAkIMLmb7QDcQVXIPZu6eWAkKvUoCMT0vcG19lbSzTpQrhOY0RxwufoQWlr
 LQ1BmfV7J1TETBUuG4Zte4C+sy844RNzMmdObEjG1Hn78EWxQ6MrZ2BO6a2QJ7arOB
 WNWwjt5PYt4vaCuR7fXbXeF/YzH0MXc6/DVIUe3pj3pV5riIbedpKaUKpriN7JhrAQ
 jG/xg31T7EuVHMhRJNGQEhdDgK+H6xZ3tIc509ldRJQ6hcK7vKbpuSq9803rqVIGg1
 qnNNuaS7Xhk8LN6WkdwrrJPegHM9vgRPBBTYCnI8MEDt3bBsz0Mrp4ILMK/QIYhWkn
 FuaJbuiHRMeFg==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Subject: Re: [PATCH v17 01/23] mm: Add generic p?d_leaf() macros
In-Reply-To: <0951d79f-919a-4a9d-00f7-b40be96af118@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-2-steven.price@arm.com>
 <878sn8mtgt.fsf@mpe.ellerman.id.au>
 <0951d79f-919a-4a9d-00f7-b40be96af118@arm.com>
Date: Sat, 21 Dec 2019 21:35:58 +1100
Message-ID: <87v9qakltd.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_023609_934127_47D4ABA5 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Steven Price <steven.price@arm.com> writes:
> On 19/12/2019 11:43, Michael Ellerman wrote:
>> Steven Price <steven.price@arm.com> writes:
>>> Exposing the pud/pgd levels of the page tables to walk_page_range() means
>>> we may come across the exotic large mappings that come with large areas
>>> of contiguous memory (such as the kernel's linear map).
>>>
>>> For architectures that don't provide all p?d_leaf() macros, provide
>>> generic do nothing default that are suitable where there cannot be leaf
>>> pages at that level. Futher patches will add implementations for
>>> individual architectures.
>>>
>>> The name p?d_leaf() is chosen to minimize the confusion with existing
>>> uses of "large" pages and "huge" pages which do not necessary mean that
>>> the entry is a leaf (for example it may be a set of contiguous entries
>>> that only take 1 TLB slot). For the purpose of walking the page tables
>>> we don't need to know how it will be represented in the TLB, but we do
>>> need to know for sure if it is a leaf of the tree.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> Acked-by: Mark Rutland <mark.rutland@arm.com>
>>> ---
>>>  include/asm-generic/pgtable.h | 20 ++++++++++++++++++++
>>>  1 file changed, 20 insertions(+)
>>>
>>> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
>>> index 798ea36a0549..e2e2bef07dd2 100644
>>> --- a/include/asm-generic/pgtable.h
>>> +++ b/include/asm-generic/pgtable.h
>>> @@ -1238,4 +1238,24 @@ static inline bool arch_has_pfn_modify_check(void)
>>>  #define mm_pmd_folded(mm)	__is_defined(__PAGETABLE_PMD_FOLDED)
>>>  #endif
>>>  
>>> +/*
>>> + * p?d_leaf() - true if this entry is a final mapping to a physical address.
>>> + * This differs from p?d_huge() by the fact that they are always available (if
>>> + * the architecture supports large pages at the appropriate level) even
>>> + * if CONFIG_HUGETLB_PAGE is not defined.
>>> + * Only meaningful when called on a valid entry.
>>> + */
>>> +#ifndef pgd_leaf
>>> +#define pgd_leaf(x)	0
>>> +#endif
>>> +#ifndef p4d_leaf
>>> +#define p4d_leaf(x)	0
>>> +#endif
>>> +#ifndef pud_leaf
>>> +#define pud_leaf(x)	0
>>> +#endif
>>> +#ifndef pmd_leaf
>>> +#define pmd_leaf(x)	0
>>> +#endif
>> 
>> Any reason you made these #defines rather than static inlines?
>
> No strong reason - but these have to be #defines in the arch overrides
> so the #ifndef works, so I was being consistent here.

We handle that usually just with eg:

static inline bool pgd_leaf(pgd_t pgd)
{
	...
}
#define pgd_leaf pgd_leaf

> I guess a static inline might avoid warnings although I haven't seen
> any.

If anything I'd expect it to cause warnings, for example if someone is
doing pgd_leaf(pmd), but that would be good to catch.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
