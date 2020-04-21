Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4971B2950
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYOPXmyBMbtYRb51QOrZfb7ewfa9iWsxuuu8Y/1AO/k=; b=O3GN1jtTrin76h
	dm7kb40QJB5WytAjMp6sYRww22Q2xaoJo/074sQRi7KQs8TE7QBoZiNFGvujoeUegcrhMSirTnvl/
	Fgdp1PvKwIB0hVLU9l+udvOgSygF32xgWDVN/cAGN0ouyCqHScBMtCY0J8wzHCtLrJ+pC/5uLLcnL
	LPnr36nItjaRQADaGJslj96I6YiPS+dDxtYpFJPKfwgv610ih4mwTOdNomp1P3P39zEP4/3rOmax5
	Y3r0rVRwIMFq30AVwqfh63OCeYTSBg+Se/jcUW2ET2942EGr64pDNdDbII0gv/Xtqe+ACdvAYv6Ju
	rqZhQjaH6veYrQmAUqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtkP-0001XM-02; Tue, 21 Apr 2020 14:19:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtk4-0001QR-Up
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:19:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 37F28F4CD612CA17545A;
 Tue, 21 Apr 2020 22:19:09 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Tue, 21 Apr 2020
 22:18:59 +0800
Subject: Re: [PATCH v1 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
To: Peter Zijlstra <peterz@infradead.org>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-6-yezhenyu2@huawei.com>
 <20200420120916.GE20696@hirez.programming.kicks-ass.net>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <8f6e877c-1462-441b-23ec-2a6bd3308099@huawei.com>
Date: Tue, 21 Apr 2020 22:18:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200420120916.GE20696@hirez.programming.kicks-ass.net>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071917_184153_E6D4C373 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Peter,

On 2020/4/20 20:09, Peter Zijlstra wrote:
> On Fri, Apr 03, 2020 at 05:00:47PM +0800, Zhenyu Ye wrote:
>> This patch provides flush_{pte|pmd|pud|p4d}_tlb_range() in generic
>> code, which are expressed through the mmu_gather APIs.  These
>> interface set tlb->cleared_* and finally call tlb_flush(), so we
>> can do the tlb invalidation according to the information in
>> struct mmu_gather.
>>
>> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
>> ---
>>  include/asm-generic/pgtable.h | 12 +++++++--
>>  mm/pgtable-generic.c          | 50 +++++++++++++++++++++++++++++++++++
>>  2 files changed, 60 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
>> index e2e2bef07dd2..2bedeee94131 100644
>> --- a/include/asm-generic/pgtable.h
>> +++ b/include/asm-generic/pgtable.h
>> @@ -1160,11 +1160,19 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
>>   * invalidate the entire TLB which is not desitable.
>>   * e.g. see arch/arc: flush_pmd_tlb_range
>>   */
>> -#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>> -#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>> +extern void flush_pte_tlb_range(struct vm_area_struct *vma,
>> +				unsigned long addr, unsigned long end);
>> +extern void flush_pmd_tlb_range(struct vm_area_struct *vma,
>> +				unsigned long addr, unsigned long end);
>> +extern void flush_pud_tlb_range(struct vm_area_struct *vma,
>> +				unsigned long addr, unsigned long end);
>> +extern void flush_p4d_tlb_range(struct vm_area_struct *vma,
>> +				unsigned long addr, unsigned long end);
>>  #else
>> +#define flush_pte_tlb_range(vma, addr, end)	BUILD_BUG()
>>  #define flush_pmd_tlb_range(vma, addr, end)	BUILD_BUG()
>>  #define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
>> +#define flush_p4d_tlb_range(vma, addr, end)	BUILD_BUG()
>>  #endif
>>  #endif
> 
> Ideally you'd make __HAVE_ARCH_FLUSH_PMD_TLB_RANGE go away. Power
> certainly doesnt need it with the below.
> 

