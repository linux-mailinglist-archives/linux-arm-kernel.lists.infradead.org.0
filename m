Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24871B07FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUq3d5Bip9AZhguB+RPuSFdyjeNm4Nnp04LYVR3pq6o=; b=Xc2yiph726Y/2B
	EO+RVW3nJpWop7/Ehn5Ua+gExlx3KTCLYqDF3+e6KOzqo4R93jqSbpWcwMSRFeG0hLAEpOTslHQ9w
	2WjsK5JV8ghAQqjtNgV8CWLBsvb0B5LQ/2UvyblLJZrYwOt2VVjXlefC22pNxqSYjhf4PpGT3h9dj
	sEcACU9Xbb9H3wrlAW6wENNLNfff3gsAKXYBGiIMd9m9m6aeSHmyZOmjJdXvol+gMnob4COm4IeTb
	QfDmEORRvI/gFD2vKjdrwTa1BI7tknSo3+24qpcZIj191a4BKEFR+CpmtyL+MUUZXgl+fWPhh5wtS
	bvb5aiCjgWxpAGhgd7lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUtQ-0001sK-G7; Mon, 20 Apr 2020 11:47:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUtD-0001sB-Ab
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 Apr 2020 11:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uHONsJr4KTEbnxxWPAu0Ew27QiCD45QjANeqi0Gi8dc=; b=vTp2gHceK5xxpBGqQ42nYZb4gH
 mnA9XPuy7DRtkA60Df0jiiy97/SlJOp04WyRhiU2mpwpDKgFglWyL1et7pobaqGcOc2KccsuF2tq9
 r5lih7DbF8DvviZnMY/w5D0UBLT+IiaxgUTqMMpPkt9AjH9jrTkixQFC0wACrJMjGEk6Ypq5kXWAY
 Enrz0NYVa7bS0ZJ9fmx5Ey2JFVZ92VN3WLWH6S77jP9kly7KVGeeU0JOr2oZ6Fqbe9MjBwf988D8x
 qQdAEkIR9vO3f6xiZFwx27vF2CccaawMTkPYXmpoMSIcPYUCUC33+3xeKPy23pnPnYuuhuFETPpJ/
 j5F/QxdA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUt4-0004FH-Oq; Mon, 20 Apr 2020 11:46:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 25CFD3024EA;
 Mon, 20 Apr 2020 13:46:51 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 15FA32B8DAF8C; Mon, 20 Apr 2020 13:46:51 +0200 (CEST)
Date: Mon, 20 Apr 2020 13:46:51 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v1 4/6] tlb: mmu_gather: add tlb_set_*_range APIs
Message-ID: <20200420114651.GD20696@hirez.programming.kicks-ass.net>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-5-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403090048.938-5-yezhenyu2@huawei.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 05:00:46PM +0800, Zhenyu Ye wrote:
> From: "Peter Zijlstra (Intel)" <peterz@infradead.org>
> 
> tlb_set_{pte|pmd|pud|p4d}_range() adjust the tlb->start and
> tlb->end, then set corresponding cleared_*.
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
> ---
>  include/asm-generic/tlb.h | 55 ++++++++++++++++++++++++++++-----------
>  1 file changed, 40 insertions(+), 15 deletions(-)
> 
> diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
> index f391f6b500b4..ee91310a65c6 100644
> --- a/include/asm-generic/tlb.h
> +++ b/include/asm-generic/tlb.h
> @@ -511,6 +511,38 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
>  }
>  #endif
>  
> +/*
> + * tlb_set_{pte|pmd|pud|p4d}_range() adjust the tlb->start and tlb->end,
> + * and set corresponding cleared_*.
> + */
> +static inline void tlb_set_pte_range(struct mmu_gather *tlb,
> +				     unsigned long address, unsigned long size)
> +{
> +	__tlb_adjust_range(tlb, address, size);
> +	tlb->cleared_ptes = 1;
> +}
> +
> +static inline void tlb_set_pmd_range(struct mmu_gather *tlb,
> +				     unsigned long address, unsigned long size)
> +{
> +	__tlb_adjust_range(tlb, address, size);
> +	tlb->cleared_pmds = 1;
> +}
> +
> +static inline void tlb_set_pud_range(struct mmu_gather *tlb,
> +				     unsigned long address, unsigned long size)
> +{
> +	__tlb_adjust_range(tlb, address, size);
> +	tlb->cleared_puds = 1;
> +}
> +
> +static inline void tlb_set_p4d_range(struct mmu_gather *tlb,
> +				     unsigned long address, unsigned long size)
> +{
> +	__tlb_adjust_range(tlb, address, size);
> +	tlb->cleared_p4ds = 1;
> +}

Uhm.. when I wrote that patch they were called tlb_flush_p*_range():

  https://lkml.kernel.org/r/20200401122004.GE20713@hirez.programming.kicks-ass.net

Your current naming makes no sense what so ever, we do not "set" the
range.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
