Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE61E07AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 09:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRYmbifDqygwZxBSwrF7oUrhiF32JOJ4WVhk16qAAV0=; b=SeR+4lsDrn0oHN
	clROSMrv4xN/akDnHaznk1ti/45DvZTRD1oUxZkYWSy549q2rZ0aeMm8FqTmNTMIvQJCfKPTtDGSo
	mMIb8KtedcOul8a4sSY37qSdbBpThwsUvPsJW096AjeLAO7rhlJI4hArnJfqEuzq1vGKMKOKhfzOy
	I52Ftu0FbM+C1YJW0IVYHnRpz9JVNbIGySttxHojMsW1E1SM+/0mx4aawkohkxItcuqBgkiQG1SkD
	WsreeTleTlKUasc4ka3laZ7h3EldVEAWWM7X2GqhfdQ/XC5K2qzskDG2L7ISSoi6rBZBlZvTNA/M+
	3GbYpEFgU9qLVG8WRxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7PG-00033u-7u; Mon, 25 May 2020 07:20:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7Oy-0002eC-IH
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 07:20:02 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9EC1B2FB3E70016EC513;
 Mon, 25 May 2020 15:19:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 25 May 2020
 15:19:44 +0800
Subject: Re: [PATCH v2 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-6-yezhenyu2@huawei.com> <20200522154254.GD26492@gaia>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <ddba6d98-29b5-0748-ba74-ec022f509270@huawei.com>
Date: Mon, 25 May 2020 15:19:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200522154254.GD26492@gaia>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_002000_773898_DBB2541E 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 2020/5/22 23:42, Catalin Marinas wrote:
> On Thu, Apr 23, 2020 at 09:56:55PM +0800, Zhenyu Ye wrote:
>> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
>> index 3d7c01e76efc..3eff199d3507 100644
>> --- a/mm/pgtable-generic.c
>> +++ b/mm/pgtable-generic.c
>> @@ -101,6 +101,28 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
>>  
>>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>  
>> +#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
>> +
>> +#define FLUSH_Pxx_TLB_RANGE(_pxx)					\
>> +void flush_##_pxx##_tlb_range(struct vm_area_struct *vma,		\
>> +			      unsigned long addr, unsigned long end)	\
>> +{									\
>> +		struct mmu_gather tlb;					\
>> +									\
>> +		tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);		\
>> +		tlb_start_vma(&tlb, vma);				\
>> +		tlb_flush_##_pxx##_range(&tlb, addr, end - addr);	\
>> +		tlb_end_vma(&tlb, vma);					\
>> +		tlb_finish_mmu(&tlb, addr, end);			\
>> +}
> 
> I may have confused myself (flush_p??_tlb_* vs. tlb_flush_p??_*) but do
> actually need this whole tlb_gather thing here? IIUC (by grep'ing),
> flush_p?d_tlb_range() is only called on huge pages, so we should know
> the level already.
> 

tlb_flush_##_pxx##_range() is used to set tlb->cleared_*,
flush_##_pxx##_tlb_range() will actually flush the TLB entry.

In arch64, tlb_flush_p?d_range() is defined as:

	#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
	#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)

So even if we know the level here, we can not pass the value to tlbi
instructions (flush_tlb_range() is a common kernel interface and retro-fit it
needs lots of changes), according to Peter's suggestion, I finally decide to
pass the value of TTL by the tlb_gather_* frame.[1]

[1] https://lore.kernel.org/linux-arm-kernel/20200331142927.1237-1-yezhenyu2@huawei.com/

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