However, arch `arc` also uses __HAVE_ARCH_FLUSH_PMD_TLB_RANGE :

grep -nr __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
	mm/pgtable-generic.c:104:#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
	mm/pgtable-generic.c:152:#endif /* __HAVE_ARCH_FLUSH_PMD_TLB_RANGE */
	include/asm-generic/pgtable.h:1153:#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
	arch/powerpc/include/asm/book3s/64/tlbflush.h:49:#define __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
	arch/arc/include/asm/hugepage.h:69:#define __HAVE_ARCH_FLUSH_PMD_TLB_RANGE

So I am not sure if we can remove it.

And if we remove the __HAVE_ARCH_FLUSH_PMD_TLB_RANGE, how to ensure not
redefine flush_pXX_tlb_range() ?

>> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
>> index 3d7c01e76efc..0f5414a4a2ec 100644
>> --- a/mm/pgtable-generic.c
>> +++ b/mm/pgtable-generic.c
>> @@ -101,6 +101,56 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
>>  
>>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>  
>> +#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
>> +void flush_pte_tlb_range(struct vm_area_struct *vma,
>> +			 unsigned long addr, unsigned long end)
>> +{
>> +	struct mmu_gather tlb;
>> +
>> +	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
>> +	tlb_start_vma(&tlb, vma);
>> +	tlb_set_pte_range(&tlb, addr, end - addr);
>> +	tlb_end_vma(&tlb, vma);
>> +	tlb_finish_mmu(&tlb, addr, end);
>> +}
>> +
>> +void flush_pmd_tlb_range(struct vm_area_struct *vma,
>> +			 unsigned long addr, unsigned long end)
>> +{
>> +	struct mmu_gather tlb;
>> +
>> +	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
>> +	tlb_start_vma(&tlb, vma);
>> +	tlb_set_pmd_range(&tlb, addr, end - addr);
>> +	tlb_end_vma(&tlb, vma);
>> +	tlb_finish_mmu(&tlb, addr, end);
>> +}
>> +
>> +void flush_pud_tlb_range(struct vm_area_struct *vma,
>> +			 unsigned long addr, unsigned long end)
>> +{
>> +	struct mmu_gather tlb;
>> +
>> +	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
>> +	tlb_start_vma(&tlb, vma);
>> +	tlb_set_pud_range(&tlb, addr, end - addr);
>> +	tlb_end_vma(&tlb, vma);
>> +	tlb_finish_mmu(&tlb, addr, end);
>> +}
>> +
>> +void flush_p4d_tlb_range(struct vm_area_struct *vma,
>> +			 unsigned long addr, unsigned long end)
>> +{
>> +	struct mmu_gather tlb;
>> +
>> +	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
>> +	tlb_start_vma(&tlb, vma);
>> +	tlb_set_p4d_range(&tlb, addr, end - addr);
>> +	tlb_end_vma(&tlb, vma);
>> +	tlb_finish_mmu(&tlb, addr, end);
>> +}
>> +#endif /* __HAVE_ARCH_FLUSH_PMD_TLB_RANGE */
> 
> You're nowhere near lazy enough:
> 
> #define FLUSH_Pxx_TLB_RANGE(_pxx) \
> void flush_##_pxx##_tlb_range(struct vm_area_struct *vma, \
> 			      unsigned long addr, unsigned long end) \
> { \
> 	struct mmu_gather tlb; \
> 	\
> 	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end); \
> 	tlb_start_vma(&tlb, vma); \
> 	tlb_flush_##_pxx##_range(&tlb, addr, end-addr); \
> 	tlb_end_vma(&tlb, vma); \
> 	tlb_finish_mmu(&tlb, addr, end); \
> }
> 
> FLUSH_Pxx_TLB_RANGE(pte)
> FLUSH_Pxx_TLB_RANGE(pmd)
> FLUSH_Pxx_TLB_RANGE(pud)
> FLUSH_Pxx_TLB_RANGE(p4d)
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
