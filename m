Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5F25BC1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOLwFI+8jushlIV92lT8fZCwUDnFdqh9pS2PjPYLps8=; b=UDSb59uRz/dKUR
	JZXMsSmGvyKeQvUFKU0kp9GjboRNqdik8FiX3cJuYRSBEwLtnvGNtRXuDZbGLgArK6qIpPEuoCDCa
	8IcJgdeQJvtUZPyroiMBITeKUoomre+7Uok1mrNctnnCsUBqQ36juhhX1C2dfMLdsW0y12XxzJREX
	rdsgsTNiWYo7W30S34LT2g6NcCd4UCr88ck1Xtzynea1YFayVCkwi3z4el8EtvJzrCYua/XnbHIhK
	ka9/NwdQUbWyVBmfLFPWnPv1v23QiO7X4sZwQ2dXk1pfdeydjvs9nz1a+W+lTMMiU4B2tCS/tiRwU
	DFacnTpz3F5IwUK2lHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvjM-00009P-ST; Mon, 01 Jul 2019 12:48:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvj9-00008r-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:48:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 80FCEAF2C;
 Mon,  1 Jul 2019 12:48:10 +0000 (UTC)
Date: Mon, 1 Jul 2019 14:48:09 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 04/11] arm64/mm: Add temporary arch_remove_memory()
 implementation
Message-ID: <20190701124809.GV6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-5-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-5-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_054812_239662_963CC2EE 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 Jun Yao <yaojun8558363@gmail.com>, linux-mm@kvack.org,
 Chintan Pandya <cpandya@codeaurora.org>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, Mike Rapoport <rppt@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 27-05-19 13:11:45, David Hildenbrand wrote:
> A proper arch_remove_memory() implementation is on its way, which also
> cleanly removes page tables in arch_add_memory() in case something goes
> wrong.
> 
> As we want to use arch_remove_memory() in case something goes wrong
> during memory hotplug after arch_add_memory() finished, let's add
> a temporary hack that is sufficient enough until we get a proper
> implementation that cleans up page table entries.
> 
> We will remove CONFIG_MEMORY_HOTREMOVE around this code in follow up
> patches.

I would drop this one as well (like s390 counterpart).
 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Chintan Pandya <cpandya@codeaurora.org>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Jun Yao <yaojun8558363@gmail.com>
> Cc: Yu Zhao <yuzhao@google.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  arch/arm64/mm/mmu.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a1bfc4413982..e569a543c384 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -1084,4 +1084,23 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
>  			   restrictions);
>  }
> +#ifdef CONFIG_MEMORY_HOTREMOVE
> +void arch_remove_memory(int nid, u64 start, u64 size,
> +			struct vmem_altmap *altmap)
> +{
> +	unsigned long start_pfn = start >> PAGE_SHIFT;
> +	unsigned long nr_pages = size >> PAGE_SHIFT;
> +	struct zone *zone;
> +
> +	/*
> +	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
> +	 * adding fails). Until then, this function should only be used
> +	 * during memory hotplug (adding memory), not for memory
> +	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
> +	 * unlocked yet.
> +	 */
> +	zone = page_zone(pfn_to_page(start_pfn));
> +	__remove_pages(zone, start_pfn, nr_pages, altmap);
> +}
> +#endif
>  #endif
> -- 
> 2.20.1

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
