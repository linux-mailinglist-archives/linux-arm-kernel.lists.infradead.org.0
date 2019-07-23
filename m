Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AF97178B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5mGwoO8tTVqJlWMcQN20B2JZ22g01LdktoseWS3Qtk=; b=ie9lXtORAiReOe
	v6mWcREz9TfXF7Wxy4MIutwX8IAJFViwf/MrBDplFrHBUnccA7qDKB94RZT0p8HxQ5/xHr+OHqq5V
	L+ywpM4VANP2KbzZb4hu3lZy/OlojEXSvScKx/CSOcZh4aUgpPkN//B+EjmkC+GX0H6h3xLcAUF6r
	btMi0G3dHkMcRXI7OukLR0WPOXpUVGQlUVZy+iWfIZnd8eBQDz+V+nNrJFpTXEcYPiFiGNN8tUCqR
	efg4PyOVGGJ4NFPSS/OWPqayE437HRorCj3OMF3ZRY8Qv2WuO521NMwNZhTLbvsRQ36b2dWQgq9m1
	vAfhYQH3wV75i8HQRcBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptOM-0007o3-FE; Tue, 23 Jul 2019 11:55:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hptO6-0007n9-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:55:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D35F0337;
 Tue, 23 Jul 2019 04:55:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B56943F71A; Tue, 23 Jul 2019 04:55:18 -0700 (PDT)
Date: Tue, 23 Jul 2019 12:55:16 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Takao Indoh <indou.takao@jp.fujitsu.com>
Subject: Re: [PATCH 1/2] arm64: mm: Restore mm_cpumask (revert commit
 38d96287504a ("arm64: mm: kill mm_cpumask usage"))
Message-ID: <20190723115516.GA16928@arrakis.emea.arm.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617143255.10462-2-indou.takao@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143255.10462-2-indou.takao@jp.fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_045522_855782_4DFA46C9 
X-CRM114-Status: GOOD (  17.07  )
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Takao Indoh <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I know Will is on the case but just expressing some thoughts of my own.

On Mon, Jun 17, 2019 at 11:32:54PM +0900, Takao Indoh wrote:
> From: Takao Indoh <indou.takao@fujitsu.com>
> 
> mm_cpumask was deleted by the commit 38d96287504a ("arm64: mm: kill
> mm_cpumask usage") because it was not used at that time. Now this is needed
> to find appropriate CPUs for TLB flush, so this patch reverts this commit.
> 
> Signed-off-by: QI Fuli <qi.fuli@fujitsu.com>
> Signed-off-by: Takao Indoh <indou.takao@fujitsu.com>
> ---
>  arch/arm64/include/asm/mmu_context.h | 7 ++++++-
>  arch/arm64/kernel/smp.c              | 6 ++++++
>  arch/arm64/mm/context.c              | 2 ++
>  3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index 2da3e478fd8f..21ef11590bcb 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -241,8 +241,13 @@ static inline void
>  switch_mm(struct mm_struct *prev, struct mm_struct *next,
>  	  struct task_struct *tsk)
>  {
> -	if (prev != next)
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (prev != next) {
>  		__switch_mm(next);
> +		cpumask_clear_cpu(cpu, mm_cpumask(prev));
> +		local_flush_tlb_mm(prev);
> +	}

That's not actually a revert as we've never flushed the TLBs on the
switch_mm() path. Also, this flush is not sufficient on a CnP capable
CPU since another thread of the same CPU could have the prev TTBR0_EL1
value set and loading the TLB back.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
