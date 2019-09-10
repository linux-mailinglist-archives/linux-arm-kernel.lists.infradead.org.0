Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE04AAEA3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=529joCAMBpRPZ6KVW+eIDkm6s1YnHSZp9+A6yWk3JLU=; b=QtgdoHdWtxyX6T
	j+l3ZE2au1bIyrJ0QAcBYO0Aq5cBjfJRsl/W/svp2rQFo2Tp+a1aAtSGqO4B6uuh7Xx03qF2ApzUJ
	9jkl7ewhUfsgRh19FlhG+uGJ4Jgq1B3C7za+udPGHKgw8Zt+GN3J7mL3BvrdGU1JGBnH2pjQrl4LW
	OgZLl2hn62XkS1VO0QEaqkglrOk/2QHWtskg8wTZYIxB31Xptv9H/XjkzJ+1MFq6qRpxnQmLA+KQV
	ylM7WRpeqQOdIo98T0bodn2OyYgnt0NKewBgzXg8uwrWgZ7ZIfCk3zOJRrP5MXXwRnKNF49NRJNpm
	QQK+FMUHuOblYH/jcxbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fBE-0004NB-6g; Tue, 10 Sep 2019 12:23:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fAy-0004Mh-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:23:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9A3ACB68B;
 Tue, 10 Sep 2019 12:23:14 +0000 (UTC)
Date: Tue, 10 Sep 2019 14:23:13 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
Message-ID: <20190910122313.GW2063@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172528.10910.37051.stgit@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_052316_410059_9AB9FD28 
X-CRM114-Status: GOOD (  22.10  )
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, lcapitulino@redhat.com,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, will@kernel.org,
 aarcange@redhat.com, virtio-dev@lists.oasis-open.org, mst@redhat.com,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, konrad.wilk@oracle.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 07-09-19 10:25:28, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> In order to support page reporting it will be necessary to store and
> retrieve the migratetype of a page. To enable that I am moving the set and
> get operations for pcppage_migratetype into the mm/internal.h header so
> that they can be used outside of the page_alloc.c file.

Please describe who is the user and why does it needs this interface.
This is really important because migratetype is an MM internal thing and
external users shouldn't really care about it at all. We really do not
want a random code to call those, especially the set_pcppage_migratetype.

> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  mm/internal.h   |   18 ++++++++++++++++++
>  mm/page_alloc.c |   18 ------------------
>  2 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/mm/internal.h b/mm/internal.h
> index 0d5f720c75ab..e4a1a57bbd40 100644
> --- a/mm/internal.h
> +++ b/mm/internal.h
> @@ -549,6 +549,24 @@ static inline bool is_migrate_highatomic_page(struct page *page)
>  	return get_pageblock_migratetype(page) == MIGRATE_HIGHATOMIC;
>  }
>  
> +/*
> + * A cached value of the page's pageblock's migratetype, used when the page is
> + * put on a pcplist. Used to avoid the pageblock migratetype lookup when
> + * freeing from pcplists in most cases, at the cost of possibly becoming stale.
> + * Also the migratetype set in the page does not necessarily match the pcplist
> + * index, e.g. page might have MIGRATE_CMA set but be on a pcplist with any
> + * other index - this ensures that it will be put on the correct CMA freelist.
> + */
> +static inline int get_pcppage_migratetype(struct page *page)
> +{
> +	return page->index;
> +}
> +
> +static inline void set_pcppage_migratetype(struct page *page, int migratetype)
> +{
> +	page->index = migratetype;
> +}
> +
>  void setup_zone_pageset(struct zone *zone);
>  extern struct page *alloc_new_node_page(struct page *page, unsigned long node);
>  #endif	/* __MM_INTERNAL_H */
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 4e4356ba66c7..a791f2baeeeb 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -185,24 +185,6 @@ static int __init early_init_on_free(char *buf)
>  }
>  early_param("init_on_free", early_init_on_free);
>  
> -/*
> - * A cached value of the page's pageblock's migratetype, used when the page is
> - * put on a pcplist. Used to avoid the pageblock migratetype lookup when
> - * freeing from pcplists in most cases, at the cost of possibly becoming stale.
> - * Also the migratetype set in the page does not necessarily match the pcplist
> - * index, e.g. page might have MIGRATE_CMA set but be on a pcplist with any
> - * other index - this ensures that it will be put on the correct CMA freelist.
> - */
> -static inline int get_pcppage_migratetype(struct page *page)
> -{
> -	return page->index;
> -}
> -
> -static inline void set_pcppage_migratetype(struct page *page, int migratetype)
> -{
> -	page->index = migratetype;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  /*
>   * The following functions are used by the suspend/hibernate code to temporarily

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
