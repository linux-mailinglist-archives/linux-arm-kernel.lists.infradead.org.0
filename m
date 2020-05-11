Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD251CDA48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfmc6MzigLBKkoc7QTbL5jACDmvJOV5yooO4qoo7UE4=; b=iR3vG/LG9OE8Oj
	GR0MbAMB5MLmJEi9s6d3Nn1KZ8iFXzVjWDmTrS5abEpCY05fIAg1IjEEp5ukYV+t1SzbwwMMsWHxI
	KmNFxEIQEN4t+tBmR/j0sBBW8cbSR9SV6G84mLY/FOfCOQo5gvqm2pHrCfod4EHs8TjdjqRyHyuLv
	bBCcHNL2jiygiq4Tbsh/F+uQO9ryfoS1uw2xjgNsIMQ005SCrtlhKjb0J6V9FZxKNGT0TzF9TfmtH
	m/yEv+G/QNjTCZNZ7KOV4SIMZlOXPM4mrAWVVdEScD3xJ7K9u4JXxn8oBtZPCBiWhKR0NUxlv6+L7
	/ojygngln9oAc45q9/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7kq-00068L-MX; Mon, 11 May 2020 12:41:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7kh-00066x-Uw
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:41:49 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D7C869F86BFA885B62CA;
 Mon, 11 May 2020 20:41:35 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Mon, 11 May 2020
 20:41:27 +0800
Subject: Re: [PATCH v2 0/6] arm64: tlb: add support for TTL feature
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <6c59eae9-3a77-ef18-fac4-aa21e97fd1f0@huawei.com>
Date: Mon, 11 May 2020 20:41:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200423135656.2712-1-yezhenyu2@huawei.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_054148_172927_66D30D85 
X-CRM114-Status: GOOD (  14.31  )
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

How is this going about this patch series? Does anyone have any
suggestions?

Thanks,
Zhenyu

On 2020/4/23 21:56, Zhenyu Ye wrote:
> In order to reduce the cost of TLB invalidation, ARMv8.4 provides
> the TTL field in TLBI instruction.  The TTL field indicates the
> level of page table walk holding the leaf entry for the address
> being invalidated.  This series provide support for this feature.
> 
> When ARMv8.4-TTL is implemented, the operand for TLBIs looks like
> below:
> 
> * +----------+-------+----------------------+
> * |   ASID   |  TTL  |        BADDR         |
> * +----------+-------+----------------------+
> * |63      48|47   44|43                   0|
> 
> 
> This version updates some codes implementation according to Peter's
> suggestion, and adds some commit msg.
> 
> See patches for details, Thanks.
> 
> 
> --
> ChangeList:
> v2:
> rebase series on Linux 5.7-rc1 and simplify the code implementation.
> 
> v1:
> add support for TTL feature in arm64.
> 
> Marc Zyngier (2):
>   arm64: Detect the ARMv8.4 TTL feature
>   arm64: Add level-hinted TLB invalidation helper
> 
> Peter Zijlstra (Intel) (1):
>   tlb: mmu_gather: add tlb_flush_*_range APIs
> 
> Zhenyu Ye (3):
>   arm64: Add tlbi_user_level TLB invalidation helper
>   mm: tlb: Provide flush_*_tlb_range wrappers
>   arm64: tlb: Set the TTL field in flush_tlb_range
> 
>  arch/arm64/include/asm/cpucaps.h  |  3 +-
>  arch/arm64/include/asm/sysreg.h   |  1 +
>  arch/arm64/include/asm/tlb.h      | 29 +++++++++++++++-
>  arch/arm64/include/asm/tlbflush.h | 54 +++++++++++++++++++++++++-----
>  arch/arm64/kernel/cpufeature.c    | 11 +++++++
>  include/asm-generic/pgtable.h     | 12 +++++--
>  include/asm-generic/tlb.h         | 55 ++++++++++++++++++++++---------
>  mm/pgtable-generic.c              | 22 +++++++++++++
>  8 files changed, 160 insertions(+), 27 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
