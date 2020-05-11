Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF681CD087
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 06:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8j3JffqYC7b1qqXvtgysSSvvA26KXrfCMfmHlVbfEk=; b=npnqsja+F16KnF
	fFtUh91E6C0f2bZokhocFN0aewBFpG4+pKlWxc7RHiF3hpTAujrN/s4EmkZ+BpyIr9JV9vKJ5NzRs
	RLOfeNsMvynvHdxVaHlyZUxg20CcLOhsQE+uN6f7I9d3Z9qx2nzqpk4nNALtV2bHKiW0vDXgJMiFM
	E9g9lZG05A8Elw+cwLHWqK+JDG/j1mAMDEJZ5ZdvaLLEjFNbtUUOlXKA5oaK3v6OKxpRsYOgCM+lm
	wCpCJJD/wY76hIkAH3rn0QJD2y2MxMCwrAFCD4aa1XnV+2UaE965Q6HjNPJfkbJrPT8QTtBEosyP6
	xubWeZN2qoPIWob/k0FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXzed-0004YX-1N; Mon, 11 May 2020 04:02:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXzeV-0004Y6-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 04:02:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F047D6E;
 Sun, 10 May 2020 21:02:49 -0700 (PDT)
Received: from [10.163.72.179] (unknown [10.163.72.179])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1448C3F71E;
 Sun, 10 May 2020 21:02:46 -0700 (PDT)
Subject: Re: [PATCH V3 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 akpm@linux-foundation.org
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
 <1588907271-11920-2-git-send-email-anshuman.khandual@arm.com>
 <7db44202-0d21-d8fb-6998-0210508a488a@oracle.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <19ffbe33-3a42-6d90-6c48-19645a898383@arm.com>
Date: Mon, 11 May 2020 09:32:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <7db44202-0d21-d8fb-6998-0210508a488a@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_210251_572786_BCF665A4 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/09/2020 03:39 AM, Mike Kravetz wrote:
> On 5/7/20 8:07 PM, Anshuman Khandual wrote:
>> Platform specific huge_ptep_get() is required only when fetching the huge
>> PTE involves more than just dereferencing the page table pointer. This is
>> not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
>> with it's __HAVE_ARCH_HUGE_PTEP_GET subscription. Before that, it updates
>> the generic huge_ptep_get() with READ_ONCE() which will prevent known page
>> table issues with THP on arm64.
>>
>> https://lore.kernel.org/r/1506527369-19535-1-git-send-email-will.deacon@arm.com/
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-mm@kvack.org
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/include/asm/hugetlb.h | 6 ------
>>  include/asm-generic/hugetlb.h    | 2 +-
>>  2 files changed, 1 insertion(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
>> index 2eb6c234d594..b88878ddc88b 100644
>> --- a/arch/arm64/include/asm/hugetlb.h
>> +++ b/arch/arm64/include/asm/hugetlb.h
>> @@ -17,12 +17,6 @@
>>  extern bool arch_hugetlb_migration_supported(struct hstate *h);
>>  #endif
>>  
>> -#define __HAVE_ARCH_HUGE_PTEP_GET
>> -static inline pte_t huge_ptep_get(pte_t *ptep)
>> -{
>> -	return READ_ONCE(*ptep);
>> -}
>> -
>>  static inline int is_hugepage_only_range(struct mm_struct *mm,
>>  					 unsigned long addr, unsigned long len)
>>  {
>> diff --git a/include/asm-generic/hugetlb.h b/include/asm-generic/hugetlb.h
>> index 822f433ac95c..40f85decc2ee 100644
>> --- a/include/asm-generic/hugetlb.h
>> +++ b/include/asm-generic/hugetlb.h
>> @@ -122,7 +122,7 @@ static inline int huge_ptep_set_access_flags(struct vm_area_struct *vma,
>>  #ifndef __HAVE_ARCH_HUGE_PTEP_GET
>>  static inline pte_t huge_ptep_get(pte_t *ptep)
>>  {
>> -	return *ptep;
>> +	return READ_ONCE(*ptep);
>>  }
>>  #endif
> 
> I know you made this change in response to Will's comment.  And, since
> changes were made to consistently use READ_ONCE in arm64 code, it makes
> sense for that architecture.
> 
> However, with this change to generic code, you introduce READ_ONCE to
> other architectures where it was not used before.  Could this possibly
> introduce inconsistencies in their use of READ_ONCE?  To be honest, I
> am not very good at identifying any possible issues this could cause.
> However, it does seem possible.

Could you please give some more details. Is there any particular problem
which might be caused by this new READ_ONCE() here, that you you are
concerned about. READ_ONCE() is already getting used in multiple places
in core MM which can not be configured out (like mm/gup.c). It is getting
used in core HugeTLB (mm/hugetlb.c) as well. AFAICS, there is no standard
for using READ_ONCE() while walking page tables entries. We have examples
in core MM for both ways.

> 
> Will was nervous about dropping this from arm64.  I'm just a little nervous
> about adding it to other architectures.
> 
AFAICS, __HAVE_ARCH_HUGE_PTEP_GET should be used on a platform only when
a HugeTLB entry could not constructed by dereferencing a page table entry
as in the case with ARM (32 bit). Using READ_ONCE() while dereferencing is
really not a special case that will need __HAVE_ARCH_HUGE_PTEP_GET. Moving
READ_ONCE() into generic definition solves the problem while also taking
care of a known problem on arm64. IMHO, it seems like the right thing to
do unless there is another problem that pops up some where else because of
READ_ONCE().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
