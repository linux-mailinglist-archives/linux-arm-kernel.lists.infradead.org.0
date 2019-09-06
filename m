Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9596ABC26
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FVl8lHpxYAkcQeX4FN7TgQ+ksvshsJJM0WKKPytJvg=; b=e1WuV3CWrCKix1
	VQ9V3dieI97rh4pU0ooJCt0Jh8kDUZrDJhQwtR4lCv6D6QGPJ/AO+CRO+NzF7amHIBRHDEH4cNMFj
	BZIm6+JB2pPwy9XfKbOacW7GB0R+UjiPZvS0/45BTqU7315M4/O0Y8h5ld6w0HdfVQTDN0GfbEQBD
	FMXDI1FgH3EwVUrsFi9hoB0JUlcRqQX41jWUP+dkCsBmUTpiGDhb/jmwJgqu4YHL5vODeQk+nARfw
	hXOd08fkeCmo+UZyVDLa/MiIOKpXP7kdCGMC6MB77flSSu+SG/shlTJdbVH3dc2Y4Ve66IJMDJacb
	sE0dXBwkgAV5zCrH6IlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G2K-00065D-Dd; Fri, 06 Sep 2019 15:20:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G23-00063L-JC; Fri, 06 Sep 2019 15:20:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2CF928;
 Fri,  6 Sep 2019 08:20:12 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E165B3F59C;
 Fri,  6 Sep 2019 08:20:08 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 08/17] arm64, trans_pgd: make trans_pgd_map_page generic
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-9-pasha.tatashin@soleen.com>
Message-ID: <62fc9ed9-1740-d40b-bc72-6d1911ef1f24@arm.com>
Date: Fri, 6 Sep 2019 16:20:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-9-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_082015_721835_25BA29F8 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 21/08/2019 19:31, Pavel Tatashin wrote:
> Currently, trans_pgd_map_page has assumptions that are relevant to
> hibernate. But, to make it generic we must allow it to use any allocator

Sounds familiar: you removed this in patch 2.


> and also, can't assume that entries do not exist in the page table
> already.

This thing creates a set of page tables to map one page: the relocation code.
This is mapped in TTBR0_EL1.
It can assume existing entries do not exist, because it creates the single-entry levels as
it goes. Kexec also needs to map precisely one page for relocation. You don't need to
generalise this.

'trans_pgd_create_copy()' is what creates a copy the linear map. This is mapped in TTBR1_EL1.

There is no reason for kexec to behave differently here.


> Also, we can't use init_mm here.

Why not? arm64's pgd_populate() doesn't use the mm. It's only there to make it obvious
this is an EL1 mapping we are creating. We use the kernel-asid with the new mapping.

The __ version is a lot less readable. Please don't use the page tables as an array: this
is what the offset helpers are for.


> Also, add "flags" for trans_pgd_info, they are going to be used
> in copy functions once they are generalized.

You don't need to 'generalize' this to support hypothetical users.
There are only two: hibernate and kexec, both of which are very specialised. Making these
things top-level marionette strings will tangle the logic.

The copy_p?d() functions should decide if they should manipulate _this_ entry based on
_this_ entry and the kernel configuration. This is only really done in _copy_pte(), which
is where it should stay.


> diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
> index c7b5402b7d87..e3d022b1b526 100644
> --- a/arch/arm64/include/asm/trans_pgd.h
> +++ b/arch/arm64/include/asm/trans_pgd.h
> @@ -11,10 +11,45 @@
>  #include <linux/bits.h>
>  #include <asm/pgtable-types.h>
>  
> +/*
> + * trans_alloc_page
> + *	- Allocator that should return exactly one uninitilaized page, if this
> + *	 allocator fails, trans_pgd returns -ENOMEM error.
> + *
> + * trans_alloc_arg
> + *	- Passed to trans_alloc_page as an argument

This is very familiar.


> + * trans_flags
> + *	- bitmap with flags that control how page table is filled.
> + *	  TRANS_MKWRITE: during page table copy make PTE, PME, and PUD page
> + *			 writeable by removing RDONLY flag from PTE.

Why would you ever keep the read-only flags in a set of page tables that exist to let you
overwrite memory?


> + *	  TRANS_MKVALID: during page table copy, if PTE present, but not valid,
> + *			 make it valid.

Please keep this logic together with the !pte_none(pte) and debug_pagealloc_enabled()
check, where it is today.

Making an entry valid without those checks should never be necessary.


> + *	  TRANS_CHECKPFN: During page table copy, for every PTE entry check that
> + *			  PFN that this PTE points to is valid. Otherwise return
> + *			  -ENXIO

Hibernate does this when inventing a new mapping. This is how we check the kernel
should be able to read/write this page. If !pfn_valid(), the page should not be mapped.

Why do you need to turn this off?

It us only necessary at the leaf level, and only if debug-pagealloc is in use. Please keep
all these bits together, as its much harder to understand why this entry needs inventing
when its split up like this.



> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 6ee81bbaa37f..17426dc8cb54 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -179,6 +179,12 @@ int arch_hibernation_header_restore(void *addr)
>  }
>  EXPORT_SYMBOL(arch_hibernation_header_restore);
>  
> +static void *
> +hibernate_page_alloc(void *arg)
> +{
> +	return (void *)get_safe_page((gfp_t)(unsigned long)arg);
> +}
> +
>  /*
>   * Copies length bytes, starting at src_start into an new page,
>   * perform cache maintentance, then maps it at the specified address low
> @@ -195,6 +201,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  				 unsigned long dst_addr,
>  				 phys_addr_t *phys_dst_addr)
>  {
> +	struct trans_pgd_info trans_info = {
> +		.trans_alloc_page	= hibernate_page_alloc,
> +		.trans_alloc_arg	= (void *)GFP_ATOMIC,
> +		.trans_flags		= 0,
> +	};
>  	void *page = (void *)get_safe_page(GFP_ATOMIC);
>  	pgd_t *trans_pgd;
>  	int rc;
> @@ -209,7 +220,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  	if (!trans_pgd)
>  		return -ENOMEM;
>  
> -	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
> +	rc = trans_pgd_map_page(&trans_info, trans_pgd, page, dst_addr,
>  				PAGE_KERNEL_EXEC);
>  	if (rc)
>  		return rc;
> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> index 00b62d8640c2..dbabccd78cc4 100644
> --- a/arch/arm64/mm/trans_pgd.c
> +++ b/arch/arm64/mm/trans_pgd.c
> @@ -17,6 +17,16 @@
>  #include <asm/pgtable.h>
>  #include <linux/suspend.h>
>  
> +static void *trans_alloc(struct trans_pgd_info *info)
> +{
> +	void *page = info->trans_alloc_page(info->trans_alloc_arg);
> +
> +	if (page)
> +		clear_page(page);

The hibernate allocator already does this. As your reason for doing this is to make this
faster, it seems odd we do this twice.

If zeroed pages are necessary, the allocator should do it. (It already needs to be a
use-case specific allocator)


> +
> +	return page;
> +}
> +
>  static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
>  {
>  	pte_t pte = READ_ONCE(*src_ptep);
> @@ -172,40 +182,64 @@ int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
>  	return rc;
>  }
>  
> -int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
> -		       pgprot_t pgprot)
> +int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
> +		       void *page, unsigned long dst_addr, pgprot_t pgprot)
>  {
> -	pgd_t *pgdp;
> -	pud_t *pudp;
> -	pmd_t *pmdp;
> -	pte_t *ptep;
> -
> -	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
> -	if (pgd_none(READ_ONCE(*pgdp))) {
> -		pudp = (void *)get_safe_page(GFP_ATOMIC);
> -		if (!pudp)
> +	int pgd_idx = pgd_index(dst_addr);
> +	int pud_idx = pud_index(dst_addr);
> +	int pmd_idx = pmd_index(dst_addr);
> +	int pte_idx = pte_index(dst_addr);

Yuck.



> +	pgd_t *pgdp = trans_pgd;
> +	pgd_t pgd = READ_ONCE(pgdp[pgd_idx]);
> +	pud_t *pudp, pud;
> +	pmd_t *pmdp, pmd;
> +	pte_t *ptep, pte;
> +
> +	if (pgd_none(pgd)) {
> +		pud_t *t = trans_alloc(info);
> +
> +		if (!t)
>  			return -ENOMEM;

> -		pgd_populate(&init_mm, pgdp, pudp);
> +
> +		__pgd_populate(&pgdp[pgd_idx], __pa(t), PUD_TYPE_TABLE);
> +		pgd = READ_ONCE(pgdp[pgd_idx]);


Please keep the pgd_populate() call. If there is some reason we can't pass init_mm, we can
pass NULL, or a fake mm pointer instead.

Going behind the page table helpers back to play with the table directly is a maintenance
headache.


>  	}
>  


> -	pudp = pud_offset(pgdp, dst_addr);
> -	if (pud_none(READ_ONCE(*pudp))) {
> -		pmdp = (void *)get_safe_page(GFP_ATOMIC);
> -		if (!pmdp)
> +	pudp = __va(pgd_page_paddr(pgd));
> +	pud = READ_ONCE(pudp[pud_idx]);
> +	if (pud_sect(pud)) {
> +		return -ENXIO;
> +	} else if (pud_none(pud) || pud_sect(pud)) {
> +		pmd_t *t = trans_alloc(info);
> +
> +		if (!t)
>  			return -ENOMEM;

Choke on block mappings? This should never happen because this function should only create
the tables necessary to map one page. Not a block mapping in sight.

(see my comments on patch 6)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
