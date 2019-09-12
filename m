Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A510B11B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ps7Y6TiMGBCFYWzkhLiPqlt1JKrhL0ikMyHP+ug6ts=; b=JmWmSLQ8r1CM/JeChIyEBDagr
	fFRxgrCJbeaTYgkh+eLySWml5a1MDWuDy+sYK+UlrZ9Q34m4UVW50C5PwKZafCjdyq5F+2qxQMgUc
	aHL8ugMIE70gQm2eNcW5n8q+dtALtpNrwy3nv0XvI1zj1O7Y8Fg96iVUQRitS5oNH9Nai1f6Bjek7
	d/lcwT1eM6trBOj5/RG6IUZXmSqlrTYqRW1qTE4T3o1vfM7AiOc9qHI5VHJfaumxt9xUgrbzP2heE
	/0qlRo3lWseBesw2owVuvf30n+22TaCel4+DivbBZZY+ZJBVDRvoSe9bSkKcR4c4F8m+qxPUuaELP
	P0H+wZD7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Qba-0004dN-Qw; Thu, 12 Sep 2019 15:01:54 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QaR-0004Z5-FU; Thu, 12 Sep 2019 15:00:46 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46Thln60wLz9typC;
 Thu, 12 Sep 2019 17:00:37 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=rV1HapTj; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id JpcFicqlZ8B7; Thu, 12 Sep 2019 17:00:37 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46Thln4hDmz9vKHS;
 Thu, 12 Sep 2019 17:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568300437; bh=R2glDPwRgsMGK23Yl880bEw+kzwf2YClf4smByEEMhU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=rV1HapTjbxiBWzCXYywq3KSdYam/K9FXBAbXWfJ78FPDK4G/XMpn5H+VJtlOQe01C
 aJ8Q3uQZrXxKWEbzbQ5iQtLoejTuqhLH6gBU8KrWK6Livr0ytwprjPwFRpFQau5U/s
 7mBXf/gWkvlpsXYyx59B04keQIVXNpZF8sjD5gW0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3B9D38B941;
 Thu, 12 Sep 2019 17:00:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id VS7bm07k3Ksg; Thu, 12 Sep 2019 17:00:39 +0200 (CEST)
Received: from pc16032vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 669028B933;
 Thu, 12 Sep 2019 17:00:36 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <4cf31ca9-39e4-87e4-7eef-a6f3f0ea7576@c-s.fr>
