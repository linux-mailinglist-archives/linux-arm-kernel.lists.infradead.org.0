Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B079D754F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fUuSLt9UgF1l0OucV5WhU6fMVpP3iTip2AlP7FqSZEI=; b=Ar8GYjQ8jZHcj4tJzzqfJVpY5
	r6fo3fzLAwlIpr26kY7xgcDoI/e5dHMFD29ATQ1e+1OBEEqwYjuVYnFjz4bnylhOyOMLWp/mvfXbD
	DtyW4T3lBFHfrwZRrfU/1Kd2d7Yc7tqU9PEBemywsPIQDpbzqDspg6+HjUYaDtgDwjgaX2S2y2WOj
	YiMXpr5gwlgF0brFVqUuEP/tmRnSyoDprqqF09kRPMxqlZhRf4ZtrIhg+BUWNK6F54BrWn/fkV1pm
	3D4jygUIg1a+95K45ILJUG52q+NW+cukb/E1GbBLCuB4TiiMVXnAhQgPpbG8yEsgK0NTO/UU5l7zD
	Gl4IhQEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLDf-0000Wx-78; Tue, 15 Oct 2019 11:42:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLDU-0000WZ-Kj; Tue, 15 Oct 2019 11:42:18 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C88C110CC1F8;
 Tue, 15 Oct 2019 11:42:13 +0000 (UTC)
Received: from [10.36.116.26] (ovpn-116-26.ams2.redhat.com [10.36.116.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4AD4560127;
 Tue, 15 Oct 2019 11:42:04 +0000 (UTC)
Subject: Re: [PATCH V6 1/2] mm/page_alloc: Make alloc_gigantic_page()
 available for general use
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <9da1f196-51bd-06ac-c5dc-b55776fce2be@redhat.com>
Date: Tue, 15 Oct 2019 13:42:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 15 Oct 2019 11:42:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_044216_726012_151AAE53 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-s390@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Rientjes <rientjes@google.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Oscar Salvador <osalvador@suse.de>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.10.19 11:21, Anshuman Khandual wrote:
> alloc_gigantic_page() implements an allocation method where it scans over
> various zones looking for a large contiguous memory block which could not
> have been allocated through the buddy allocator. A subsequent patch which
> tests arch page table helpers needs such a method to allocate PUD_SIZE
> sized memory block. In the future such methods might have other use cases
> as well. So alloc_gigantic_page() has been split carving out actual memory
> allocation method and made available via new alloc_gigantic_page_order()
> which is wrapped under CONFIG_CONTIG_ALLOC.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Cc: Mike Kravetz <mike.kravetz@oracle.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Steven Price <Steven.Price@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Sri Krishna chowdary <schowdary@nvidia.com>
> Cc: Dave Hansen <dave.hansen@intel.com>
> Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: James Hogan <jhogan@kernel.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Kirill A. Shutemov <kirill@shutemov.name>
> Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
> Cc: Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Andrea Arcangeli <aarcange@redhat.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Mel Gorman <mgorman@techsingularity.net>
> Cc: linux-snps-arc@lists.infradead.org
> Cc: linux-mips@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-ia64@vger.kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-sh@vger.kernel.org
> Cc: sparclinux@vger.kernel.org
> Cc: x86@kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   include/linux/gfp.h |  3 ++
>   mm/hugetlb.c        | 76 +----------------------------------
>   mm/page_alloc.c     | 98 +++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 102 insertions(+), 75 deletions(-)
> 
> diff --git a/include/linux/gfp.h b/include/linux/gfp.h
> index fb07b503dc45..379ad23437d1 100644
> --- a/include/linux/gfp.h
> +++ b/include/linux/gfp.h
> @@ -589,6 +589,9 @@ static inline bool pm_suspended_storage(void)
>   /* The below functions must be run on a range from a single zone. */
>   extern int alloc_contig_range(unsigned long start, unsigned long end,
>   			      unsigned migratetype, gfp_t gfp_mask);
> +extern struct page *alloc_gigantic_page_order(unsigned int order,
> +					      gfp_t gfp_mask, int nid,
> +					      nodemask_t *nodemask);
>   #endif
>   void free_contig_range(unsigned long pfn, unsigned int nr_pages);
>   
> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index 977f9a323a7a..d199556a4a2c 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c
> @@ -1023,86 +1023,12 @@ static void free_gigantic_page(struct page *page, unsigned int order)
>   }
>   
>   #ifdef CONFIG_CONTIG_ALLOC
> -static int __alloc_gigantic_page(unsigned long start_pfn,
> -				unsigned long nr_pages, gfp_t gfp_mask)
> -{
> -	unsigned long end_pfn = start_pfn + nr_pages;
> -	return alloc_contig_range(start_pfn, end_pfn, MIGRATE_MOVABLE,
> -				  gfp_mask);
> -}
> -
> -static bool pfn_range_valid_gigantic(struct zone *z,
> -			unsigned long start_pfn, unsigned long nr_pages)
> -{
> -	unsigned long i, end_pfn = start_pfn + nr_pages;
> -	struct page *page;
> -
> -	for (i = start_pfn; i < end_pfn; i++) {
> -		if (!pfn_valid(i))
> -			return false;
> -
> -		page = pfn_to_page(i);

Am I missing something or should here really be a pfn_to_online_page() 
here instead of a pfn_valid() ?


-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
