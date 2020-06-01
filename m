Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3164C1EA32D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZNj8YM/Cqf6l6STDWOM7Jwqq9rR0K4RdKd92IKJqos=; b=ioHNq/ZVKz4dKr
	fiL6ZGKvoyic/9+1boYXtCCoFqM2333ZDql7q4iuhHuI5SggXjpeK1ugumq0pB9paHpT1JT+nnESd
	huyDaC/iO0YuGcAWaP39nIL0sH4k+XLlQbVxpNOF5PM9ygwF918FcEgSvU2qlz9HSabE+0BgKGnAw
	R1XPqzKC+sXebb0QUfYa4xjXMyAtwBnrzytKfQhNBUpDa9P1V1OIwwV+W+gj9sAh2CFT5c6O40uvw
	flOGJtT8o6YJvtJRDqq/JneFrEEkf4UZa2kJjTh1cVgNRUJ/OB3MciP7/k7MocU0yHboh4qNzUM23
	lK9UDnCpizLUAy1R9ZJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfj3u-0003Nn-FK; Mon, 01 Jun 2020 11:57:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj3n-0003N0-4m
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:56:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BDFE55D;
 Mon,  1 Jun 2020 04:56:51 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 291A23F52E;
 Mon,  1 Jun 2020 04:56:48 -0700 (PDT)
Date: Mon, 1 Jun 2020 12:56:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
Message-ID: <20200601115644.GA23419@gaia>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-6-yezhenyu2@huawei.com>
 <20200522154254.GD26492@gaia>
 <ddba6d98-29b5-0748-ba74-ec022f509270@huawei.com>
 <20200526145244.GG17051@gaia>
 <0c6f79e4-f29a-d373-2e43-c4f87cf78b49@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c6f79e4-f29a-d373-2e43-c4f87cf78b49@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_045655_272217_5708A022 
X-CRM114-Status: GOOD (  20.43  )
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

Hi Zhenyu,

On Sat, May 30, 2020 at 06:24:21PM +0800, Zhenyu Ye wrote:
> On 2020/5/26 22:52, Catalin Marinas wrote:
> > On Mon, May 25, 2020 at 03:19:42PM +0800, Zhenyu Ye wrote:
> >> tlb_flush_##_pxx##_range() is used to set tlb->cleared_*,
> >> flush_##_pxx##_tlb_range() will actually flush the TLB entry.
> >>
> >> In arch64, tlb_flush_p?d_range() is defined as:
> >>
> >> 	#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
> >> 	#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
> > 
> > Currently, flush_p??_tlb_range() are generic and defined as above. I
> > think in the generic code they can remain an alias for
> > flush_tlb_range().
> > 
> > On arm64, we can redefine them as:
> > 
> > #define flush_pte_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 3)
> > #define flush_pmd_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 2)
> > #define flush_pud_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 1)
> > #define flush_p4d_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 0)
> > 
> > (unless the compiler optimises away all the mmu_gather stuff in your
> > macro above but they don't look trivial to me)
> 
> I changed generic code before considering that other structures may also
> use this feature, such as Power9. And Peter may want to replace all
> flush_tlb_range() by tlb_flush() in the future, see [1] for details.
> 
> If only enable this feature on aarch64, your codes are better.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20200402163849.GM20713@hirez.programming.kicks-ass.net/

But we change the semantics slightly if we implement these as
mmu_gather. For example, tlb_end_vma() -> tlb_flush_mmu_tlbonly() ends
up calling mmu_notifier_invalidate_range() which it didn't before. I
think we end up invoking the notifier unnecessarily in some cases (see
the comment in __split_huge_pmd()) or we end up calling the notifier
twice (e.g. pmdp_huge_clear_flush_notify()).

> > Also, I don't see the new flush_pte_* and flush_p4d_* macros used
> > anywhere and I don't think they are needed. The pte equivalent is
> > flush_tlb_page() (we need to make sure it's not used on a pmd in the
> > hugetlb context).
> 
> flush_tlb_page() is used to flush only one page.  If we add the
> flush_pte_tlb_range(), then we can use it to flush a range of pages in
> the future.

If we know flush_tlb_page() is only called on a small page, could we add
TTL information here as well?

> But flush_pte_* and flush_p4d_* macros are really not used anywhere. I
> will remove them in next version of series, and add them if someone
> needs.

I think it makes sense.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
