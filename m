Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4249494D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMQsvsp3zsVhPNBTy0uHnJILvr3+Koj06mMSubGM094=; b=DolU3v6gHshkJd
	/C/HxkkmTVcbJoGcgrHO9HzQRHTI5AyIBB4BFfZRa51JEu1fNPmpz9kHR4aWryaF9t//fkVg4UWi6
	PmqEg19sy8dVLs38qkkCE9X2vtpcoMYlV6Hcz549ybtRz6AHhMnoqBImFrMQMTjgSsezoscKfPf/X
	t7AxzfJ7//vGJs4OLWYUmMIUB5hMqSWq1DgKADdjV/XT+Z/YwyLnmZvg2iwSLHQjalBz7JTbKlUiK
	p+r35uYQEW0CqRrWDW93rOY2tL3Qwv5ZlNwzjaPFQoYWG72n1B4hkYALb3lAiQMLrzVOX1M7c96xs
	NfPl3ogyN0qlNCYwxIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzk3K-00005o-L5; Mon, 19 Aug 2019 15:58:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzk3B-0008Vl-Db; Mon, 19 Aug 2019 15:58:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4C5A344;
 Mon, 19 Aug 2019 08:58:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1D7B3F718;
 Mon, 19 Aug 2019 08:58:26 -0700 (PDT)
Date: Mon, 19 Aug 2019 16:58:24 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 03/14] arm64, hibernate: add trans_table public
 functions
Message-ID: <20190819155824.GE9927@lakrids.cambridge.arm.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817024629.26611-4-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085829_553184_B2C9E0A5 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: sashal@kernel.org, vladimir.murzin@arm.com, corbet@lwn.net,
 marc.zyngier@arm.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, jmorris@namei.org,
 linux-mm@kvack.org, james.morse@arm.com, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 10:46:18PM -0400, Pavel Tatashin wrote:
> trans_table_create_copy() and trans_table_map_page() are going to be
> the basis for public interface of new subsystem that handles page
> tables for cases which are between kernels: kexec, and hibernate.

While the architecture uses the term 'translation table', in the kernel
we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
to that naming scheme.

For example, in arch/arm64/mm/mmu.c we have a somewhat analagous
function called create_pgd_mapping() -- could we use that here, to crate
the mapping?

Thanks,
Mark.

> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/kernel/hibernate.c | 96 ++++++++++++++++++++++-------------
>  1 file changed, 61 insertions(+), 35 deletions(-)
> 
> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 96b6f8da7e49..449d69b5651c 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
>  }
>  EXPORT_SYMBOL(arch_hibernation_header_restore);
>  
> -/*
> - * Copies length bytes, starting at src_start into an new page,
> - * perform cache maintentance, then maps it at the specified address low
> - * address as executable.
> - *
> - * This is used by hibernate to copy the code it needs to execute when
> - * overwriting the kernel text. This function generates a new set of page
> - * tables, which it loads into ttbr0.
> - *
> - * Length is provided as we probably only want 4K of data, even on a 64K
> - * page system.
> - */
> -static int create_safe_exec_page(void *src_start, size_t length,
> -				 unsigned long dst_addr,
> -				 phys_addr_t *phys_dst_addr)
> +int trans_table_map_page(pgd_t *trans_table, void *page,
> +			 unsigned long dst_addr,
> +			 pgprot_t pgprot)
>  {
> -	void *page = (void *)get_safe_page(GFP_ATOMIC);
> -	pgd_t *trans_table;
>  	pgd_t *pgdp;
>  	pud_t *pudp;
>  	pmd_t *pmdp;
>  	pte_t *ptep;
>  
> -	if (!page)
> -		return -ENOMEM;
> -
> -	memcpy((void *)page, src_start, length);
> -	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
> -
> -	trans_table = (void *)get_safe_page(GFP_ATOMIC);
> -	if (!trans_table)
> -		return -ENOMEM;
> -
>  	pgdp = pgd_offset_raw(trans_table, dst_addr);
>  	if (pgd_none(READ_ONCE(*pgdp))) {
>  		pudp = (void *)get_safe_page(GFP_ATOMIC);
> @@ -242,6 +218,44 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  	ptep = pte_offset_kernel(pmdp, dst_addr);
>  	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
>  
> +	return 0;
> +}
> +
> +/*
> + * Copies length bytes, starting at src_start into an new page,
> + * perform cache maintentance, then maps it at the specified address low
> + * address as executable.
> + *
> + * This is used by hibernate to copy the code it needs to execute when
> + * overwriting the kernel text. This function generates a new set of page
> + * tables, which it loads into ttbr0.
> + *
> + * Length is provided as we probably only want 4K of data, even on a 64K
> + * page system.
> + */
> +static int create_safe_exec_page(void *src_start, size_t length,
> +				 unsigned long dst_addr,
> +				 phys_addr_t *phys_dst_addr)
> +{
> +	void *page = (void *)get_safe_page(GFP_ATOMIC);
> +	pgd_t *trans_table;
> +	int rc;
> +
> +	if (!page)
> +		return -ENOMEM;
> +
> +	memcpy(page, src_start, length);
> +	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
> +
> +	trans_table = (void *)get_safe_page(GFP_ATOMIC);
> +	if (!trans_table)
> +		return -ENOMEM;
> +
> +	rc = trans_table_map_page(trans_table, page, dst_addr,
> +				  PAGE_KERNEL_EXEC);
> +	if (rc)
> +		return rc;
> +
>  	/*
>  	 * Load our new page tables. A strict BBM approach requires that we
>  	 * ensure that TLBs are free of any entries that may overlap with the
> @@ -259,7 +273,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
>  	isb();
>  
> -	*phys_dst_addr = virt_to_phys((void *)page);
> +	*phys_dst_addr = virt_to_phys(page);
>  
>  	return 0;
>  }
> @@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
>  	return 0;
>  }
>  
> +int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
> +			    unsigned long end)
> +{
> +	int rc;
> +	pgd_t *trans_table = (pgd_t *)get_safe_page(GFP_ATOMIC);
> +
> +	if (!trans_table) {
> +		pr_err("Failed to allocate memory for temporary page tables.\n");
> +		return -ENOMEM;
> +	}
> +
> +	rc = copy_page_tables(trans_table, start, end);
> +	if (!rc)
> +		*dst_pgdp = trans_table;
> +
> +	return rc;
> +}
> +
>  /*
>   * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
>   *
> @@ -483,13 +515,7 @@ int swsusp_arch_resume(void)
>  	 * Create a second copy of just the linear map, and use this when
>  	 * restoring.
>  	 */
> -	tmp_pg_dir = (pgd_t *)get_safe_page(GFP_ATOMIC);
> -	if (!tmp_pg_dir) {
> -		pr_err("Failed to allocate memory for temporary page tables.\n");
> -		rc = -ENOMEM;
> -		goto out;
> -	}
> -	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
> +	rc = trans_table_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
>  	if (rc)
>  		goto out;
>  
> -- 
> 2.22.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
