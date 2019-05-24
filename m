Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB7429DC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmzZ1HgdKG64RsmFwanHFV2xp7FEyXFFWymkoyPfedU=; b=Ilts44HBTHqleh
	3Pg/I6BAJNi+y0svQHd+XkTN/XUXhl6l0HLHNC5LHyVUVQOs5qICh0R+7wBPX16xF4p5wVrkQVdKz
	usTBi+6ZgREyyUrl8yfW1a/9rIuBXPBUJsdnrG0lysDq2XoSzjFtFU/qZGjo005X2BFW5QYPih8dZ
	FqB//TGgXvFE8oOveUFEGd7Wm1I5Vysw0OHjtkl+ndKOoku+mCct1Dex2sT+hrZdUHkgoydw4d1bH
	MPQ38uDXLIy/shD5Ybb6G5zbd2hASOv9mCcrUGcfCl7y4YMo98epmgWo8lZPzwns6jQf4O0przTMm
	hfJWCEMQ8RcHQYQf5/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEcN-0008Rg-3H; Fri, 24 May 2019 18:08:35 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEc2-00084I-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:08:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49589A78;
 Fri, 24 May 2019 11:08:11 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5C8A3F703;
 Fri, 24 May 2019 11:08:09 -0700 (PDT)
Date: Fri, 24 May 2019 19:08:05 +0100
From: Will Deacon <will.deacon@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 4/4] arm64: mm: Implement pte_devmap support
Message-ID: <20190524180805.GA9697@fuggles.cambridge.arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <817d92886fc3b33bcbf6e105ee83a74babb3a5aa.1558547956.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <817d92886fc3b33bcbf6e105ee83a74babb3a5aa.1558547956.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_110814_301699_E3EAC179 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: anshuman.khandual@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 04:03:16PM +0100, Robin Murphy wrote:
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 2c41b04708fe..a6378625d47c 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -90,6 +90,7 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
>  #define pte_write(pte)		(!!(pte_val(pte) & PTE_WRITE))
>  #define pte_user_exec(pte)	(!(pte_val(pte) & PTE_UXN))
>  #define pte_cont(pte)		(!!(pte_val(pte) & PTE_CONT))
> +#define pte_devmap(pte)		(!!(pte_val(pte) & PTE_DEVMAP))
>  
>  #define pte_cont_addr_end(addr, end)						\
>  ({	unsigned long __boundary = ((addr) + CONT_PTE_SIZE) & CONT_PTE_MASK;	\
> @@ -217,6 +218,11 @@ static inline pmd_t pmd_mkcont(pmd_t pmd)
>  	return __pmd(pmd_val(pmd) | PMD_SECT_CONT);
>  }
>  
> +static inline pte_t pte_mkdevmap(pte_t pte)
> +{
> +	return set_pte_bit(pte, __pgprot(PTE_DEVMAP));
> +}
> +
>  static inline void set_pte(pte_t *ptep, pte_t pte)
>  {
>  	WRITE_ONCE(*ptep, pte);
> @@ -381,6 +387,9 @@ static inline int pmd_protnone(pmd_t pmd)
>  
>  #define pmd_mkhuge(pmd)		(__pmd(pmd_val(pmd) & ~PMD_TABLE_BIT))
>  
> +#define pmd_devmap(pmd)		pte_devmap(pmd_pte(pmd))
> +#define pmd_mkdevmap(pmd)	pte_pmd(pte_mkdevmap(pmd_pte(pmd)))
> +
>  #define __pmd_to_phys(pmd)	__pte_to_phys(pmd_pte(pmd))
>  #define __phys_to_pmd_val(phys)	__phys_to_pte_val(phys)
>  #define pmd_pfn(pmd)		((__pmd_to_phys(pmd) & PMD_MASK) >> PAGE_SHIFT)
> @@ -537,6 +546,11 @@ static inline phys_addr_t pud_page_paddr(pud_t pud)
>  	return __pud_to_phys(pud);
>  }
>  
> +static inline int pud_devmap(pud_t pud)
> +{
> +	return 0;
> +}
> +
>  /* Find an entry in the second-level page table. */
>  #define pmd_index(addr)		(((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
>  
> @@ -624,6 +638,11 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
>  
>  #define pgd_ERROR(pgd)		__pgd_error(__FILE__, __LINE__, pgd_val(pgd))
>  
> +static inline int pgd_devmap(pgd_t pgd)
> +{
> +	return 0;
> +}

I think you need to guard this and pXd_devmap() with
CONFIG_TRANSPARENT_HUGEPAGE, otherwise you'll conflict with the dummy
definitions in mm.h and the build will fail.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
