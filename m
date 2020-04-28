Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8791BCF02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmWr0QtBT+MQTlYWYkyMIiNhP1LGadvff9TUto5zvAY=; b=nB8OvoVrrSUmxO
	+vjZ/kwPTAXbwl9apUtulgmCsLXpP82I+Pbw47PZTgL4OOlUkJpGWkg9L9eNP0PG48+vgWg0voJkf
	tQInrsIYHoMKzRqJiJ51DH3X4NqH+23RJAOL7hzt+csQPpp/cKW5YEnZLhc4bKkVvBaiEb64cStZW
	MM25KsmoSZ12wIhRB7PDmZFMfJMUDmOGSRmTiiF5oUTfVs74opt7m3tzLf4Uosqrj2C9/8jFhRAuK
	VnOk33W1xkXEKOrRZ2OgouL3yBbVRtaeCjHh/1GTQYGe6FtZxKxwOH6Y2hhMCedWS3TviTdY7amLV
	6ee97beHDZlHPP1ZfIMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXyn-0002wU-FK; Tue, 28 Apr 2020 21:41:25 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXyc-0002uj-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:41:16 +0000
IronPort-SDR: CF1eHjuXpGJg+pDvuKnFAK5kstqrTZRSO23UhNAZwaeKl+MlKGnTSz/sJ2L30l7b9LXssvtdlL
 55/wGpzZr8TA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 14:41:09 -0700
IronPort-SDR: BmShGtgPqO6g9l9TLnBaVqT0N7A8E9oYbKUmaq7A4M6HrJ//OEDzv4VauweuunA2PtV+nzwqSv
 a6P896ZIrZdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="247825303"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2020 14:41:09 -0700
Date: Tue, 28 Apr 2020 14:41:09 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/7] mm: Document x86 uses a linked list of pgds
Message-ID: <20200428214109.GB406458@iweiny-DESK2.sc.intel.com>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428194449.22615-2-willy@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_144115_003284_B008210B 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 12:44:43PM -0700, Matthew Wilcox wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> 
> x86 uses page->lru of the pages used for pgds, but that's not immediately
> obvious to anyone looking to make changes.  Add a struct list_head to
> the union so it's clearly in use for pgds.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  include/linux/mm_types.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
> index 4aba6c0c2ba8..9bb34e2cd5a5 100644
> --- a/include/linux/mm_types.h
> +++ b/include/linux/mm_types.h
> @@ -142,8 +142,13 @@ struct page {
>  			struct list_head deferred_list;
>  		};
>  		struct {	/* Page table pages */
> -			unsigned long _pt_pad_1;	/* compound_head */
> -			pgtable_t pmd_huge_pte; /* protected by page->ptl */
> +			union {
> +				struct list_head pgd_list;	/* x86 */

Shouldn't pgd_list_{add,del}() use this list head variable instead of lru to
complete the documentation?

Probably the list iteration loops arch/x86/* as well?

Ira

> +				struct {
> +					unsigned long _pt_pad_1;
> +					pgtable_t pmd_huge_pte;
> +				};
> +			};
>  			unsigned long _pt_pad_2;	/* mapping */
>  			union {
>  				struct mm_struct *pt_mm; /* x86 pgds only */
> -- 
> 2.26.2
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
