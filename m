Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DEAABC2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycRKxm1OozAJcGLoDQatHolpAK+ksDCievK2bs9HGVw=; b=YNgEsgrUe07ivd
	0CICjlIuEDKTvS+ClNARZSyicgaN3rqbiFekbDxjlwX29J4AYoq/gyivt6GpZXOMyCd4BtMQ45vj1
	fTKHXRZbvjB+XAMjJzXVH0bWGShmxr4hT1NDNFrZpY6Qs5ql8Odf09fPoEIP/VRNr7nX5MljHniwF
	pJ1D+ruEJbQOMJm+rMs/6T+8o7oIzWF9Vcii/co2C4y1yHuLuXI4Dvbl0pGGr5upX9Rud63r4w8pe
	bhH+ngJntqNN3zJK5JIWXFSz0FTqogHDFfUK9hmrGXQ+ERdKvBAoLpXf/Yt4lBpazWq5QS/x/86Ki
	7zgSJGS4zRYnEfrHTw+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G33-0006eL-4M; Fri, 06 Sep 2019 15:21:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G2l-0006bm-Fi; Fri, 06 Sep 2019 15:21:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93B9728;
 Fri,  6 Sep 2019 08:20:58 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85E793F59C;
 Fri,  6 Sep 2019 08:20:56 -0700 (PDT)
Subject: Re: [PATCH v3 10/17] arm64, trans_pgd: adjust trans_pgd_create_copy
 interface
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-11-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <21f6eb6f-be3a-a715-a37c-2f59183ed183@arm.com>
Date: Fri, 6 Sep 2019 16:20:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-11-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_082059_608746_7734FAEA 
X-CRM114-Status: GOOD (  23.42  )
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
> Make trans_pgd_create_copy inline with the other functions in
> trans_pgd: use the trans_pgd_info argument, and also use the
> trans_pgd_create_empty.
> 
> Note, that the functions that are called by trans_pgd_create_copy are
> not yet adjusted to be compliant with trans_pgd: they do not yet use
> the provided allocator, do not check for generic errors, and do not yet
> use the flags in info argument.


> diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
> index 26e5a63676b5..f4a5f255d4a7 100644
> --- a/arch/arm64/include/asm/trans_pgd.h
> +++ b/arch/arm64/include/asm/trans_pgd.h
> @@ -43,7 +43,12 @@ struct trans_pgd_info {
>  /* Create and empty trans_pgd page table */
>  int trans_pgd_create_empty(struct trans_pgd_info *info, pgd_t **trans_pgd);
>  
> -int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
> +/*
> + * Create trans_pgd and copy entries from from_table to trans_pgd in range
> + * [start, end)
> + */
> +int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
> +			  pgd_t *from_table, unsigned long start,
>  			  unsigned long end);

This creates a copy of the linear-map. Why does it need to be told from_table?


> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 8c2641a9bb09..8bb602e91065 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -323,15 +323,42 @@ int swsusp_arch_resume(void)
>  	phys_addr_t phys_hibernate_exit;
>  	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
>  					  void *, phys_addr_t, phys_addr_t);
> +	struct trans_pgd_info trans_info = {
> +		.trans_alloc_page	= hibernate_page_alloc,
> +		.trans_alloc_arg	= (void *)GFP_ATOMIC,
> +		/*
> +		 * Resume will overwrite areas that may be marked read only
> +		 * (code, rodata). Clear the RDONLY bit from the temporary
> +		 * mappings we use during restore.
> +		 */
> +		.trans_flags		= TRANS_MKWRITE,
> +	};


> +	/*
> +	 * debug_pagealloc will removed the PTE_VALID bit if the page isn't in
> +	 * use by the resume kernel. It may have been in use by the original
> +	 * kernel, in which case we need to put it back in our copy to do the
> +	 * restore.
> +	 *
> +	 * Before marking this entry valid, check the pfn should be mapped.
> +	 */
> +	if (debug_pagealloc_enabled())
> +		trans_info.trans_flags |= (TRANS_MKVALID | TRANS_CHECKPFN);

The debug_pagealloc_enabled() check should be with the code that generates a different
entry. Whether the different entry is correct needs to be considered with
debug_pagealloc_enabled() in mind. You are making this tricky logic less clear.

There is no way the existing code invents an entry for a !pfn_valid() page. With your
'checkpfn' flag, this thing can. You don't need to generalise this for hypothetical users.


If kexec needs to create mappings for bogus pages, I'd like to know why.


>  	/*
>  	 * Restoring the memory image will overwrite the ttbr1 page tables.
>  	 * Create a second copy of just the linear map, and use this when
>  	 * restoring.
>  	 */
> -	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
> -	if (rc)
> +	rc = trans_pgd_create_copy(&trans_info, &tmp_pg_dir, init_mm.pgd,
> +				   PAGE_OFFSET, 0);

> +	if (rc) {
> +		if (rc == -ENOMEM)
> +			pr_err("Failed to allocate memory for temporary page tables.\n");
> +		else if (rc == -ENXIO)
> +			pr_err("Tried to set PTE for PFN that does not exist\n");
>  		goto out;
> +	}

If you think the distinction for this error message is useful, it would be clearer to
change it in the current hibernate code before you move it. (_copy_pte() to return an
error, instead of silently failing). Done here, this is unrelated noise.

I doubt this is specific to kexec.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
