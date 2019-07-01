Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9707C5B5D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kBmmewqXeHjixFtTUlY9WKhcfFxF49wQ6kIbJnzLog=; b=mHEg3WK9qeTnv/
	t+J7HIe++8S/1HFcxdh854N2EnJ9FQjvuB6Ql0SxKX6p4BWIklem3MHU3VEagt+coWYkQvyXnIV0R
	9URR+OmcdpzoUq3rY9SJAePVhGzh1/DBKgKCyMmOt4ZMPfFgTmCY9nNTs3EX3GygE+Ux3s0Ffa8xL
	tvqVAqzf+jyLgoiafL5EbBGWVPrhL8gSP+3LbN1rQ3cDFtCo4q7e+2xCdqagHszP56mZBTOdic2Sk
	HtKhFpX74bn8iaTiLk9q0u3uXB9M31vs2vwoxZssYjZ8YO1cOIv9xei5wy/aqzQUHjG679z2Zxqf/
	E6pXwA6CdtYjCo1W7O4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhqxH-0003Zv-S4; Mon, 01 Jul 2019 07:42:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqwy-0003YR-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 07:42:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5F478AFFA;
 Mon,  1 Jul 2019 07:42:04 +0000 (UTC)
Date: Mon, 1 Jul 2019 09:42:02 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 01/11] mm/memory_hotplug: Simplify and fix
 check_hotplug_memory_range()
Message-ID: <20190701074202.GB6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-2-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-2-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_004208_723610_00A59CBB 
X-CRM114-Status: GOOD (  15.75  )
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
 Pavel Tatashin <pasha.tatashin@soleen.com>, linux-sh@vger.kernel.org,
 Mathieu Malaterre <malat@debian.org>, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Arun KS <arunks@codeaurora.org>, Qian Cai <cai@lca.pw>,
 Wei Yang <richardw.yang@linux.intel.com>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Sorry for a really late response]

On Mon 27-05-19 13:11:42, David Hildenbrand wrote:
> By converting start and size to page granularity, we actually ignore
> unaligned parts within a page instead of properly bailing out with an
> error.

I do not expect any code path would ever provide an unaligned address
and even if it did then rounding that to a pfn doesn't sound like a
terrible thing to do. Anyway this removes few lines so why not.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Wei Yang <richard.weiyang@gmail.com>
> Cc: Arun KS <arunks@codeaurora.org>
> Cc: Mathieu Malaterre <malat@debian.org>
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  mm/memory_hotplug.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index e096c987d261..762887b2358b 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -1051,16 +1051,11 @@ int try_online_node(int nid)
>  
>  static int check_hotplug_memory_range(u64 start, u64 size)
>  {
> -	unsigned long block_sz = memory_block_size_bytes();
> -	u64 block_nr_pages = block_sz >> PAGE_SHIFT;
> -	u64 nr_pages = size >> PAGE_SHIFT;
> -	u64 start_pfn = PFN_DOWN(start);
> -
>  	/* memory range must be block size aligned */
> -	if (!nr_pages || !IS_ALIGNED(start_pfn, block_nr_pages) ||
> -	    !IS_ALIGNED(nr_pages, block_nr_pages)) {
> +	if (!size || !IS_ALIGNED(start, memory_block_size_bytes()) ||
> +	    !IS_ALIGNED(size, memory_block_size_bytes())) {
>  		pr_err("Block size [%#lx] unaligned hotplug range: start %#llx, size %#llx",
> -		       block_sz, start, size);
> +		       memory_block_size_bytes(), start, size);
>  		return -EINVAL;
>  	}
>  
> -- 
> 2.20.1
> 

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
