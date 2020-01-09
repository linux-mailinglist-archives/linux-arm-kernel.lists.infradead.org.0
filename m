Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084E41351EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UY6mg5bxtMXL93HrDsEJUpiemo3amutCPnlUCi6CHHY=; b=OYXnxyhH+RPdOG
	/Lc1ah4XVc5Kqsva42NG23TWtIH11UByNfWV8omI0C0gDKBCe4eT2pwTiH0cDWpimF1K5AYEXfOAK
	VX9RDo7tHrh0tUqcm0EmrOMuP3YejUQLaEzRjU/nxzfDIAx/0x+5qSqyC8Re7TkrVhj1JEA9+SAWP
	zbEEP5v2XJfcrJZI6C2HFhHFPRBFEE9t+8nbeZy3nwls+Il8AdN8b9Hs3MZk/53ZUGT8KMms3kprx
	NIUGvNQ+Odte06WnysmspKBE0coXcTeTfZhpJeeVQ3zdl7Jj29XvA2NkKYs7zGi5yfH6QseHXd8m5
	C+jUSZElucxjUR4wiwQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipORv-0000Ol-JR; Thu, 09 Jan 2020 03:25:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipORU-0007ZC-0x
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:25:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4613431B;
 Wed,  8 Jan 2020 19:25:01 -0800 (PST)
Received: from [10.162.40.138] (p8cg001049571a15.blr.arm.com [10.162.40.138])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DE4BE3F534; Wed,  8 Jan 2020 19:24:56 -0800 (PST)
Subject: Re: [PATCH 1/1] arm/arm64: add support for folded p4d page tables
To: Mike Rapoport <rppt@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20191230082734.28954-1-rppt@kernel.org>
 <20191230082734.28954-2-rppt@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <7f18fc35-3380-564b-b660-0c003d7d3107@arm.com>
Date: Thu, 9 Jan 2020 08:56:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191230082734.28954-2-rppt@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_192504_505483_63B79C8F 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/30/2019 01:57 PM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Implement primitives necessary for the 4th level folding, add walks of p4d
> level where appropriate, replace 5level-fixup.h with pgtable-nop4d.h and
> remove __ARCH_USE_5LEVEL_HACK.
> 
> Since arm and arm64 share kvm memory management bits, make the conversion
> for both variants at once to avoid breaking the builds in the middle.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/arm/include/asm/kvm_mmu.h          |   5 +-
>  arch/arm/include/asm/pgtable.h          |   1 -
>  arch/arm/include/asm/stage2_pgtable.h   |  15 +-
>  arch/arm/lib/uaccess_with_memcpy.c      |   9 +-
>  arch/arm/mach-sa1100/assabet.c          |   2 +-
>  arch/arm/mm/dump.c                      |  29 +++-
>  arch/arm/mm/fault-armv.c                |   7 +-
>  arch/arm/mm/fault.c                     |  28 +++-
>  arch/arm/mm/idmap.c                     |   3 +-
>  arch/arm/mm/init.c                      |   2 +-
>  arch/arm/mm/ioremap.c                   |  12 +-
>  arch/arm/mm/mm.h                        |   2 +-
>  arch/arm/mm/mmu.c                       |  35 +++-
>  arch/arm/mm/pgd.c                       |  40 ++++-
>  arch/arm64/include/asm/kvm_mmu.h        |  10 +-
>  arch/arm64/include/asm/pgalloc.h        |  10 +-
>  arch/arm64/include/asm/pgtable-types.h  |   5 +-
>  arch/arm64/include/asm/pgtable.h        |  37 +++--
>  arch/arm64/include/asm/stage2_pgtable.h |  48 ++++--
>  arch/arm64/kernel/hibernate.c           |  46 +++++-
>  arch/arm64/mm/dump.c                    |  29 +++-
>  arch/arm64/mm/fault.c                   |   9 +-
>  arch/arm64/mm/hugetlbpage.c             |  15 +-
>  arch/arm64/mm/kasan_init.c              |  41 ++++-
>  arch/arm64/mm/mmu.c                     |  52 ++++--
>  arch/arm64/mm/pageattr.c                |   7 +-
>  virt/kvm/arm/mmu.c                      | 209 ++++++++++++++++++++----
>  27 files changed, 565 insertions(+), 143 deletions(-)
> 

