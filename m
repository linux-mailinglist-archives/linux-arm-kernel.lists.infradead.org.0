Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042E41DEC52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne/zz3mAVxzHObg2YYFzqV7ZfbdbrulLy/9OEhznJHQ=; b=sbCQICTTy8GXpe
	EBI4g7UWa7fQBwvGLqUyY3ZeKXj3/hpwnye1XLrzq3Gc/fb8tr4vlBKfSeh2/fp+Vd9KhdcAzOXyX
	+/6rETBJu7pALg87XJVIrbI3na8/2mJ32oj9lA4bhQFaSGdNaTf6qxA6YjsdXBevD8TnJpkkYL5rr
	2dp7MThxW+o7/xEMJx19/LjzgjuVKGXZbhTAG/4d0fVHftD84b8g3IFse67deNkEzmv0yAHI5/2E7
	RkVX2XNXforQEJhtkWCRiZOSSGA0UJvFCEXu0Vk34lvzBDuuGzu7EqnUefJP95oQUpTCxPlLx//bk
	kXyKr4fAnSdFhqgrrzNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9pP-0003JN-HE; Fri, 22 May 2020 15:43:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9pG-0003In-Bh
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:43:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B4E555D;
 Fri, 22 May 2020 08:43:08 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 901663F305;
 Fri, 22 May 2020 08:43:00 -0700 (PDT)
Date: Fri, 22 May 2020 16:42:55 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
Message-ID: <20200522154254.GD26492@gaia>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-6-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423135656.2712-6-yezhenyu2@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_084310_442723_376F143D 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, peterz@infradead.org, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, aneesh.kumar@linux.ibm.com, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org, maz@kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 09:56:55PM +0800, Zhenyu Ye wrote:
> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
> index 3d7c01e76efc..3eff199d3507 100644
> --- a/mm/pgtable-generic.c
> +++ b/mm/pgtable-generic.c
> @@ -101,6 +101,28 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
>  
>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>  
> +#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
> +
> +#define FLUSH_Pxx_TLB_RANGE(_pxx)					\
> +void flush_##_pxx##_tlb_range(struct vm_area_struct *vma,		\
> +			      unsigned long addr, unsigned long end)	\
> +{									\
> +		struct mmu_gather tlb;					\
> +									\
> +		tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);		\
> +		tlb_start_vma(&tlb, vma);				\
> +		tlb_flush_##_pxx##_range(&tlb, addr, end - addr);	\
> +		tlb_end_vma(&tlb, vma);					\
> +		tlb_finish_mmu(&tlb, addr, end);			\
> +}

I may have confused myself (flush_p??_tlb_* vs. tlb_flush_p??_*) but do
actually need this whole tlb_gather thing here? IIUC (by grep'ing),
flush_p?d_tlb_range() is only called on huge pages, so we should know
the level already.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
