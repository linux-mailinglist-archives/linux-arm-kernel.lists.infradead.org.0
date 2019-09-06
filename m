Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF2ABC1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rHkAM1iD1itKjEa8y4uY68gwvxKWXnKyHBMxvboJTU=; b=HurGCipcUqMc5L
	NajLttHdbapnkNlNRBLumpzn900ixcfy+iP/cZrGVHHYhiPmhJOTtffL6msWucwgcg6ie7VhPWUlH
	MYUHYTk2WwotBARp/RjlL9AnBtYxFvz37hPW6xG9pYrAJlo+JdGTtq3Ejqu3M0jfhLshZeEfpVNX5
	B4gDirUcC0otaORxFjfCYMsV6x0aznQ/GsXIlRxBoTSM4aPuUA34h/xsSrGOkFr6GhrnpUTJcrzAr
	yKi9FZ7JlFs9XgJJAMaeWUsHadpAMqeJ5IZz7oCWzNAFC4u4PZdI/s5aQYnoEYXrwZ7lQD4grqGkb
	aTGvTACKrWR997EbPLwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G1A-0003zk-UT; Fri, 06 Sep 2019 15:19:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G02-00037o-Oi; Fri, 06 Sep 2019 15:18:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FAE828;
 Fri,  6 Sep 2019 08:18:10 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21E023F59C;
 Fri,  6 Sep 2019 08:18:08 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 06/17] arm64, hibernate: add trans_pgd public functions
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-7-pasha.tatashin@soleen.com>
Message-ID: <bcc3f71f-97d2-dff4-c55a-4798c6e2bede@arm.com>
Date: Fri, 6 Sep 2019 16:18:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-7-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081810_947431_E0DC2F4B 
X-CRM114-Status: GOOD (  18.20  )
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
> trans_pgd_create_copy() and trans_pgd_map_page() are going to be
> the basis for public interface of new subsystem that handles page

Please don't call this a subsystem. 'sound' and 'mm' are subsystems, this is just some
shared code.

> tables for cases which are between kernels: kexec, and hibernate.

Even though you've baked the get_safe_page() calls into trans_pgd_map_page()?


> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 750ecc7f2cbe..2e29d620b56c 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)

> +int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
> +		       unsigned long dst_addr,
> +		       pgprot_t pgprot)

If this thing is going to be exposed, its name should reflect that its creating a set of
page tables, to map a single page.

A function called 'map_page' with this prototype should 'obviously' map @page at @dst_addr
in @trans_pgd using the provided @pgprot... but it doesn't.

This is what 'create' was doing in the old name, if that wasn't obvious, its because
naming things is hard!
| trans_create_single_page_mapping()?

(might be too verbose)

I think this bites you in patch 8, where you 'generalise' this.


>  {
> -	void *page = (void *)get_safe_page(GFP_ATOMIC);
> -	pgd_t *trans_pgd;
>  	pgd_t *pgdp;
>  	pud_t *pudp;
>  	pmd_t *pmdp;
>  	pte_t *ptep;
>  
> -	if (!page)
> -		return -ENOMEM;
> -
> -	memcpy(page, src_start, length);
> -	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
> -
> -	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
> -	if (!trans_pgd)
> -		return -ENOMEM;
> -
>  	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
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

Could you fix the spelling of maintenance as git thinks you've moved it?


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


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