^^^^^^

> diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
> index f87a32484ea8..fd6220508711 100644
> --- a/arch/arm64/mm/kasan_init.c
> +++ b/arch/arm64/mm/kasan_init.c
> @@ -84,17 +84,32 @@ static pmd_t *__init kasan_pmd_offset(pud_t *pudp, unsigned long addr, int node,
>  	return early ? pmd_offset_kimg(pudp, addr) : pmd_offset(pudp, addr);
>  }
>  
> -static pud_t *__init kasan_pud_offset(pgd_t *pgdp, unsigned long addr, int node,
> +static pud_t *__init kasan_pud_offset(p4d_t *p4dp, unsigned long addr, int node,
>  				      bool early)
>  {
> -	if (pgd_none(READ_ONCE(*pgdp))) {
> +	if (p4d_none(READ_ONCE(*p4dp))) {
>  		phys_addr_t pud_phys = early ?
>  				__pa_symbol(kasan_early_shadow_pud)
>  					: kasan_alloc_zeroed_page(node);
> -		__pgd_populate(pgdp, pud_phys, PMD_TYPE_TABLE);
> +		__p4d_populate(p4dp, pud_phys, PMD_TYPE_TABLE);
> +	}
> +
> +	return early ? pud_offset_kimg(p4dp, addr) : pud_offset(p4dp, addr);
> +}
> +
> +static p4d_t *__init kasan_p4d_offset(pgd_t *pgdp, unsigned long addr, int node,
> +				      bool early)
> +{
> +#ifndef __PAGETABLE_P4D_FOLDED
> +	if (pgd_none(READ_ONCE(*pgdp))) {
> +		phys_addr_t p4d_phys = early ?
> +				__pa_symbol(kasan_early_shadow_p4d)
> +					: kasan_alloc_zeroed_page(node);
> +		__pgd_populate(pgdp, p4d_phys, PMD_TYPE_TABLE);

We dont have __pgd_populate() definition any more. AFAICS __PAGETABLE_P4D_FOLDED
is always defined because pgtable-nop4d.h gets pulled in for all configurations
via pgtable-nopud.h and pgtable-nopmd.h headers.

>  	}
> +#endif
>  
> -	return early ? pud_offset_kimg(pgdp, addr) : pud_offset(pgdp, addr);
> +	return early ? p4d_offset_kimg(pgdp, addr) : p4d_offset(pgdp, addr);
>  }
>  
>  static void __init kasan_pte_populate(pmd_t *pmdp, unsigned long addr,
> @@ -126,11 +141,11 @@ static void __init kasan_pmd_populate(pud_t *pudp, unsigned long addr,
>  	} while (pmdp++, addr = next, addr != end && pmd_none(READ_ONCE(*pmdp)));
>  }
>  
> -static void __init kasan_pud_populate(pgd_t *pgdp, unsigned long addr,
> +static void __init kasan_pud_populate(p4d_t *p4dp, unsigned long addr,
>  				      unsigned long end, int node, bool early)
>  {
>  	unsigned long next;
> -	pud_t *pudp = kasan_pud_offset(pgdp, addr, node, early);
> +	pud_t *pudp = kasan_pud_offset(p4dp, addr, node, early);
>  
>  	do {
>  		next = pud_addr_end(addr, end);
> @@ -138,6 +153,18 @@ static void __init kasan_pud_populate(pgd_t *pgdp, unsigned long addr,
>  	} while (pudp++, addr = next, addr != end && pud_none(READ_ONCE(*pudp)));
>  }
>  
> +static void __init kasan_p4d_populate(pgd_t *pgdp, unsigned long addr,
> +				      unsigned long end, int node, bool early)
> +{
> +	unsigned long next;
> +	p4d_t *p4dp = kasan_p4d_offset(pgdp, addr, node, early);
> +
> +	do {
> +		next = p4d_addr_end(addr, end);
> +		kasan_pmd_populate(p4dp, addr, next, node, early);

s/kasan_pmd_populate()/kasan_pud_populate()

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
