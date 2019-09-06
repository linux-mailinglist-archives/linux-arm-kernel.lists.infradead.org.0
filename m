Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B95ABC44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQh5fU2NFBhP9esUXU29wPAzeTBhHAiocrGT8um4HjI=; b=TaTFtXGawgrL+d
	/EPzxPrd++ckzp/rOr3vthjIiGBL78DbwPcYv8bPnG916/QAb+FSBfQsgKgiVotmeWh195ZjaSEwl
	eGwHm2fSMRsvWb65tXAszV9tmTiY7gyVqI3iZF8K8A/+4c28u3M361nSiXd2LpeTDcRIo91pGCz2i
	tKGgO5W0s+DOaeev7SSOOu5UWLMiBKrN+PXBVDIa64sApoNScL2Vy/HyKXqgWW8pLw8/A3mtBtPb/
	ixMiXAPRBjcjA0JeMbF4mty4SkY6WSA9NSFnrjigNiL/L2/4qTrWK6ADQoGFAPQzajKWjcGPovJA1
	AAVX1PU4DeGst34pBDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G5I-0007P0-KT; Fri, 06 Sep 2019 15:23:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G52-0007N2-IX; Fri, 06 Sep 2019 15:23:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF61828;
 Fri,  6 Sep 2019 08:23:19 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6D063F59C;
 Fri,  6 Sep 2019 08:23:16 -0700 (PDT)
Subject: Re: [PATCH v3 12/17] arm64, trans_pgd: complete generalization of
 trans_pgds
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-13-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <d4a5bb7b-21c0-9f39-ad96-3fa43684c6c6@arm.com>
Date: Fri, 6 Sep 2019 16:23:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-13-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_082320_697049_E3EDC415 
X-CRM114-Status: GOOD (  24.33  )
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
> Make the last private functions in page table copy path generlized for use
> outside of hibernate.
> 
> Switch to use the provided allocator, flags, and source page table. Also,
> unify all copy function implementations to reduce the possibility of bugs.

By changing it? No one has reported any problems. We're more likely to break it making
unnecessary changes.

Why is this necessary?


> All page table levels are implemented symmetrically.


> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> index efd42509d069..ccd9900f8edb 100644
> --- a/arch/arm64/mm/trans_pgd.c
> +++ b/arch/arm64/mm/trans_pgd.c
> @@ -27,139 +27,157 @@ static void *trans_alloc(struct trans_pgd_info *info)

> -static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
> +static int copy_pte(struct trans_pgd_info *info, pte_t *dst_ptep,
> +		    pte_t *src_ptep, unsigned long start, unsigned long end)
>  {
> -	pte_t pte = READ_ONCE(*src_ptep);
> -
> -	if (pte_valid(pte)) {
> -		/*
> -		 * Resume will overwrite areas that may be marked
> -		 * read only (code, rodata). Clear the RDONLY bit from
> -		 * the temporary mappings we use during restore.
> -		 */
> -		set_pte(dst_ptep, pte_mkwrite(pte));
> -	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
> -		/*
> -		 * debug_pagealloc will removed the PTE_VALID bit if
> -		 * the page isn't in use by the resume kernel. It may have
> -		 * been in use by the original kernel, in which case we need
> -		 * to put it back in our copy to do the restore.
> -		 *
> -		 * Before marking this entry valid, check the pfn should
> -		 * be mapped.
> -		 */
> -		BUG_ON(!pfn_valid(pte_pfn(pte)));
> -
> -		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
> -	}
> -}

> -static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
> -		    unsigned long end)
> -{
> -	pte_t *src_ptep;
> -	pte_t *dst_ptep;
>  	unsigned long addr = start;
> +	int i = pte_index(addr);
>  
> -	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
> -	if (!dst_ptep)
> -		return -ENOMEM;
> -	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
> -	dst_ptep = pte_offset_kernel(dst_pmdp, start);
> -
> -	src_ptep = pte_offset_kernel(src_pmdp, start);
>  	do {
> -		_copy_pte(dst_ptep, src_ptep, addr);
> -	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);
> +		pte_t src_pte = READ_ONCE(src_ptep[i]);
> +
> +		if (pte_none(src_pte))
> +			continue;

> +		if (info->trans_flags & TRANS_MKWRITE)
> +			src_pte = pte_mkwrite(src_pte);

This should be unconditional. The purpose of this thing is to create a set of page tables
you can use to overwrite all of memory. Why would you want to keep the RDONLY flag for
normal memory?


> +		if (info->trans_flags & TRANS_MKVALID)
> +			src_pte = pte_mkpresent(src_pte);
> +		if (info->trans_flags & TRANS_CHECKPFN) {
> +			if (!pfn_valid(pte_pfn(src_pte)))
> +				return -ENXIO;
> +		}

This lets you skip the pfn_valid() check if you want to create bogus mappings. This should
not be conditional.
This removes the BUG_ON(), which is there to make sure we stop if we find page-table
corruption.

Please keep the shape of _copy_pte() as it is. Putting a different mapping in the copied
tables is risky, the code that does it should all be in one place, along with the
justification of why its doing this. Anything else is harder to debug when it goes wrong.


> +		set_pte(&dst_ptep[i], src_pte);
> +	} while (addr += PAGE_SIZE, i++, addr != end && i < PTRS_PER_PTE);

Incrementing pte/pud/pmg/pgd pointers is a common pattern in the kernel's page table
walkers. Why do we need to change this to index it like an array?

This needs to look like walk_page_range() as the eventual aim is to remove it, and use the
core-code page table walker.

(at the time it was merged the core-code page table walker removed block mappings it
didn't like, which didn't go well.)

This is a backwards step as it makes any attempt to remove this arch-specific walker harder.


>  
>  	return 0;
>  }



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
