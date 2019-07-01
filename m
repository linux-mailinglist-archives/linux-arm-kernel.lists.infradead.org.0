Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F67131C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/v8/3KTOIi8bJ5sNPJbw6CXicuAKDuQlK12SVR5W+Q=; b=hZoa7cwRuxkZHW
	JGE6rjJLY7HJFS88h1Bo0RDBoBgGKUC2mepB2KQNbzD5ljMPODPR0RYrF9t2LVcUgLroAe0uy85Y6
	vR7Ow46z8Nyhh/Si5SRK0Wz3tARm4Uu6l4OxdTzBksJWqs8peQSekcwLoXrGo1FwNoyxeyoW55hIf
	oYtqMpmsuOd58inLrnFgi+G8WGW4rzq6YhkLMedXBI4QLo6of8/g2kNiqtwwUVeKSbxVBB0+MNBqS
	Q+RWMHxdDWXqOkB9Z6xEsxX8ee0j85y2wQlsOdAqKrDoFiF9EhgEKZg+H+hVf+/JH4tAyZNEBagRy
	wISNFJmGAke9zKZaS9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMafa-0000s0-VX; Fri, 03 May 2019 16:04:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMafR-0000ne-6T; Fri, 03 May 2019 16:04:11 +0000
Received: from guoren-Inspiron-7460 (23.83.240.247.16clouds.com
 [23.83.240.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B79282075C;
 Fri,  3 May 2019 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556899448;
 bh=9K26hWqGMesApQFdaAhFuNyta2kJgrhs2hDdmQ00qcY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HpZWwg5gL0lVYH9xXr2lFjIs4Hr4EFxgLMU0fvIEmuLFdJqilQ6jQYN4Ocb6SStWw
 iJWfiG66zAQYSvJeB8l3sHAhW93+kPdDD0sZUeypbCGK/KXfyMm98BkvfNuimDaaPM
 OT2y75fIlpEILXIObpyUg29WsNXovSO+5g+0/f6w=
Date: Sat, 4 May 2019 00:03:48 +0800
From: Guo Ren <guoren@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 05/15] csky: switch to generic version of pte allocation
Message-ID: <20190503160348.GA9526@guoren-Inspiron-7460>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-6-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556810922-20248-6-git-send-email-rppt@linux.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090409_284191_FFED4FC0 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, nios2-dev@lists.rocketboards.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Richard Kuo <rkuo@codeaurora.org>, Paul Burton <paul.burton@mips.com>,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

Acked-by: Guo Ren <ren_guo@c-sky.com>

On Thu, May 02, 2019 at 06:28:32PM +0300, Mike Rapoport wrote:
> The csky implementation pte_alloc_one(), pte_free_kernel() and pte_free()
> is identical to the generic except of lack of __GFP_ACCOUNT for the user
> PTEs allocation.
> 
> Switch csky to use generic version of these functions.
Ok.

> 
> The csky implementation of pte_alloc_one_kernel() is not replaced because
> it does not clear the allocated page but rather sets each PTE in it to a
> non-zero value.
Yes, we must set each PTE to _PAGE_GLOBAL because hardware refill the
MMU TLB entry with two PTEs and it use the result of pte0.global | pte1.global.
If pte0 is valid and pte1 is invalid, we must set _PAGE_GLOBAL in
invalid pte entry. Fortunately, there is no performance issue.

> 
> The pte_free_kernel() and pte_free() versions on csky are identical to the
> generic ones and can be simply dropped.
Ok.

Best Regards
 Guo Ren

> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/csky/include/asm/pgalloc.h | 30 +++---------------------------
>  1 file changed, 3 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/csky/include/asm/pgalloc.h b/arch/csky/include/asm/pgalloc.h
> index d213bb4..98c571670 100644
> --- a/arch/csky/include/asm/pgalloc.h
> +++ b/arch/csky/include/asm/pgalloc.h
> @@ -8,6 +8,9 @@
>  #include <linux/mm.h>
>  #include <linux/sched.h>
>  
> +#define __HAVE_ARCH_PTE_ALLOC_ONE_KERNEL
> +#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
> +
>  static inline void pmd_populate_kernel(struct mm_struct *mm, pmd_t *pmd,
>  					pte_t *pte)
>  {
> @@ -39,33 +42,6 @@ static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
>  	return pte;
>  }
>  
> -static inline struct page *pte_alloc_one(struct mm_struct *mm)
> -{
> -	struct page *pte;
> -
> -	pte = alloc_pages(GFP_KERNEL | __GFP_ZERO, 0);
> -	if (!pte)
> -		return NULL;
> -
> -	if (!pgtable_page_ctor(pte)) {
> -		__free_page(pte);
> -		return NULL;
> -	}
> -
> -	return pte;
> -}
> -
> -static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
> -{
> -	free_pages((unsigned long)pte, PTE_ORDER);
> -}
> -
> -static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
> -{
> -	pgtable_page_dtor(pte);
> -	__free_pages(pte, PTE_ORDER);
> -}
> -
>  static inline void pgd_free(struct mm_struct *mm, pgd_t *pgd)
>  {
>  	free_pages((unsigned long)pgd, PGD_ORDER);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
