Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1BF7C839
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OuHible/4q9PQCEY4sMbKPUMX8uYRaYGoK6P4pI4qQ=; b=bBlFBAOFePlt6q
	PHBmxlJ/HZAg8MA/YVZoVX21ItqC8GJw9GGf6XRqsuYAOoyLAOcI7r+OnyzYUT2nyHYq1M2u9rvoe
	AQJNAc3oUaGqBEfaKEvS5csmsH86CPHaPsj3LEVOVOYUp1pvLYhxShBXYf+9wMR4pr8HpR8OQqJG3
	3KUb4JsMcNhKb/oNCU0x3SMycOK9t1EV1E76ZDP93MEycJ6hNk21e7J+8MpJ70xw9wDytA49EHmh8
	lqd5EVPiR98esnr2Q8T9tTO1QZKH9F4YTfS/2QPKyanqMUgBVjm7gXEpe1REvPCrlQmv2FWrpn+eq
	W+s1KiTiwTc+vQTXZI4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrCA-0007bQ-QJ; Wed, 31 Jul 2019 16:11:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrC0-0007Zi-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:11:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11533206A3;
 Wed, 31 Jul 2019 16:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564589468;
 bh=wMw/vfv7591v5B2lTvWN47RNjbkh0FPCOeS3UTprHLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JWwb9h/LpO93Nj+dCkoUS/EpGOhXEKuyHtRHXJC6igJNZAwfQn0IYkY7GipJK9fRJ
 XReuRfvbRYRviqtwDUSADC6rOMJeYCvzl9f5WmQnPcH5pZvZXdZE4wp3fSsmA+9VBr
 U+kZr3/F/RT8+HUjng0iS0Bm/HZsFhsyWU9sfaag=
Date: Wed, 31 Jul 2019 17:11:04 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 2/2] arm64/mm: Enable device memory allocation and free for
 vmemmap mapping
Message-ID: <20190731161103.kqv3v2xlq4vnyjhp@willie-the-truck>
References: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
 <1561697083-7329-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561697083-7329-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_091108_688202_FAED52AA 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 10:14:43AM +0530, Anshuman Khandual wrote:
> This enables vmemmap_populate() and vmemmap_free() functions to incorporate
> struct vmem_altmap based device memory allocation and free requests. With
> this device memory with specific atlmap configuration can be hot plugged
> and hot removed as ZONE_DEVICE memory on arm64 platforms.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/mm/mmu.c | 57 ++++++++++++++++++++++++++++++++++-------------------
>  1 file changed, 37 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 39e18d1..8867bbd 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -735,15 +735,26 @@ int kern_addr_valid(unsigned long addr)
>  }
>  
>  #ifdef CONFIG_MEMORY_HOTPLUG
> -static void free_hotplug_page_range(struct page *page, size_t size)
> +static void free_hotplug_page_range(struct page *page, size_t size,
> +				    struct vmem_altmap *altmap)
>  {
> -	WARN_ON(!page || PageReserved(page));
> -	free_pages((unsigned long)page_address(page), get_order(size));
> +	if (altmap) {
> +		/*
> +		 * vmemmap_populate() creates vmemmap mapping either at pte
> +		 * or pmd level. Unmapping request at any other level would
> +		 * be a problem.
> +		 */
> +		WARN_ON((size != PAGE_SIZE) && (size != PMD_SIZE));
> +		vmem_altmap_free(altmap, size >> PAGE_SHIFT);
> +	} else {
> +		WARN_ON(!page || PageReserved(page));
> +		free_pages((unsigned long)page_address(page), get_order(size));
> +	}
>  }
>  
>  static void free_hotplug_pgtable_page(struct page *page)
>  {
> -	free_hotplug_page_range(page, PAGE_SIZE);
> +	free_hotplug_page_range(page, PAGE_SIZE, NULL);
>  }
>  
>  static void free_pte_table(pmd_t *pmdp, unsigned long addr)
> @@ -807,7 +818,8 @@ static void free_pud_table(pgd_t *pgdp, unsigned long addr)
>  }
>  
>  static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
> -				    unsigned long end, bool sparse_vmap)
> +				    unsigned long end, bool sparse_vmap,
> +				    struct vmem_altmap *altmap)

Do you still need the sparse_vmap parameter, or can you just pass a NULL
altmap pointer when sparse_vmap is false?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
