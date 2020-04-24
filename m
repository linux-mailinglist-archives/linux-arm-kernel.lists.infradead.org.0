Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C08F1B70BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDPbydgiyUsrW4shAkmcNNXUYWwxcH6gwbtkkfrLXbA=; b=B6cPlFGPSfVG5s
	cN3Gf1UpuprVx4Voc2LmaZ3iz2jqrsF+YjgC1kkP24jTUvyWmdsGrjKjW4d6nJWinGjzsNdHtzrRQ
	46tPjpUIu5nT/LXobyIE7x2gi/YyT/VP4pHv5CpzlB3wkI0RfNjCuU31dcl4wjZnoQuzuQxHy4RhP
	Fl8hfbFO5ygPZ8zRJsMQqCLp994NDjZemRJAND0ytancxfFSCY+q/1D5mwrCNGYjmiGpt4UdfBp9a
	P7AGaVG7LH8WkyDOxB06t547FFurwT6yArHaUQGTlK3V5Vx2ssaLcXNFcT2L1VQux6KfOiJQZh4Ab
	bAxnteAsCgr6r8FQ/w+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuXk-0000i3-1v; Fri, 24 Apr 2020 09:22:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuXP-0000aN-QZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:22:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3843C1FB;
 Fri, 24 Apr 2020 02:22:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CECC03F73D;
 Fri, 24 Apr 2020 02:22:21 -0700 (PDT)
Date: Fri, 24 Apr 2020 10:22:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Use phys_to_page() to access pgtable memory
Message-ID: <20200424092208.GA1167@C02TD0UTHF1T.local>
References: <20200424044854.15760-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424044854.15760-1-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_022223_927142_B0423F9A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, shan.gavin@gmail.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 02:48:54PM +1000, Gavin Shan wrote:
> The macros {pgd, pud, pmd}_page() retrieves the page struct of the
> corresponding page frame, which is reserved as page table. There
> is already a macro (phys_to_page), defined in memory.h, to convert
> the physical address to the page struct. So it's reasonable to
> use that in pgtable.h.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

It might be worth pointing out that phys_to_page() is defined as:

#define phys_to_page(phys)      (pfn_to_page(__phys_to_pfn(phys)))

... so this is obviously equivalent.

Given that, and given we already explicitly include <asm/memory.h>, this
looks like a nice cleanup to me.

With or without the commit message addition:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/pgtable.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 538c85e62f86..8c20e2bd6287 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -508,7 +508,7 @@ static inline void pte_unmap(pte_t *pte) { }
>  #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
>  #define pte_clear_fixmap()		clear_fixmap(FIX_PTE)
>  
> -#define pmd_page(pmd)		pfn_to_page(__phys_to_pfn(__pmd_to_phys(pmd)))
> +#define pmd_page(pmd)			phys_to_page(__pmd_to_phys(pmd))
>  
>  /* use ONLY for statically allocated translation tables */
>  #define pte_offset_kimg(dir,addr)	((pte_t *)__phys_to_kimg(pte_offset_phys((dir), (addr))))
> @@ -566,7 +566,7 @@ static inline phys_addr_t pud_page_paddr(pud_t pud)
>  #define pmd_set_fixmap_offset(pud, addr)	pmd_set_fixmap(pmd_offset_phys(pud, addr))
>  #define pmd_clear_fixmap()		clear_fixmap(FIX_PMD)
>  
> -#define pud_page(pud)		pfn_to_page(__phys_to_pfn(__pud_to_phys(pud)))
> +#define pud_page(pud)			phys_to_page(__pud_to_phys(pud))
>  
>  /* use ONLY for statically allocated translation tables */
>  #define pmd_offset_kimg(dir,addr)	((pmd_t *)__phys_to_kimg(pmd_offset_phys((dir), (addr))))
> @@ -624,7 +624,7 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
>  #define pud_set_fixmap_offset(pgd, addr)	pud_set_fixmap(pud_offset_phys(pgd, addr))
>  #define pud_clear_fixmap()		clear_fixmap(FIX_PUD)
>  
> -#define pgd_page(pgd)		pfn_to_page(__phys_to_pfn(__pgd_to_phys(pgd)))
> +#define pgd_page(pgd)			phys_to_page(__pgd_to_phys(pgd))
>  
>  /* use ONLY for statically allocated translation tables */
>  #define pud_offset_kimg(dir,addr)	((pud_t *)__phys_to_kimg(pud_offset_phys((dir), (addr))))
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
