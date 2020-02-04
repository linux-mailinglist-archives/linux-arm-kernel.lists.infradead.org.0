Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F17151822
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeCkmz5dsUGvxKmSDHQea2K1/4457zaQDpVxVQ/I7RU=; b=fjnleNkH237p7x
	gPRa+NMoJ4WpqBqKtKC7oQQRtl+ZJHCQvRAW7CLC9+F5ovchyheL6B5FEiooouWEWLg8CmjrZ33rb
	t1WxJXUJxsDuS8QS3GXPx71EKhDXLKip/TBfgcQI4HBo6PeltvTaWy6GAa2KHRtGBkOWKQKDg26l4
	8ccrTG3Aq24HYpZP2x6gRzBSFCatdSGvx7UVsvcXiU9uptFqRzLZyFp5AzMq96vqMJxd/fqnLVZpg
	GAAL/pApU7idN7giG+QpGtldUd4buTWqljlE7EXLDMDO5phxXXw6hi3bERTVVLUYItrUNBrtJhzNG
	gdMJwasI1w4oHDcDgCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyunS-0000yG-Qj; Tue, 04 Feb 2020 09:47:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyunK-0000xk-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:47:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BC651ABF4;
 Tue,  4 Feb 2020 09:46:55 +0000 (UTC)
Date: Tue, 4 Feb 2020 10:46:53 +0100
From: Oscar Salvador <osalvador@suse.de>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 10/10] mm/memory_hotplug: Cleanup __remove_pages()
Message-ID: <20200204094652.GE6494@linux>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-11-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-11-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_014658_841787_23E0ED6D 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 10:56:46AM +0200, David Hildenbrand wrote:
> Let's drop the basically unused section stuff and simplify.
> 
> Also, let's use a shorter variant to calculate the number of pages to
> the next section boundary.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Wei Yang <richardw.yang@linux.intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>

I have to confess that it took me while to wrap around my head
with the new min() change, but looks ok:

Reviewed-by: Oscar Salvador <osalvador@suse.de>

> ---
>  mm/memory_hotplug.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 843481bd507d..2275240cfa10 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -490,25 +490,20 @@ static void __remove_section(unsigned long pfn, unsigned long nr_pages,
>  void __remove_pages(unsigned long pfn, unsigned long nr_pages,
>  		    struct vmem_altmap *altmap)
>  {
> +	const unsigned long end_pfn = pfn + nr_pages;
> +	unsigned long cur_nr_pages;
>  	unsigned long map_offset = 0;
> -	unsigned long nr, start_sec, end_sec;
>  
>  	map_offset = vmem_altmap_offset(altmap);
>  
>  	if (check_pfn_span(pfn, nr_pages, "remove"))
>  		return;
>  
> -	start_sec = pfn_to_section_nr(pfn);
> -	end_sec = pfn_to_section_nr(pfn + nr_pages - 1);
> -	for (nr = start_sec; nr <= end_sec; nr++) {
> -		unsigned long pfns;
> -
> +	for (; pfn < end_pfn; pfn += cur_nr_pages) {
>  		cond_resched();
> -		pfns = min(nr_pages, PAGES_PER_SECTION
> -				- (pfn & ~PAGE_SECTION_MASK));
> -		__remove_section(pfn, pfns, map_offset, altmap);
> -		pfn += pfns;
> -		nr_pages -= pfns;
> +		/* Select all remaining pages up to the next section boundary */
> +		cur_nr_pages = min(end_pfn - pfn, -(pfn | PAGE_SECTION_MASK));
> +		__remove_section(pfn, cur_nr_pages, map_offset, altmap);
>  		map_offset = 0;
>  	}
>  }
> -- 
> 2.21.0
> 
> 

-- 
Oscar Salvador
SUSE L3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
