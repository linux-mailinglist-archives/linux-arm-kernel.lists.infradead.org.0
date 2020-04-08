Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C149B1A1DBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 11:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbeIXT9MXXOInzed/B3acxZwbrpjmdCQDJUNYP/AHWg=; b=E0jCDndizzBEUM
	LauAfyYo934fKOEF17CqZk7k0yM+eCefEuziIqnrToNVaS6o7o34O6k1qGxduP0cm87Ee6f8lSwAH
	NChBJdWeeZ+ssECNkOU1PwgkqG+ZfNM2HiGLaVDox/U2g4iZNraKcMrQ+1M4adjp1W/3/wtiyeuFB
	Rrcn4pbIxVrxBFnn7/mU2z4tvhrwxswhF8ZYZ016eMs/AiBBeLRELfIg7mA7uFHx5XVJ9eSZIPbGK
	E29EU+cSOQ7XUXVL7L/aKlFY9oPwFKW1/fsBClo1jGvBCnlAIe2WkHlxuk1IOrRItIGKJN3015kAS
	6lT2W/o0GJXy7RXJfPdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM6aa-0007wS-9y; Wed, 08 Apr 2020 09:01:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM6aJ-0007l6-3A
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 09:01:25 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 58A6D33585B02A6E0622;
 Wed,  8 Apr 2020 17:01:09 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Wed, 8 Apr 2020
 17:01:01 +0800
Subject: Re: [RFC PATCH v5 4/8] mm: tlb: Pass struct mmu_gather to
 flush_pmd_tlb_range
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: Peter Zijlstra <peterz@infradead.org>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
 <20200331142927.1237-5-yezhenyu2@huawei.com>
 <20200331151331.GS20730@hirez.programming.kicks-ass.net>
 <fe12101e-8efe-22ad-0258-e6aeafc798cc@huawei.com>
 <20200401122004.GE20713@hirez.programming.kicks-ass.net>
 <53675fb9-21c7-5309-07b8-1bbc1e775f9b@huawei.com>
 <20200402163849.GM20713@hirez.programming.kicks-ass.net>
 <d512b28f-99d3-5a26-d189-2ebac7a412c7@huawei.com>
Message-ID: <1770a141-3c97-94df-eac9-2d1f537516b1@huawei.com>
Date: Wed, 8 Apr 2020 17:00:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <d512b28f-99d3-5a26-d189-2ebac7a412c7@huawei.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_020123_321240_EF0F7524 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

On 2020/4/3 13:14, Zhenyu Ye wrote:
> Hi Peter,
> 
> On 2020/4/3 0:38, Peter Zijlstra wrote:
>> On Thu, Apr 02, 2020 at 07:24:04PM +0800, Zhenyu Ye wrote:
>>> Thanks for your detailed explanation.  I notice that you used
>>> `tlb_end_vma` replace `flush_tlb_range`, which will call `tlb_flush`,
>>> then finally call `flush_tlb_range` in generic code.  However, some
>>> architectures define tlb_end_vma|tlb_flush|flush_tlb_range themselves,
>>> so this may cause problems.
>>>
>>> For example, in s390, it defines:
>>>
>>> #define tlb_end_vma(tlb, vma)			do { } while (0)
>>>
>>> And it doesn't define it's own flush_pmd_tlb_range().  So there will be
>>> a mistake if we changed flush_pmd_tlb_range() using tlb_end_vma().
>>>
>>> Is this really a problem or something I understand wrong ?
>>
>> If tlb_end_vma() is a no-op, then tlb_finish_mmu() will do:
>> tlb_flush_mmu() -> tlb_flush_mmu_tlbonly() -> tlb_flush()
>>
>> And s390 has tlb_flush().
>>
>> If tlb_end_vma() is not a no-op and it calls tlb_flush_mmu_tlbonly(),
>> then tlb_finish_mmu()'s invocation of tlb_flush_mmu_tlbonly() will
>> terniate early due o no flags set.
>>
>> IOW, it should all just work.
>>
>>
>> FYI the whole tlb_{start,end}_vma() thing is a only needed when the
>> architecture doesn't implement tlb_flush() and instead default to using
>> flush_tlb_range(), at which point we need to provide a 'fake' vma.
>>
>> At the time I audited all architectures and they only look at VM_EXEC
>> (to do $I invalidation) and VM_HUGETLB (for pmd level invalidations),
>> but I forgot which architectures that were.
> 
> Many architectures, such as alpha, arc, arm and so on.
> I really understand why you hate making vma->vm_flags more important for
> tlbi :).
> 
>> But that is all legacy code; eventually we'll get all archs a native
>> tlb_flush() and this can go away.
>>
> 
> Thanks for your reply.  Currently, to enable the TTL feature, extending
> the flush_*tlb_range() may be more convenient.
> I will send a formal PATCH soon.
> 
> Thanks,
> Zhenyu
> 

I had sent [PATCH v1] a few days ago[1].  Do you have time to review
my changes?  Are those changes appropriate?

Waiting for your suggestion.

[1] https://lore.kernel.org/linux-arm-kernel/20200403090048.938-1-yezhenyu2@huawei.com/

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
