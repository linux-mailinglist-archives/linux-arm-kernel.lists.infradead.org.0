Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36101E248B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIiJKJi222wLB3JMgb1V5msxpybcV6RJv/MCEDX70fc=; b=DeHM3Sp8soPi04
	Ahe27l7AeicC0zHQfJRVnY4qbKUqZKpwAlBpZg40ocby0nD6yY1FkADOSxuaEj0UB674taYTE9wm2
	iGrsYl1hGK0YT2QSQA1ghekBf9QRf4m4dvaS2tkrYbanYDic80smxA86jRfSG6jI8im693xxnssMy
	3vBnmTX3QQ9t2Rk59bBrywXF9lSnekDMCx+oup0l+MEEZWDdKDkU5YYTV9jCPIWqIZuhPtdRCzFdv
	KWLZSIW/BTfJsxg/Q71FNOcpUZPhiQDDn2LeH4c+NKDvBg3sLSqhgbUSAjNglm22Pbd4P6mhxdzvN
	zPg0TULrJ8aLtNFxCJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdawx-0000mt-63; Tue, 26 May 2020 14:53:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdawl-0000mR-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:52:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D055F30E;
 Tue, 26 May 2020 07:52:50 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BE253F7C3;
 Tue, 26 May 2020 07:52:47 -0700 (PDT)
Date: Tue, 26 May 2020 15:52:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
Message-ID: <20200526145244.GG17051@gaia>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-6-yezhenyu2@huawei.com>
 <20200522154254.GD26492@gaia>
 <ddba6d98-29b5-0748-ba74-ec022f509270@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddba6d98-29b5-0748-ba74-ec022f509270@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_075251_882477_003B7A6F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Mon, May 25, 2020 at 03:19:42PM +0800, Zhenyu Ye wrote:
> On 2020/5/22 23:42, Catalin Marinas wrote:
> > On Thu, Apr 23, 2020 at 09:56:55PM +0800, Zhenyu Ye wrote:
> >> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
> >> index 3d7c01e76efc..3eff199d3507 100644
> >> --- a/mm/pgtable-generic.c
> >> +++ b/mm/pgtable-generic.c
> >> @@ -101,6 +101,28 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
> >>  
> >>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
> >>  
> >> +#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
> >> +
> >> +#define FLUSH_Pxx_TLB_RANGE(_pxx)					\
> >> +void flush_##_pxx##_tlb_range(struct vm_area_struct *vma,		\
> >> +			      unsigned long addr, unsigned long end)	\
> >> +{									\
> >> +		struct mmu_gather tlb;					\
> >> +									\
> >> +		tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);		\
> >> +		tlb_start_vma(&tlb, vma);				\
> >> +		tlb_flush_##_pxx##_range(&tlb, addr, end - addr);	\
> >> +		tlb_end_vma(&tlb, vma);					\
> >> +		tlb_finish_mmu(&tlb, addr, end);			\
> >> +}
> > 
> > I may have confused myself (flush_p??_tlb_* vs. tlb_flush_p??_*) but do
> > actually need this whole tlb_gather thing here? IIUC (by grep'ing),
> > flush_p?d_tlb_range() is only called on huge pages, so we should know
> > the level already.
> 
> tlb_flush_##_pxx##_range() is used to set tlb->cleared_*,
> flush_##_pxx##_tlb_range() will actually flush the TLB entry.
> 
> In arch64, tlb_flush_p?d_range() is defined as:
> 
> 	#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
> 	#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)

Currently, flush_p??_tlb_range() are generic and defined as above. I
think in the generic code they can remain an alias for
flush_tlb_range().

On arm64, we can redefine them as:

#define flush_pte_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 3)
#define flush_pmd_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 2)
#define flush_pud_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 1)
#define flush_p4d_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 0)

(unless the compiler optimises away all the mmu_gather stuff in your
macro above but they don't look trivial to me)

Also, I don't see the new flush_pte_* and flush_p4d_* macros used
anywhere and I don't think they are needed. The pte equivalent is
flush_tlb_page() (we need to make sure it's not used on a pmd in the
hugetlb context).

> So even if we know the level here, we can not pass the value to tlbi
> instructions (flush_tlb_range() is a common kernel interface and retro-fit it
> needs lots of changes), according to Peter's suggestion, I finally decide to
> pass the value of TTL by the tlb_gather_* frame.[1]

My comment was about the generic implementation using mmu_gather as you
are proposing. We don't need to change the flush_tlb_range() interface,
nor do we need to rewrite flush_p??_tlb_range().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
