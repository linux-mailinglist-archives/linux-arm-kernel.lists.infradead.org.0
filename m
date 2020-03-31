Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FEF198E1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q+Pu6uHm15BkVCD/pEoNfotaME00Vxo9AzNz7JSwrI=; b=lIP1BQcOUpQd6w
	K/2EJJTLAoIjkOnSIV93/gPC9oAysb3qOOfZi+HIeJcZq8L0eThTTAG8NYLe7MAXYGD0cMDBNy8NX
	f1ylov1BfmITatYiEnHGQOmTOqCpQh+SL2dGscDCp/8uhrzkuompuuyRv9mA2eXgJfB1wcb1pLhtH
	OejWtKGHq0wqP37tfuAbJSUaHx7EqTplLfLQ+iHoWqq70voEtN/u8j58oxZcjTIz1Nx0HVPABV12X
	vAFp7Z2PuVbLZ1lQjNiYhnIicCKGNCiOg7yVmu20E+N94wD0i4B8AAanjFKZjaU2cH6Hwpxi0G3sC
	nntl5xm0YOAQTb0q1R6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJC4O-0001be-9I; Tue, 31 Mar 2020 08:16:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJC4D-0001ZX-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:16:15 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F16CE5E95C5B64C7B4DB;
 Tue, 31 Mar 2020 16:16:00 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Tue, 31 Mar 2020
 16:15:51 +0800
Subject: Re: [RFC][Qusetion] the value of cleared_(ptes|pmds|puds|p4ds) in
 struct mmu_gather
To: Peter Zijlstra <peterz@infradead.org>, <schwidefsky@de.ibm.com>
References: <fbb00ac0-9104-8d25-f225-7b3d1b17a01f@huawei.com>
 <20200330121654.GL20696@hirez.programming.kicks-ass.net>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <9c75a85e-5d80-0286-1ce5-89479d49170e@huawei.com>
Date: Tue, 31 Mar 2020 16:15:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200330121654.GL20696@hirez.programming.kicks-ass.net>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_011614_030386_E49F8CB1 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, npiggin@gmail.com,
 arm@kernel.org, bp@alien8.de, xiexiangyou@huawei.com, luto@kernel.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 2020/3/30 20:16, Peter Zijlstra wrote:
> On Sat, Mar 28, 2020 at 12:30:50PM +0800, Zhenyu Ye wrote:
>> Hi all,
>>
>> commit a6d60245 "Track which levels of the page tables have been cleared"
>> added cleared_(ptes|pmds|puds|p4ds) in struct mmu_gather, and the values
>> of them are set in some places. For example:
>>
>> In include/asm-generic/tlb.h, pte_free_tlb() set the tlb->cleared_pmds:
>> ---8<---
>> #ifndef pte_free_tlb
>> #define pte_free_tlb(tlb, ptep, address)			\
>> 	do {							\
>> 		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
>> 		tlb->freed_tables = 1;				\
>> 		tlb->cleared_pmds = 1;				\
>> 		__pte_free_tlb(tlb, ptep, address);		\
>> 	} while (0)
>> #endif
>> ---8<---
>>
>>
>> However, in arch/s390/include/asm/tlb.h, pte_free_tlb() set the tlb->cleared_ptes:
>> ---8<---
>> static inline void pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
>>                                 unsigned long address)
>> {
>> 	__tlb_adjust_range(tlb, address, PAGE_SIZE);
>> 	tlb->mm->context.flush_mm = 1;
>> 	tlb->freed_tables = 1;
>> 	tlb->cleared_ptes = 1;
>> 	/*
>> 	 * page_table_free_rcu takes care of the allocation bit masks
>> 	 * of the 2K table fragments in the 4K page table page,
>> 	 * then calls tlb_remove_table.
>> 	 */
>> 	page_table_free_rcu(tlb, (unsigned long *) pte, address);
>> }
>> ---8<---
>>
>>
>> In my view, the cleared_(ptes|pmds|puds) and (pte|pmd|pud)_free_tlb
>> correspond one-to-one.  So we should set cleared_ptes in pte_free_tlb(),
>> then use it when needed.
> 
> So pte_free_tlb() clears a table of PTE entries, or a PMD level entity,
> also see free_pte_range(). So the generic code makes sense to me. The
> PTE level invalidations will have happened on tlb_remove_tlb_entry().
> 

Thanks for your explanation. I can understand now.

>> I'm very confused about this. Which is wrong? Or is there something
>> I understand wrong?
> 
> I agree the s390 case is puzzling, Martin does s390 need a PTE level
> invalidate for removing a PTE table or was this a mistake?
> 

Then we should wait for @ Martin's reply.  Though s390 has never used
this value, I think we still should correct it if this is a mistake.

Thanks,
Zhenyu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
