Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2907C2CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLcfJMjDgoe8qt0R10o/JumJb8JXra/1iT1HkOUUneA=; b=TtmUS9oeHg/xTU
	qSYdSauHteYdZ6Guu6eoxXEcutNRY1pY9SvE1/2PfM5Qm+o54MNZ0SDL8atgm0J+N4yt9D1vAD558
	3POjVaDfqMIl2VB3XxojBFygaCViDJWsV67DLBEM4rA0MhKVW7gUy3HoQYeMGLV70yEIpyExM+kGw
	Yvw4ABXGGyYjoGFNmEOxWicVmiIx8IX7B9pXU8fa7oAwpBQ0zWKg2IBJK8uB1kmVjV3ehU7S1by1y
	6GSC/gYZIHu2duSxqO3BoHmNk6oOU+0vf23PINoEwOJHU4qDWk0i7UBzIosTqHmrRDj13r57seRl6
	J/3LNT0yRanEwWVIaY4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoM1-0004nU-Tc; Wed, 31 Jul 2019 13:09:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoLv-0004mb-6s
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:09:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC7FB1570;
 Wed, 31 Jul 2019 06:09:08 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 750113F575;
 Wed, 31 Jul 2019 06:09:07 -0700 (PDT)
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
To: Viresh Kumar <viresh.kumar@linaro.org>, stable@vger.kernel.org
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
Date: Wed, 31 Jul 2019 14:09:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_060911_296386_014C1916 
X-CRM114-Status: GOOD (  20.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/07/2019 06:28, Viresh Kumar wrote:
> From: Marc Zyngier <marc.zyngier@arm.com>
> 
> commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.
> 
> We call arm64_apply_bp_hardening() from post_ttbr_update_workaround,
> which has the unexpected consequence of being triggered on every
> exception return to userspace when ARM64_SW_TTBR0_PAN is selected,
> even if no context switch actually occured.
> 
> This is a bit suboptimal, and it would be more logical to only
> invalidate the branch predictor when we actually switch to
> a different mm.
> 
> In order to solve this, move the call to arm64_apply_bp_hardening()
> into check_and_switch_context(), where we're guaranteed to pick
> a different mm context.
> 
> Acked-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/arm64/mm/context.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index be42bd3dca5c..de5afc27b4e6 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -183,6 +183,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>  	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
>  
>  switch_mm_fastpath:
> +	arm64_apply_bp_hardening();
> +
>  	cpu_switch_mm(mm->pgd, mm);
>  }
>  
> @@ -193,8 +195,6 @@ asmlinkage void post_ttbr_update_workaround(void)
>  			"ic iallu; dsb nsh; isb",
>  			ARM64_WORKAROUND_CAVIUM_27456,
>  			CONFIG_CAVIUM_ERRATUM_27456));
> -
> -	arm64_apply_bp_hardening();

Patches 22 and 23 factorize the post_ttbr_update_workaround() and move
it to C code just so we would and a call to arm64_apply_bp_hardening()
in patch 24 that now gets moved elsewhere?

Is it really worth backporting patches 22 and 23?

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
