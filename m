Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A7C190C89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kdkemBZcg1bl8ZpwAHQv06toET2jQjuRmsMdd+KD0Ps=; b=rhBXMm+ADuGmUZMJ672U4FbfD
	5tPUF4kOzY1DJk7LzCaq2mB32oKNO+mRah91qXjZMyNB2W0DxxS9PN619jRuH4aSi3Q4dY5JFjd/A
	Dwy+Ttqjy4EgtuaYNe+MC7IW4wvzhnQLE7o9DHAlk1AxG8p0fN30wUNR6mLPKAauTWTx17DnTRWut
	EyOhzBeVWuAQ4Nt9v51zM/66+sv9xR+ewIvaHQeCUfCf5zGR9U5+eQ5R2FRiwwI/8DI+XtVOFyMec
	Bj4s9F6kfi1+uXbe61vPiqfkORIMX8mGJI9POBYJ1Zf9uwi/UHhThjZskw/GLJRMeLyAAjacAkFMF
	itiumRvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhnJ-0006CI-Mu; Tue, 24 Mar 2020 11:32:29 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhn9-0005xe-Qe
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:32:21 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D4455B7EA30AA5648347;
 Tue, 24 Mar 2020 19:32:04 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Tue, 24 Mar 2020
 19:31:59 +0800
Subject: Re: [RFC PATCH v3 0/4] arm64: tlb: add support for TTL field
To: Zhenyu Ye <yezhenyu2@huawei.com>, <will@kernel.org>,
 <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
References: <20200321121621.1600-1-yezhenyu2@huawei.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <4e3d42d9-7c57-3659-edbe-1e59ca5b04ea@huawei.com>
Date: Tue, 24 Mar 2020 19:31:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200321121621.1600-1-yezhenyu2@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_043220_030151_5D758A70 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zhenyu,

On 2020/3/21 20:16, Zhenyu Ye wrote:
> --
> ChangeList:
> v3:
> use vma->vm_flags to replace mm->context.flags.
> 
> v2:
> build the patch on Marc's NV series[1].
> 
> v1:
> add support for TTL field in arm64.
> 
> --
> ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
> the level of translation table walk holding the leaf entry for the
> address that is being invalidated. Hardware can use this information
> to determine if there was a risk of splintering.
> 
> Marc has provided basic support for ARM64-TTL features on his
> NV series[1] patches. NV is a large feature, however, only
> patches 62[2] and 67[3] are need by this patch set.
> ** You only need read those two patches before review this patch. **

It'd be good if you can put the whole thing into a series, otherwise
people will have difficulty when reviewing and testing it...

I haven't tracked the previous versions. If Marc is OK to share the
two patches below [2][3], I'd suggest you to pick them up, add them
in your series, rebase on top of mainline and resend it.


Thanks,
Zenghui

> 
> Some of this patch depends on a feature powered by @Will Deacon
> two years ago, which tracking the level of page tables in mm_gather.
> See more in commit a6d60245.
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git kvm-arm64/nv-5.6-rc1
> [2] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-63-maz@kernel.org/
> [3] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-68-maz@kernel.org/
> 
> Zhenyu Ye (4):
>    arm64: Add level-hinted TLB invalidation helper to tlbi_user
>    mm: Add page table level flags to vm_flags
>    arm64: tlb: Use translation level hint in vm_flags
>    mm: Set VM_LEVEL flags in some tlb_flush functions
> 
>   arch/arm64/include/asm/mmu.h      |  2 ++
>   arch/arm64/include/asm/tlb.h      | 12 +++++++++
>   arch/arm64/include/asm/tlbflush.h | 44 ++++++++++++++++++++++++++-----
>   arch/arm64/mm/hugetlbpage.c       |  4 +--
>   arch/arm64/mm/mmu.c               | 14 ++++++++++
>   include/asm-generic/pgtable.h     | 16 +++++++++--
>   include/linux/mm.h                | 10 +++++++
>   include/trace/events/mmflags.h    | 15 ++++++++++-
>   mm/huge_memory.c                  |  8 +++++-
>   9 files changed, 113 insertions(+), 12 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
