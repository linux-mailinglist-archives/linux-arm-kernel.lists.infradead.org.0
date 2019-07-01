Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C328E12F2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UG4KGw88bDBX/+kkgFghDcEeTH7nLAUcguHIhiKxGHk=; b=Yb5VaVgV8+R7ebFdgIOfW5drB
	CnoU+jOtbRP5srBnYJ9yNHlGQNVx/pV8WXLMteVWYYZoFdrk7LNol+UvC1jep6639G036nPJds5qL
	99Q9viBtAXa8GafH3g5bfkIDkMj4nDYBpxbuEKPEfDaRiKqP2uh80KHcu+50SoMghpOoynJuO/CKM
	OH7eBl/h+mlgtcyRTKOqoKRrYKknF3GHlaOIo65HtO7JsQtdYjqEFqigI53OTow4YCgu+os6snzNU
	+tbkk7NZAsXcjm6CyM+besoD+Y4Daa94JHxtLs235zZ1AmUargFFhynfe7BbtAgEodXdycOfTxkrB
	eqtvYR/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYGd-0000Sf-SK; Fri, 03 May 2019 13:30:23 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYGW-00087a-7F; Fri, 03 May 2019 13:30:18 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hMYFM-00074d-Bk; Fri, 03 May 2019 13:29:04 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1hMYFF-0001a5-CV; Fri, 03 May 2019 14:29:03 +0100
Subject: Re: [PATCH 14/15] um: switch to generic version of pte allocation
To: Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-15-git-send-email-rppt@linux.ibm.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <3fddc076-1843-ee84-febb-44c8d317489f@cambridgegreys.com>
Date: Fri, 3 May 2019 14:28:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556810922-20248-15-git-send-email-rppt@linux.ibm.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_063016_395699_5E259523 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 Ley Foon Tan <lftan@altera.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/05/2019 16:28, Mike Rapoport wrote:
> um allocates PTE pages with __get_free_page() and uses
> GFP_KERNEL | __GFP_ZERO for the allocations.
> 
> Switch it to the generic version that does exactly the same thing for the
> kernel page tables and adds __GFP_ACCOUNT for the user PTEs.
> 
> The pte_free() and pte_free_kernel() versions are identical to the generic
> ones and can be simply dropped.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>   arch/um/include/asm/pgalloc.h | 16 ++--------------
>   arch/um/kernel/mem.c          | 22 ----------------------
>   2 files changed, 2 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/um/include/asm/pgalloc.h b/arch/um/include/asm/pgalloc.h
> index 99eb568..d7b282e 100644
> --- a/arch/um/include/asm/pgalloc.h
> +++ b/arch/um/include/asm/pgalloc.h
> @@ -10,6 +10,8 @@
>   
>   #include <linux/mm.h>
>   
> +#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
> +
>   #define pmd_populate_kernel(mm, pmd, pte) \
>   	set_pmd(pmd, __pmd(_PAGE_TABLE + (unsigned long) __pa(pte)))
>   
> @@ -25,20 +27,6 @@
>   extern pgd_t *pgd_alloc(struct mm_struct *);
>   extern void pgd_free(struct mm_struct *mm, pgd_t *pgd);
>   
> -extern pte_t *pte_alloc_one_kernel(struct mm_struct *);
> -extern pgtable_t pte_alloc_one(struct mm_struct *);
> -
> -static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
> -{
> -	free_page((unsigned long) pte);
> -}
> -
> -static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
> -{
> -	pgtable_page_dtor(pte);
> -	__free_page(pte);
> -}
> -
>   #define __pte_free_tlb(tlb,pte, address)		\
>   do {							\
>   	pgtable_page_dtor(pte);				\
> diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
> index 99aa11b..2280374 100644
> --- a/arch/um/kernel/mem.c
> +++ b/arch/um/kernel/mem.c
> @@ -215,28 +215,6 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
>   	free_page((unsigned long) pgd);
>   }
>   
> -pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
> -{
> -	pte_t *pte;
> -
> -	pte = (pte_t *)__get_free_page(GFP_KERNEL|__GFP_ZERO);
> -	return pte;
> -}
> -
> -pgtable_t pte_alloc_one(struct mm_struct *mm)
> -{
> -	struct page *pte;
> -
> -	pte = alloc_page(GFP_KERNEL|__GFP_ZERO);
> -	if (!pte)
> -		return NULL;
> -	if (!pgtable_page_ctor(pte)) {
> -		__free_page(pte);
> -		return NULL;
> -	}
> -	return pte;
> -}
> -
>   #ifdef CONFIG_3_LEVEL_PGTABLES
>   pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long address)
>   {
> 


Reviewed-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
