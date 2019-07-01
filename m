Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263175B735
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcS8aGr21Uj/U7PjIQN2K5w8JcVCWK736a4ft7ZNgBY=; b=dOy2+P2iLerI07
	dmga6VYDoFWdd2YzEtAzuHVNDpw+lLj/n4+GBiGyiFDu+SfBQ7DctzoqtL/6KzPBj99EdYTt1EQZC
	DXWtPMdXDtsaaKYOL1tVWXSqWxq3ZWMrBwDaLFqpwLkx3N4J0N66N7Ie0W8+6g86PzAsBXEDcfY3B
	vqtohqAI+yhwh0t3JIScm/EcTUkxwI5J4fIvgQ7SKGjHWxjmLMmSsYImqTMoBZZUdSzADV8ukUH4S
	4n98eOm+7BepuMb38DFjG63/fDKwWbZGlaKPoFl255OtfqlB3zuQ8Ec7Wp3D/0VHT5CuKixCUUbnb
	bXlLlPuR8sGHSfxx36aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhs3L-0002Jp-DP; Mon, 01 Jul 2019 08:52:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhs37-0002JC-0F
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:52:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AE529AD23;
 Mon,  1 Jul 2019 08:52:31 +0000 (UTC)
Date: Mon, 1 Jul 2019 10:52:31 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 11/11] mm/memory_hotplug: Remove "zone" parameter from
 sparse_remove_one_section
Message-ID: <20190701085231.GK6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-12-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-12-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_015233_189677_D8A168F9 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 27-05-19 13:11:52, David Hildenbrand wrote:
> The parameter is unused, so let's drop it. Memory removal paths should
> never care about zones. This is the job of memory offlining and will
> require more refactorings.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  include/linux/memory_hotplug.h | 2 +-
>  mm/memory_hotplug.c            | 2 +-
>  mm/sparse.c                    | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
> index 2f1f87e13baa..1a4257c5f74c 100644
> --- a/include/linux/memory_hotplug.h
> +++ b/include/linux/memory_hotplug.h
> @@ -346,7 +346,7 @@ extern void move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
>  extern bool is_memblock_offlined(struct memory_block *mem);
>  extern int sparse_add_one_section(int nid, unsigned long start_pfn,
>  				  struct vmem_altmap *altmap);
> -extern void sparse_remove_one_section(struct zone *zone, struct mem_section *ms,
> +extern void sparse_remove_one_section(struct mem_section *ms,
>  		unsigned long map_offset, struct vmem_altmap *altmap);
>  extern struct page *sparse_decode_mem_map(unsigned long coded_mem_map,
>  					  unsigned long pnum);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 82136c5b4c5f..e48ec7b9dee2 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -524,7 +524,7 @@ static void __remove_section(struct zone *zone, struct mem_section *ms,
>  	start_pfn = section_nr_to_pfn((unsigned long)scn_nr);
>  	__remove_zone(zone, start_pfn);
>  
> -	sparse_remove_one_section(zone, ms, map_offset, altmap);
> +	sparse_remove_one_section(ms, map_offset, altmap);
>  }
>  
>  /**
> diff --git a/mm/sparse.c b/mm/sparse.c
> index d1d5e05f5b8d..1552c855d62a 100644
> --- a/mm/sparse.c
> +++ b/mm/sparse.c
> @@ -800,8 +800,8 @@ static void free_section_usemap(struct page *memmap, unsigned long *usemap,
>  		free_map_bootmem(memmap);
>  }
>  
> -void sparse_remove_one_section(struct zone *zone, struct mem_section *ms,
> -		unsigned long map_offset, struct vmem_altmap *altmap)
> +void sparse_remove_one_section(struct mem_section *ms, unsigned long map_offset,
> +			       struct vmem_altmap *altmap)
>  {
>  	struct page *memmap = NULL;
>  	unsigned long *usemap = NULL;
> -- 
> 2.20.1

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