Date: Thu, 12 Sep 2019 15:00:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_080043_827524_0717F875 
X-CRM114-Status: GOOD (  30.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/12/2019 06:02 AM, Anshuman Khandual wrote:
> This adds a test module which will validate architecture page table helpers
> and accessors regarding compliance with generic MM semantics expectations.
> This will help various architectures in validating changes to the existing
> page table helpers or addition of new ones.
> 
> Test page table and memory pages creating it's entries at various level are
> all allocated from system memory with required alignments. If memory pages
> with required size and alignment could not be allocated, then all depending
> individual tests are skipped.

Build failure on powerpc book3s/32. This is because asm/highmem.h is 
missing. It can't be included from asm/book3s/32/pgtable.h because it 
creates circular dependency. So it has to be included from 
mm/arch_pgtable_test.c



   CC      mm/arch_pgtable_test.o
In file included from ./arch/powerpc/include/asm/book3s/pgtable.h:8:0,
                  from ./arch/powerpc/include/asm/pgtable.h:18,
                  from ./include/linux/mm.h:99,
                  from ./arch/powerpc/include/asm/io.h:29,
                  from ./include/linux/io.h:13,
                  from ./include/linux/irq.h:20,
                  from ./arch/powerpc/include/asm/hardirq.h:6,
                  from ./include/linux/hardirq.h:9,
                  from ./include/linux/interrupt.h:11,
                  from ./include/linux/kernel_stat.h:9,
                  from ./include/linux/cgroup.h:26,
                  from ./include/linux/hugetlb.h:9,
                  from mm/arch_pgtable_test.c:14:
mm/arch_pgtable_test.c: In function 'arch_pgtable_tests_init':
./arch/powerpc/include/asm/book3s/32/pgtable.h:365:13: error: implicit 
declaration of function 'kmap_atomic' 
[-Werror=implicit-function-declaration]
   ((pte_t *)(kmap_atomic(pmd_page(*(dir))) + \
              ^
./include/linux/mm.h:2008:31: note: in expansion of macro 'pte_offset_map'
   (pte_alloc(mm, pmd) ? NULL : pte_offset_map(pmd, address))
                                ^
mm/arch_pgtable_test.c:377:9: note: in expansion of macro 'pte_alloc_map'
   ptep = pte_alloc_map(mm, pmdp, vaddr);
          ^
cc1: some warnings being treated as errors
make[2]: *** [mm/arch_pgtable_test.o] Error 1


Christophe


> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Steven Price <Steven.Price@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Sri Krishna chowdary <schowdary@nvidia.com>
> Cc: Dave Hansen <dave.hansen@intel.com>
> Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: James Hogan <jhogan@kernel.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Kirill A. Shutemov <kirill@shutemov.name>
> Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
> Cc: Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: linux-snps-arc@lists.infradead.org
> Cc: linux-mips@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-ia64@vger.kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-sh@vger.kernel.org
> Cc: sparclinux@vger.kernel.org
> Cc: x86@kernel.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/x86/include/asm/pgtable_64_types.h |   2 +
>   mm/Kconfig.debug                        |  14 +
>   mm/Makefile                             |   1 +
>   mm/arch_pgtable_test.c                  | 429 ++++++++++++++++++++++++
>   4 files changed, 446 insertions(+)
>   create mode 100644 mm/arch_pgtable_test.c
> 
> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> index 52e5f5f2240d..b882792a3999 100644
> --- a/arch/x86/include/asm/pgtable_64_types.h
> +++ b/arch/x86/include/asm/pgtable_64_types.h
> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
>   #define pgtable_l5_enabled() 0
>   #endif /* CONFIG_X86_5LEVEL */
>   
> +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> +
>   extern unsigned int pgdir_shift;
>   extern unsigned int ptrs_per_p4d;
>   
> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
> index 327b3ebf23bf..ce9c397f7b07 100644
> --- a/mm/Kconfig.debug
> +++ b/mm/Kconfig.debug
> @@ -117,3 +117,17 @@ config DEBUG_RODATA_TEST
>       depends on STRICT_KERNEL_RWX
>       ---help---
>         This option enables a testcase for the setting rodata read-only.
> +
> +config DEBUG_ARCH_PGTABLE_TEST
> +	bool "Test arch page table helpers for semantics compliance"
> +	depends on MMU
> +	depends on DEBUG_KERNEL
> +	help
> +	  This options provides a kernel module which can be used to test
> +	  architecture page table helper functions on various platform in
> +	  verifying if they comply with expected generic MM semantics. This
> +	  will help architectures code in making sure that any changes or
> +	  new additions of these helpers will still conform to generic MM
> +	  expected semantics.
> +
> +	  If unsure, say N.
> diff --git a/mm/Makefile b/mm/Makefile
> index d996846697ef..bb572c5aa8c5 100644
> --- a/mm/Makefile
> +++ b/mm/Makefile
> @@ -86,6 +86,7 @@ obj-$(CONFIG_HWPOISON_INJECT) += hwpoison-inject.o
>   obj-$(CONFIG_DEBUG_KMEMLEAK) += kmemleak.o
>   obj-$(CONFIG_DEBUG_KMEMLEAK_TEST) += kmemleak-test.o
>   obj-$(CONFIG_DEBUG_RODATA_TEST) += rodata_test.o
> +obj-$(CONFIG_DEBUG_ARCH_PGTABLE_TEST) += arch_pgtable_test.o
>   obj-$(CONFIG_PAGE_OWNER) += page_owner.o
>   obj-$(CONFIG_CLEANCACHE) += cleancache.o
>   obj-$(CONFIG_MEMORY_ISOLATION) += page_isolation.o
> diff --git a/mm/arch_pgtable_test.c b/mm/arch_pgtable_test.c
> new file mode 100644
> index 000000000000..8b4a92756ad8
> --- /dev/null
> +++ b/mm/arch_pgtable_test.c
> @@ -0,0 +1,429 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * This kernel module validates architecture page table helpers &
> + * accessors and helps in verifying their continued compliance with
> + * generic MM semantics.
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + *
> + * Author: Anshuman Khandual <anshuman.khandual@arm.com>
> + */
> +#define pr_fmt(fmt) "arch_pgtable_test: %s " fmt, __func__
> +
> +#include <linux/gfp.h>
> +#include <linux/hugetlb.h>
> +#include <linux/kernel.h>
> +#include <linux/mm.h>
> +#include <linux/mman.h>
> +#include <linux/mm_types.h>
> +#include <linux/module.h>
> +#include <linux/pfn_t.h>
> +#include <linux/printk.h>
> +#include <linux/random.h>
> +#include <linux/spinlock.h>
> +#include <linux/swap.h>
> +#include <linux/swapops.h>
> +#include <linux/sched/mm.h>
> +#include <asm/pgalloc.h>
> +#include <asm/pgtable.h>
> +
> +/*
> + * Basic operations
> + *
> + * mkold(entry)			= An old and not a young entry
> + * mkyoung(entry)		= A young and not an old entry
> + * mkdirty(entry)		= A dirty and not a clean entry
> + * mkclean(entry)		= A clean and not a dirty entry
> + * mkwrite(entry)		= A write and not a write protected entry
> + * wrprotect(entry)		= A write protected and not a write entry
> + * pxx_bad(entry)		= A mapped and non-table entry
> + * pxx_same(entry1, entry2)	= Both entries hold the exact same value
> + */
> +#define VMFLAGS	(VM_READ|VM_WRITE|VM_EXEC)
> +
> +/*
> + * On s390 platform, the lower 12 bits are used to identify given page table
> + * entry type and for other arch specific requirements. But these bits might
> + * affect the ability to clear entries with pxx_clear(). So while loading up
> + * the entries skip all lower 12 bits in order to accommodate s390 platform.
> + * It does not have affect any other platform.
> + */
> +#define RANDOM_ORVALUE	(0xfffffffffffff000UL)
> +#define RANDOM_NZVALUE	(0xff)
> +
> +static bool pud_aligned;
> +static bool pmd_aligned;
> +
> +static void pte_basic_tests(struct page *page, pgprot_t prot)
> +{
> +	pte_t pte = mk_pte(page, prot);
> +
> +	WARN_ON(!pte_same(pte, pte));
> +	WARN_ON(!pte_young(pte_mkyoung(pte)));
> +	WARN_ON(!pte_dirty(pte_mkdirty(pte)));
> +	WARN_ON(!pte_write(pte_mkwrite(pte)));
> +	WARN_ON(pte_young(pte_mkold(pte)));
> +	WARN_ON(pte_dirty(pte_mkclean(pte)));
> +	WARN_ON(pte_write(pte_wrprotect(pte)));
> +}
> +
> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
> +static void pmd_basic_tests(struct page *page, pgprot_t prot)
> +{
> +	pmd_t pmd;
> +
> +	/*
> +	 * Memory block here must be PMD_SIZE aligned. Abort this
> +	 * test in case we could not allocate such a memory block.
> +	 */
> +	if (!pmd_aligned) {
> +		pr_warn("Could not proceed with PMD tests\n");
> +		return;
> +	}
> +
> +	pmd = mk_pmd(page, prot);
> +	WARN_ON(!pmd_same(pmd, pmd));
> +	WARN_ON(!pmd_young(pmd_mkyoung(pmd)));
> +	WARN_ON(!pmd_dirty(pmd_mkdirty(pmd)));
> +	WARN_ON(!pmd_write(pmd_mkwrite(pmd)));
> +	WARN_ON(pmd_young(pmd_mkold(pmd)));
> +	WARN_ON(pmd_dirty(pmd_mkclean(pmd)));
> +	WARN_ON(pmd_write(pmd_wrprotect(pmd)));
> +	/*
> +	 * A huge page does not point to next level page table
> +	 * entry. Hence this must qualify as pmd_bad().
> +	 */
> +	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
> +}
> +#else
> +static void pmd_basic_tests(struct page *page, pgprot_t prot) { }
> +#endif
> +
> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> +static void pud_basic_tests(struct page *page, pgprot_t prot)
> +{
> +	pud_t pud;
> +
> +	/*
> +	 * Memory block here must be PUD_SIZE aligned. Abort this
> +	 * test in case we could not allocate such a memory block.
> +	 */
> +	if (!pud_aligned) {
> +		pr_warn("Could not proceed with PUD tests\n");
> +		return;
> +	}
> +
> +	pud = pfn_pud(page_to_pfn(page), prot);
> +	WARN_ON(!pud_same(pud, pud));
> +	WARN_ON(!pud_young(pud_mkyoung(pud)));
> +	WARN_ON(!pud_write(pud_mkwrite(pud)));
> +	WARN_ON(pud_write(pud_wrprotect(pud)));
> +	WARN_ON(pud_young(pud_mkold(pud)));
> +
> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> +	/*
> +	 * A huge page does not point to next level page table
> +	 * entry. Hence this must qualify as pud_bad().
> +	 */
> +	WARN_ON(!pud_bad(pud_mkhuge(pud)));
> +#endif
> +}
> +#else
> +static void pud_basic_tests(struct page *page, pgprot_t prot) { }
> +#endif
> +
> +static void p4d_basic_tests(struct page *page, pgprot_t prot)
> +{
> +	p4d_t p4d;
> +
> +	memset(&p4d, RANDOM_NZVALUE, sizeof(p4d_t));
> +	WARN_ON(!p4d_same(p4d, p4d));
> +}
> +
> +static void pgd_basic_tests(struct page *page, pgprot_t prot)
> +{
> +	pgd_t pgd;
> +
> +	memset(&pgd, RANDOM_NZVALUE, sizeof(pgd_t));
> +	WARN_ON(!pgd_same(pgd, pgd));
> +}
> +
> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> +static void pud_clear_tests(pud_t *pudp)
> +{
> +	pud_t pud = READ_ONCE(*pudp);
> +
> +	pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
> +	WRITE_ONCE(*pudp, pud);
> +	pud_clear(pudp);
> +	pud = READ_ONCE(*pudp);
> +	WARN_ON(!pud_none(pud));
> +}
> +
> +static void pud_populate_tests(struct mm_struct *mm, pud_t *pudp, pmd_t *pmdp)
> +{
> +	pud_t pud;
> +
> +	/*
> +	 * This entry points to next level page table page.
> +	 * Hence this must not qualify as pud_bad().
> +	 */
> +	pmd_clear(pmdp);
> +	pud_clear(pudp);
> +	pud_populate(mm, pudp, pmdp);
> +	pud = READ_ONCE(*pudp);
> +	WARN_ON(pud_bad(pud));
> +}
> +#else
> +static void pud_clear_tests(pud_t *pudp) { }
> +static void pud_populate_tests(struct mm_struct *mm, pud_t *pudp, pmd_t *pmdp)
> +{
> +}
> +#endif
> +
> +#if !defined(__PAGETABLE_PUD_FOLDED) && !defined(__ARCH_HAS_5LEVEL_HACK)
> +static void p4d_clear_tests(p4d_t *p4dp)
> +{
> +	p4d_t p4d = READ_ONCE(*p4dp);
> +
> +	p4d = __p4d(p4d_val(p4d) | RANDOM_ORVALUE);
> +	WRITE_ONCE(*p4dp, p4d);
> +	p4d_clear(p4dp);
> +	p4d = READ_ONCE(*p4dp);
> +	WARN_ON(!p4d_none(p4d));
> +}
> +
> +static void p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp, pud_t *pudp)
> +{
> +	p4d_t p4d;
> +
> +	/*
> +	 * This entry points to next level page table page.
> +	 * Hence this must not qualify as p4d_bad().
> +	 */
> +	pud_clear(pudp);
> +	p4d_clear(p4dp);
> +	p4d_populate(mm, p4dp, pudp);
> +	p4d = READ_ONCE(*p4dp);
> +	WARN_ON(p4d_bad(p4d));
> +}
> +#else
> +static void p4d_clear_tests(p4d_t *p4dp) { }
> +static void p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp, pud_t *pudp)
> +{
> +}
> +#endif
> +
> +#ifndef __ARCH_HAS_5LEVEL_HACK
> +static void pgd_clear_tests(struct mm_struct *mm, pgd_t *pgdp)
> +{
> +	pgd_t pgd = READ_ONCE(*pgdp);
> +
> +	if (mm_p4d_folded(mm))
> +		return;
> +
> +	pgd = __pgd(pgd_val(pgd) | RANDOM_ORVALUE);
> +	WRITE_ONCE(*pgdp, pgd);
> +	pgd_clear(pgdp);
> +	pgd = READ_ONCE(*pgdp);
> +	WARN_ON(!pgd_none(pgd));
> +}
> +
> +static void pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp, p4d_t *p4dp)
> +{
> +	pgd_t pgd;
> +
> +	if (mm_p4d_folded(mm))
> +		return;
> +
> +	/*
> +	 * This entry points to next level page table page.
> +	 * Hence this must not qualify as pgd_bad().
> +	 */
> +	p4d_clear(p4dp);
> +	pgd_clear(pgdp);
> +	pgd_populate(mm, pgdp, p4dp);
> +	pgd = READ_ONCE(*pgdp);
> +	WARN_ON(pgd_bad(pgd));
> +}
> +#else
> +static void pgd_clear_tests(struct mm_struct *mm, pgd_t *pgdp) { }
> +static void pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp, p4d_t *p4dp)
> +{
> +}
> +#endif
> +
> +static void pte_clear_tests(struct mm_struct *mm, pte_t *ptep)
> +{
> +	pte_t pte = READ_ONCE(*ptep);
> +
> +	pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
> +	WRITE_ONCE(*ptep, pte);
> +	pte_clear(mm, 0, ptep);
> +	pte = READ_ONCE(*ptep);
> +	WARN_ON(!pte_none(pte));
> +}
> +
> +static void pmd_clear_tests(pmd_t *pmdp)
> +{
> +	pmd_t pmd = READ_ONCE(*pmdp);
> +
> +	pmd = __pmd(pmd_val(pmd) | RANDOM_ORVALUE);
> +	WRITE_ONCE(*pmdp, pmd);
> +	pmd_clear(pmdp);
> +	pmd = READ_ONCE(*pmdp);
> +	WARN_ON(!pmd_none(pmd));
> +}
> +
> +static void pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
> +			       pgtable_t pgtable)
> +{
> +	pmd_t pmd;
> +
> +	/*
> +	 * This entry points to next level page table page.
> +	 * Hence this must not qualify as pmd_bad().
> +	 */
> +	pmd_clear(pmdp);
> +	pmd_populate(mm, pmdp, pgtable);
> +	pmd = READ_ONCE(*pmdp);
> +	WARN_ON(pmd_bad(pmd));
> +}
> +
> +static struct page *alloc_mapped_page(void)
> +{
> +	struct page *page;
> +	gfp_t gfp_mask = GFP_KERNEL | __GFP_ZERO;
> +
> +	page = alloc_gigantic_page_order(get_order(PUD_SIZE), gfp_mask,
> +				first_memory_node, &node_states[N_MEMORY]);
> +	if (page) {
> +		pud_aligned = true;
> +		pmd_aligned = true;
> +		return page;
> +	}
> +
> +	page = alloc_pages(gfp_mask, get_order(PMD_SIZE));
> +	if (page) {
> +		pmd_aligned = true;
> +		return page;
> +	}
> +	return alloc_page(gfp_mask);
> +}
> +
> +static void free_mapped_page(struct page *page)
> +{
> +	if (pud_aligned) {
> +		unsigned long pfn = page_to_pfn(page);
> +
> +		free_contig_range(pfn, 1ULL << get_order(PUD_SIZE));
> +		return;
> +	}
> +
> +	if (pmd_aligned) {
> +		int order = get_order(PMD_SIZE);
> +
> +		free_pages((unsigned long)page_address(page), order);
> +		return;
> +	}
> +	free_page((unsigned long)page_address(page));
> +}
> +
> +static unsigned long get_random_vaddr(void)
> +{
> +	unsigned long random_vaddr, random_pages, total_user_pages;
> +
> +	total_user_pages = (TASK_SIZE - FIRST_USER_ADDRESS) / PAGE_SIZE;
> +
> +	random_pages = get_random_long() % total_user_pages;
> +	random_vaddr = FIRST_USER_ADDRESS + random_pages * PAGE_SIZE;
> +
> +	WARN_ON(random_vaddr > TASK_SIZE);
> +	WARN_ON(random_vaddr < FIRST_USER_ADDRESS);
> +	return random_vaddr;
> +}
> +
> +static int __init arch_pgtable_tests_init(void)
> +{
> +	struct mm_struct *mm;
> +	struct page *page;
> +	pgd_t *pgdp;
> +	p4d_t *p4dp, *saved_p4dp;
> +	pud_t *pudp, *saved_pudp;
> +	pmd_t *pmdp, *saved_pmdp, pmd;
> +	pte_t *ptep;
> +	pgtable_t saved_ptep;
> +	pgprot_t prot;
> +	unsigned long vaddr;
> +
> +	prot = vm_get_page_prot(VMFLAGS);
> +	vaddr = get_random_vaddr();
> +	mm = mm_alloc();
> +	if (!mm) {
> +		pr_err("mm_struct allocation failed\n");
> +		return 1;
> +	}
> +
> +	page = alloc_mapped_page();
> +	if (!page) {
> +		pr_err("memory allocation failed\n");
> +		return 1;
> +	}
> +
> +	pgdp = pgd_offset(mm, vaddr);
> +	p4dp = p4d_alloc(mm, pgdp, vaddr);
> +	pudp = pud_alloc(mm, p4dp, vaddr);
> +	pmdp = pmd_alloc(mm, pudp, vaddr);
> +	ptep = pte_alloc_map(mm, pmdp, vaddr);
> +
> +	/*
> +	 * Save all the page table page addresses as the page table
> +	 * entries will be used for testing with random or garbage
> +	 * values. These saved addresses will be used for freeing
> +	 * page table pages.
> +	 */
> +	pmd = READ_ONCE(*pmdp);
> +	saved_p4dp = p4d_offset(pgdp, 0UL);
> +	saved_pudp = pud_offset(p4dp, 0UL);
> +	saved_pmdp = pmd_offset(pudp, 0UL);
> +	saved_ptep = pmd_pgtable(pmd);
> +
> +	pte_basic_tests(page, prot);
> +	pmd_basic_tests(page, prot);
> +	pud_basic_tests(page, prot);
> +	p4d_basic_tests(page, prot);
> +	pgd_basic_tests(page, prot);
> +
> +	pte_clear_tests(mm, ptep);
> +	pmd_clear_tests(pmdp);
> +	pud_clear_tests(pudp);
> +	p4d_clear_tests(p4dp);
> +	pgd_clear_tests(mm, pgdp);
> +
> +	pmd_populate_tests(mm, pmdp, saved_ptep);
> +	pud_populate_tests(mm, pudp, saved_pmdp);
> +	p4d_populate_tests(mm, p4dp, saved_pudp);
> +	pgd_populate_tests(mm, pgdp, saved_p4dp);
> +
> +	p4d_free(mm, saved_p4dp);
> +	pud_free(mm, saved_pudp);
> +	pmd_free(mm, saved_pmdp);
> +	pte_free(mm, saved_ptep);
> +
> +	mm_dec_nr_puds(mm);
> +	mm_dec_nr_pmds(mm);
> +	mm_dec_nr_ptes(mm);
> +	__mmdrop(mm);
> +
> +	free_mapped_page(page);
> +	return 0;
> +}
> +
> +static void __exit arch_pgtable_tests_exit(void) { }
> +
> +module_init(arch_pgtable_tests_init);
> +module_exit(arch_pgtable_tests_exit);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_AUTHOR("Anshuman Khandual <anshuman.khandual@arm.com>");
> +MODULE_DESCRIPTION("Test architecture page table helpers");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
