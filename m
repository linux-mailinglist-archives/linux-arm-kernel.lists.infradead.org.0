Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7252116BCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2HDYeDaTd+LbqOm8pUaOO4FFMrc4LlyMySYZ5+YUGc=; b=kiclLi+Tyo/+s6
	PoZKBs5cBkbCrNGUjpI8DHyX3Pr/r6N/43kZDTI5ZMOwv8xm3ZMIvLEBAKEYWkY3WccREGqn0js0Z
	qsc7pFDW2TFn7q6aAug3qHizXwTGMAugR/aflGj7eraPUvrzpJvKx0bqzAOIS0XuNgxJG1nJcXW4b
	HtX/oKdJTRwFKt98+bBf0rpe6higd7OJZ/YdE24wPo2ottDC2xo1Xtvli1PRvqiFr74Z/ZlPPqJ7r
	WVNrcMDJejVZHS4YXndK39S9G6LEfVwOmzA+8xP57H3eOhpHKczeAkV+jtej/7UCM1KmllPyqIc5m
	FAIV84IAXsFs/QDE5Kog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGuH-0001hL-Dv; Mon, 09 Dec 2019 11:08:49 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGu9-0001fa-8N
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 11:08:43 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47WgRQ3lb0z9sPc;
 Mon,  9 Dec 2019 22:08:34 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1575889716;
 bh=rYe8qrzC5Yad6k0eMTD1iKIi3I9u3ShpcDApHGCih3Q=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=gGCrjof44OinljG4Usq9loRpcZytu5Q1MmX9DfuOjt5J0oZKbDHKViLkY1olhW6TL
 pn3HGcv7TtoOBTs89AAkcK3LZjCcC3pXDiGZYqa3idH9EFVf0ZMTzTbQy2ifdjUnXs
 WWvGJ0hDpCBUzNv0pFFMRi6eJNsdTc4VS8zXAeqBueA217DSpk+dnzLbU3IurJsDim
 NmWi5VTrIrL4NS5d96cHb6EX8oD4F2+FEVHCHxaM4N6GC2ZDLMm5fPTxG5YYbCsM4W
 l+4EgpGiwjPYyVN9avCdVDu8fRbCUD5NAiTisSShqziayscWKNDKBtEW1ypOAZP5x8
 1kdoBUkZl7b3w==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Subject: Re: [PATCH v16 06/25] powerpc: mm: Add p?d_leaf() definitions
In-Reply-To: <20191206135316.47703-7-steven.price@arm.com>
References: <20191206135316.47703-1-steven.price@arm.com>
 <20191206135316.47703-7-steven.price@arm.com>
Date: Mon, 09 Dec 2019 22:08:32 +1100
Message-ID: <875ziprc27.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_030841_500578_60336516 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Steven Price <steven.price@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 kvm-ppc@vger.kernel.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Steven Price <steven.price@arm.com> writes:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
>
> For powerpc pmd_large() already exists and does what we want, so hoist
> it out of the CONFIG_TRANSPARENT_HUGEPAGE condition and implement the
> other levels. Macros are used to provide the generic p?d_leaf() names.
>
> CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> CC: Paul Mackerras <paulus@samba.org>
> CC: Michael Ellerman <mpe@ellerman.id.au>
> CC: linuxppc-dev@lists.ozlabs.org
> CC: kvm-ppc@vger.kernel.org
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/powerpc/include/asm/book3s/64/pgtable.h | 30 ++++++++++++++------
>  1 file changed, 21 insertions(+), 9 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
> index b01624e5c467..3dd7b6f5edd0 100644
> --- a/arch/powerpc/include/asm/book3s/64/pgtable.h
> +++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
> @@ -923,6 +923,12 @@ static inline int pud_present(pud_t pud)
>  	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PRESENT));
>  }
>  
> +#define pud_leaf	pud_large
> +static inline int pud_large(pud_t pud)
> +{
> +	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PTE));
> +}

We already have:

#define pud_is_leaf pud_is_leaf
static inline bool pud_is_leaf(pud_t pud)
{
	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PTE));
}

And so on.

These went in relatively recently in:

  d6eacedd1f0e ("powerpc/book3s: Use config independent helpers for page table walk")


Assuming those all work for you, maybe your patch in this series should
just do:

#define pud_leaf pud_is_leaf

And so on. And then we can do a patch later to change the arch/powerpc
code to use pud_leaf() etc. directly and drop the "is" versions.

cheers


> @@ -966,6 +972,12 @@ static inline int pgd_present(pgd_t pgd)
>  	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PRESENT));
>  }
>  
> +#define pgd_leaf	pgd_large
> +static inline int pgd_large(pgd_t pgd)
> +{
> +	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PTE));
> +}
> +
>  static inline pte_t pgd_pte(pgd_t pgd)
>  {
>  	return __pte_raw(pgd_raw(pgd));
> @@ -1133,6 +1145,15 @@ static inline bool pmd_access_permitted(pmd_t pmd, bool write)
>  	return pte_access_permitted(pmd_pte(pmd), write);
>  }
>  
> +#define pmd_leaf	pmd_large
> +/*
> + * returns true for pmd migration entries, THP, devmap, hugetlb
> + */
> +static inline int pmd_large(pmd_t pmd)
> +{
> +	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
> +}
> +
>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>  extern pmd_t pfn_pmd(unsigned long pfn, pgprot_t pgprot);
>  extern pmd_t mk_pmd(struct page *page, pgprot_t pgprot);
> @@ -1159,15 +1180,6 @@ pmd_hugepage_update(struct mm_struct *mm, unsigned long addr, pmd_t *pmdp,
>  	return hash__pmd_hugepage_update(mm, addr, pmdp, clr, set);
>  }
>  
> -/*
> - * returns true for pmd migration entries, THP, devmap, hugetlb
> - * But compile time dependent on THP config
> - */
> -static inline int pmd_large(pmd_t pmd)
> -{
> -	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
> -}
> -
>  static inline pmd_t pmd_mknotpresent(pmd_t pmd)
>  {
>  	return __pmd(pmd_val(pmd) & ~_PAGE_PRESENT);
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
