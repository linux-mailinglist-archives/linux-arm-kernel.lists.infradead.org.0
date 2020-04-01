Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B243C19A7D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHA4aLBEOI1ct3ATrfiXx0/sixE1hrqxvU79gLu8nSw=; b=uwcCWeLjh15fPH
	+4D2vbUpdIJlbtZI09ZOpyvbRfk0Hj+ovTBowqzNpi/oXt1bzMp8XuP7k+Y5l7k696LUPCHJIIcyd
	2kpHUz8n/buFc1of4QaA/YAsXhT0Ja5p4WMYMg9e3LsaoFh+XOwnzhojkwF8HcKKuJ0xl8k1U+MUs
	eBesufIariDNmfVDK8j6I2nQaSHKQnDAZ3+EiPS+2+lHuth8WsmZf2H7TZ36E6fgRSoDCW5EFqICU
	t7zjxaux6NZRvPwcemJv1BR7F+CHflETohrn2uH8ERyum+8Ouz3d5B+m/xreF7oPOi6UweNRRz1l/
	akcLbs0r0ji4szAWlsEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZ6K-00085x-VI; Wed, 01 Apr 2020 08:51:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZ66-0007pU-SA
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:51:44 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3CB9F4174694B46C4C6F;
 Wed,  1 Apr 2020 16:51:25 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Wed, 1 Apr 2020
 16:51:17 +0800
Subject: Re: [RFC PATCH v5 4/8] mm: tlb: Pass struct mmu_gather to
 flush_pmd_tlb_range
To: Peter Zijlstra <peterz@infradead.org>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
 <20200331142927.1237-5-yezhenyu2@huawei.com>
 <20200331151331.GS20730@hirez.programming.kicks-ass.net>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <fe12101e-8efe-22ad-0258-e6aeafc798cc@huawei.com>
Date: Wed, 1 Apr 2020 16:51:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200331151331.GS20730@hirez.programming.kicks-ass.net>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015143_122677_7D774C55 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, corbet@lwn.net, maz@kernel.org, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, tony.luck@intel.com, vgupta@synopsys.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 2020/3/31 23:13, Peter Zijlstra wrote:
> On Tue, Mar 31, 2020 at 10:29:23PM +0800, Zhenyu Ye wrote:
>> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
>> index e2e2bef07dd2..32d4661e5a56 100644
>> --- a/include/asm-generic/pgtable.h
>> +++ b/include/asm-generic/pgtable.h
>> @@ -1160,10 +1160,10 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
>>   * invalidate the entire TLB which is not desitable.
>>   * e.g. see arch/arc: flush_pmd_tlb_range
>>   */
>> -#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>> +#define flush_pmd_tlb_range(tlb, vma, addr, end)	flush_tlb_range(vma, addr, end)
>>  #define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>>  #else
>> -#define flush_pmd_tlb_range(vma, addr, end)	BUILD_BUG()
>> +#define flush_pmd_tlb_range(tlb, vma, addr, end)	BUILD_BUG()
>>  #define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
>>  #endif
>>  #endif
>> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
>> index 3d7c01e76efc..96c9cf77bfb5 100644
>> --- a/mm/pgtable-generic.c
>> +++ b/mm/pgtable-generic.c
>> @@ -109,8 +109,14 @@ int pmdp_set_access_flags(struct vm_area_struct *vma,
>>  	int changed = !pmd_same(*pmdp, entry);
>>  	VM_BUG_ON(address & ~HPAGE_PMD_MASK);
>>  	if (changed) {
>> +		struct mmu_gather tlb;
>> +		unsigned long tlb_start = address;
>> +		unsigned long tlb_end = address + HPAGE_PMD_SIZE;
>>  		set_pmd_at(vma->vm_mm, address, pmdp, entry);
>> -		flush_pmd_tlb_range(vma, address, address + HPAGE_PMD_SIZE);
>> +		tlb_gather_mmu(&tlb, vma->vm_mm, tlb_start, tlb_end);
>> +		tlb.cleared_pmds = 1;
>> +		flush_pmd_tlb_range(&tlb, vma, tlb_start, tlb_end);
>> +		tlb_finish_mmu(&tlb, tlb_start, tlb_end);
>>  	}
>>  	return changed;
>>  }
> 
> This is madness. Please, carefully consider what you just wrote and what
> it will do in the generic case.
> 
> Instead of trying to retro-fit flush_*tlb_range() to take an mmu_gather
> parameter, please replace them out-right.
> 

I'm sorry that I'm not sure what "replace them out-right" means.  Do you
mean that I should define flush_*_tlb_range like this?

#define flush_pmd_tlb_range(vma, addr, end)				\
	do {								\
		struct mmu_gather tlb;					\
		tlb_gather_mmu(&tlb, (vma)->vm_mm, addr, end);		\
		tlba.cleared_pmds = 1;					\
		flush_tlb_range(&tlb, vma, addr, end);			\
		tlb_finish_mmu(&tlb, addr, end);			\
	} while (0)


Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
