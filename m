Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11AC192210
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+n2gTZfUeiJoNFmU16QLIberEOaPQs3Wy/EWDHrxM8=; b=AiveyrwufD1YVY
	W2sqCKiSqMvxehIK0CMoDjnB/o8p4LpEYbezv+IxYt8VFpNz8icFvl8Azef1N3FRjIfbWiIv5fpAp
	2mOJ+QAveBPG8H0GQt2oJ67hKcq1KTPSXAUZzuLyulLMxMvkJHP1D2DWOj2ntUwB0PdHIdHZ2eiVO
	4Jt7bdI6SKun9cY3Y7QUzx114AADSI9prTJKZkpeYQq25qvxAAgjRwZhaloeiqJhIAGSz00kjK8tI
	RjoitfryuHLvXCWQk98rPWPIdZj1hzIc1m/xgWpdRjvxb0wyhgTFGtkbw3MTYxTbac17prDgLbHg3
	PZxNnBsACuDu/EqPfiiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH0xs-0006vy-KS; Wed, 25 Mar 2020 08:00:40 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH0xk-0006vO-2c
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:00:33 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 47CDD2D11161DABE2D8E;
 Wed, 25 Mar 2020 16:00:28 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 16:00:21 +0800
Subject: Re: [RFC PATCH v4 5/6] arm64: tlb: Use translation level hint in
 vm_flags
To: Marc Zyngier <maz@kernel.org>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-6-yezhenyu2@huawei.com> <20200324144514.340c78d9@why>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <986be927-02c6-3cc2-ca39-30ccad60eae0@huawei.com>
Date: Wed, 25 Mar 2020 16:00:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200324144514.340c78d9@why>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_010032_299396_8F079049 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, aneesh.kumar@linux.ibm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, rostedt@goodmis.org, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Thanks for your review.

On 2020/3/24 22:45, Marc Zyngier wrote:
> On Tue, 24 Mar 2020 21:45:33 +0800
> Zhenyu Ye <yezhenyu2@huawei.com> wrote:
> 
>> This patch used the VM_LEVEL flags in vma->vm_flags to set the
>> TTL field in tlbi instruction.
>>
>> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
>> ---
>>  arch/arm64/include/asm/mmu.h      |  2 ++
>>  arch/arm64/include/asm/tlbflush.h | 14 ++++++++------
>>  arch/arm64/mm/mmu.c               | 14 ++++++++++++++
>>  3 files changed, 24 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
>> index d79ce6df9e12..a8b8824a7405 100644
>> --- a/arch/arm64/include/asm/mmu.h
>> +++ b/arch/arm64/include/asm/mmu.h
>> @@ -86,6 +86,8 @@ extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
>>  extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
>>  extern void mark_linear_text_alias_ro(void);
>>  extern bool kaslr_requires_kpti(void);
>> +extern unsigned int get_vma_level(struct vm_area_struct *vma);
>> +
>>  
>>  #define INIT_MM_CONTEXT(name)	\
>>  	.pgd = init_pg_dir,
>> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
>> index d141c080e494..93bb09fdfafd 100644
>> --- a/arch/arm64/include/asm/tlbflush.h
>> +++ b/arch/arm64/include/asm/tlbflush.h
>> @@ -218,10 +218,11 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
>>  					 unsigned long uaddr)
>>  {
>>  	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
>> +	unsigned int level = get_vma_level(vma);
>>  
>>  	dsb(ishst);
>> -	__tlbi_level(vale1is, addr, 0);
>> -	__tlbi_user_level(vale1is, addr, 0);
>> +	__tlbi_level(vale1is, addr, level);
>> +	__tlbi_user_level(vale1is, addr, level);
>>  }
>>  
>>  static inline void flush_tlb_page(struct vm_area_struct *vma,
>> @@ -242,6 +243,7 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>>  				     unsigned long stride, bool last_level)
>>  {
>>  	unsigned long asid = ASID(vma->vm_mm);
>> +	unsigned int level = get_vma_level(vma);
>>  	unsigned long addr;
>>  
>>  	start = round_down(start, stride);
>> @@ -261,11 +263,11 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>>  	dsb(ishst);
>>  	for (addr = start; addr < end; addr += stride) {
>>  		if (last_level) {
>> -			__tlbi_level(vale1is, addr, 0);
>> -			__tlbi_user_level(vale1is, addr, 0);
>> +			__tlbi_level(vale1is, addr, level);
>> +			__tlbi_user_level(vale1is, addr, level);
>>  		} else {
>> -			__tlbi_level(vae1is, addr, 0);
>> -			__tlbi_user_level(vae1is, addr, 0);
>> +			__tlbi_level(vae1is, addr, level);
>> +			__tlbi_user_level(vae1is, addr, level);
>>  		}
>>  	}
>>  	dsb(ish);
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index 128f70852bf3..e6a1221cd86b 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -60,6 +60,20 @@ static pud_t bm_pud[PTRS_PER_PUD] __page_aligned_bss __maybe_unused;
>>  
>>  static DEFINE_SPINLOCK(swapper_pgdir_lock);
>>  
>> +inline unsigned int get_vma_level(struct vm_area_struct *vma)
>> +{
>> +	unsigned int level = 0;
>> +	if (vma->vm_flags & VM_LEVEL_PUD)
>> +		level = 1;
>> +	else if (vma->vm_flags & VM_LEVEL_PMD)
>> +		level = 2;
>> +	else if (vma->vm_flags & VM_LEVEL_PTE)
>> +		level = 3;
>> +
>> +	vma->vm_flags &= ~(VM_LEVEL_PUD | VM_LEVEL_PMD | VM_LEVEL_PTE);
>> +	return level;
>> +}
>> +
>>  void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
>>  {
>>  	pgd_t *fixmap_pgdp;
> 
> 
> If feels bizarre a TLBI is now a destructive operation: you've lost the
> flags by having cleared them. Even if that's not really a problem in
> practice (you issue TLBI because you've unmapped the VMA), it remains
> that the act of invalidating TLBs isn't expected to change a kernel
> structure (and I'm not even thinking about potential races here).

I cleared vm_flags here just out of caution, because every TLBI flush
action should set vm_flags themself. As I know, the TLB_LEVEL of an vma
will only be changed by transparent hugepage collapse and merge when
the page is not mapped, so there may not have potential races.

But you are right that TLBI should't change a kernel structure.
I will remove the clear action and add some notices here.

> 
> If anything, I feel this should be based around the mmu_gather
> structure, which already tracks the right level of information and
> additionally knows about the P4D level which is missing in your patches
> (even if arm64 is so far limited to 4 levels).
> 
> Thanks,
> 
> 	M.
> 

mmu_gather structure has tracked the level information, but we can only
use the info in the tlb_flush interface. If we want to use the info in
flush_tlb_range, we may should have to add a parameter to this interface,
such as:

	flush_tlb_range(vma, start, end, flags);

However, the flush_tlb_range is a common interface to all architectures,
I'm not sure if this is feasible because this feature is only supported
by ARM64 currently.

Or can we ignore the flush_tlb_range and only set the TTL field in
tlb_flush?  Waiting for your suggestion...


For P4D level, the TTL field is limited to 4 bit(2 for translation granule
and 2 for page table level), so we can no longer afford more levels :).








_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
