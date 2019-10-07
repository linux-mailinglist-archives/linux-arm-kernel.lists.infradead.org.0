Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9A4CE8FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5Trx0wZjgUzMHzdojAZwozSXTxNBxEX08wV9BQZjqA=; b=eFxrFchq2P1v1a
	I7ASWiS0TaFZ+E0hiUOz0EB65gTxFr2xK0y9V/ww3LBRHbOHDq71x2kBJTsUI0nM76xAXL0vbb1DJ
	sHT+eOMqjOm/Q5LAUDlpDdAAlhjOVPl0gd6N5VlcprYmD6jDMxnmGhFWEUKFVYmAmd0Y7aMQexE8Z
	iiClk3wCci3WI4v4ReSqfoeocg6zZ0KAHYK+KWdTdjK5BfJ9JwRofUvTT0DnC6/N0JIBSy/6vGcQa
	vxKxh+hcn6BCh+xOoMjmb65NQOFS7bZ46uB9/6v/JfHo7jeCJGkp4RAqwOdeb+si8kax4Dxd7j01o
	iavfVqavX6LGcOXVa2pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVkY-0002Fd-Ir; Mon, 07 Oct 2019 16:20:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVkR-0002FD-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:20:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2548142F;
 Mon,  7 Oct 2019 09:20:34 -0700 (PDT)
Received: from [10.1.197.21] (unknown [10.1.197.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EFC43F68E;
 Mon,  7 Oct 2019 09:20:32 -0700 (PDT)
Subject: Re: [PATCH v11 14/22] mm: pagewalk: Add 'depth' parameter to pte_hole
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20191007153822.16518-1-steven.price@arm.com>
 <20191007153822.16518-15-steven.price@arm.com>
 <20191007161049.GA13229@ziepe.ca>
From: Steven Price <steven.price@arm.com>
Message-ID: <6e570d6d-b29f-f4cb-1eb9-6ff6cab15a2e@arm.com>
Date: Mon, 7 Oct 2019 17:20:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191007161049.GA13229@ziepe.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_092035_620437_08B58882 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/10/2019 17:10, Jason Gunthorpe wrote:
> On Mon, Oct 07, 2019 at 04:38:14PM +0100, Steven Price wrote:
>> diff --git a/mm/hmm.c b/mm/hmm.c
>> index 902f5fa6bf93..34fe904dd417 100644
>> +++ b/mm/hmm.c
>> @@ -376,7 +376,7 @@ static void hmm_range_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
>>  }
>>  
>>  static int hmm_vma_walk_hole(unsigned long addr, unsigned long end,
>> -			     struct mm_walk *walk)
>> +			     __always_unused int depth, struct mm_walk *walk)
> 
> It this __always_unused on function arguments something we are doing
> now?

$ git grep __always_unused | wc -l
191

It's elsewhere in the kernel tree. It seems like a good way of both
documenting and silencing compiler warnings. But I'm open to other
suggestions.

> Can we have negative depth? Should it be unsigned?

As per the documentation added in this patch:

 * @pte_hole:	if set, called for each hole at all levels,
 *		depth is -1 if not known, 0:PGD, 1:P4D, 2:PUD, 3:PMD
 *		4:PTE. Any folded depths (where PTRS_PER_P?D is equal
 *		to 1) are skipped.

So it's signed to allow "-1" in the cases where pte_hole is called
without knowing the actual depth. This is used in the function
walk_page_test() because it don't walk the actual page tables, but is
called on a VMA instead. This means that there may not be a single depth
for the range provided.

Steve

>>  {
>>  	struct hmm_vma_walk *hmm_vma_walk = walk->private;
>>  	struct hmm_range *range = hmm_vma_walk->range;
>> @@ -564,7 +564,7 @@ static int hmm_vma_walk_pmd(pmd_t *pmdp,
>>  again:
>>  	pmd = READ_ONCE(*pmdp);
>>  	if (pmd_none(pmd))
>> -		return hmm_vma_walk_hole(start, end, walk);
>> +		return hmm_vma_walk_hole(start, end, 0, walk);
>>  
>>  	if (thp_migration_supported() && is_pmd_migration_entry(pmd)) {
>>  		bool fault, write_fault;
>> @@ -666,7 +666,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>>  again:
>>  	pud = READ_ONCE(*pudp);
>>  	if (pud_none(pud))
>> -		return hmm_vma_walk_hole(start, end, walk);
>> +		return hmm_vma_walk_hole(start, end, 0, walk);
>>  
>>  	if (pud_huge(pud) && pud_devmap(pud)) {
>>  		unsigned long i, npages, pfn;
>> @@ -674,7 +674,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>>  		bool fault, write_fault;
>>  
>>  		if (!pud_present(pud))
>> -			return hmm_vma_walk_hole(start, end, walk);
>> +			return hmm_vma_walk_hole(start, end, 0, walk);
>>  
>>  		i = (addr - range->start) >> PAGE_SHIFT;
>>  		npages = (end - addr) >> PAGE_SHIFT;
> 
> Otherwise this mechanical change to hmm.c looks OK to me
> 
> Jason
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
