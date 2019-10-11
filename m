Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB5CD475D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zN2+tflmnMZY5QUCpxpCzJOLGb6M1L9BmR4HbtWfQTY=; b=suukSka81GBQkM
	rRN1rDxK5bDDQPGeA+GmHObaCLo8f9HxseslK3Cqc9dZrj8CB4dfXJSdjXlVQwmtlEAbJF0moBRKa
	+0yAWqps1jgP5lBBvOCmtaTYOieOJCfal+J6AwyVYLaXYmjvpcenSw8qmdwBowP1eInG80q556K9/
	f7OevQ+KMy2yCg68Cb95lmnwR4XKqdjZMLW7eDUj4wYPCDcOYASkQqIdAWn32Lq1ngcLPJ/Pf+ehd
	cz//C9lPpKVJ23dc43ytyabpBBo3/BOkzxN4ZILlOP16tiaaoQ2md9BAmyCNOttX4bAl/x7o6bz6Q
	hEPZnDshmC2aRp9Pf8/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzV7-0006Kk-6l; Fri, 11 Oct 2019 18:18:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzUs-0006JB-Dv; Fri, 11 Oct 2019 18:18:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9AF2142F;
 Fri, 11 Oct 2019 11:18:37 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E19183F703;
 Fri, 11 Oct 2019 11:18:35 -0700 (PDT)
Subject: Re: [PATCH v6 08/17] arm64: hibernate: add trans_pgd public functions
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-9-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2ea69969-154d-fa55-767d-43ea8971dd0e@arm.com>
Date: Fri, 11 Oct 2019 19:18:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004185234.31471-9-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111838_559114_9BBC7C61 
X-CRM114-Status: GOOD (  20.88  )
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

On 04/10/2019 19:52, Pavel Tatashin wrote:
> trans_pgd_create_copy() and trans_pgd_map_page() are going to be
> the basis for new shared code that handles page tables for cases
> which are between kernels: kexec, and hibernate.
> 
> Note: Eventually, get_safe_page() will be moved into a function pointer
> passed via argument, but for now keep it as is.


> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index ce60bceed357..ded9034b9d39 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c

> @@ -242,6 +218,44 @@ static int create_safe_exec_page(void *src_start, size_t length,

> +/*
> + * Copies length bytes, starting at src_start into an new page,
> + * perform cache maintenance, then maps it at the specified address low
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
> +	pgd_t *trans_pgd;
> +	int rc;
> +
> +	if (!page)
> +		return -ENOMEM;
> +
> +	memcpy(page, src_start, length);
> +	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
> +
> +	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
> +	if (!trans_pgd)
> +		return -ENOMEM;
> +
> +	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
> +				PAGE_KERNEL_EXEC);
> +	if (rc)
> +		return rc;
> +
>  	/*
>  	 * Load our new page tables. A strict BBM approach requires that we
>  	 * ensure that TLBs are free of any entries that may overlap with the

(I suspect you are going to to duplicate this in the kexec code. Kexec has the same
pattern: instructions that have to be copied to do the relocation of the rest of memory)


> @@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,

> +int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
> +			  unsigned long end)
> +{
> +	int rc;
> +	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
> +
> +	if (!trans_pgd) {
> +		pr_err("Failed to allocate memory for temporary page tables.\n");
> +		return -ENOMEM;
> +	}
> +
> +	rc = copy_page_tables(trans_pgd, start, end);
> +	if (!rc)
> +		*dst_pgdp = trans_pgd;

*dst_pgdp was already allocated in swsusp_arch_resume().


> +
> +	return rc;
> +}
> +
>  /*
>   * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
>   *
> @@ -488,7 +520,7 @@ int swsusp_arch_resume(void)
>  		pr_err("Failed to allocate memory for temporary page tables.\n");
>  		return -ENOMEM;
>  	}

If the allocation moves into 'trans_pgd_create_copy()', please move the code just above
here (cut off by the diff) that allocates it in swsusp_arch_resume().

Its actually okay to leak memory like this, hibernate's allocator acts as a memory pool.
It either gets freed if we fail to resume, or vanishes when the resumed kernel takes over.

Reviewed-by: James Morse <james.morse@arm.com>


> -	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_END);
> +	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, PAGE_END);
>  	if (rc)
>  		return rc;


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
