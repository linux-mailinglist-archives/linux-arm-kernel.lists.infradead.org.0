Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED44EDB912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 23:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d8Asx1RoVRgPP/+56YuIgnuq3nxtMbKwSznLVsCtPZY=; b=l9wmEtuSByq1NNoNA01RWNMqI
	P3bzyy7GhHiui9JOa5A87kCbGaSEInK4olaJGHnpvCmbBZchtn7jr59fRr1oKTFVOv0W17rbALm1+
	YSaOF5zwpF0sTFc4KxhtuisRppSleqCT0E9QynkKTCGoGCZR9Gf+awk8Gi+0P/MHuokl5x8vY77IS
	LmlEYGZPPKApaABesEX9iOoTPrdht/Y34agKxLGaX86q62Kp+WOu0f+kGvJMgmzazpGkqUpHxn10K
	8Y0DPN+I7CBq/CpwrtgN2WtS02cXHtPX1muWcOJoEDgRpi3mKIXg431gr0NwbKArThiRT3TL7OqFK
	NDLQCWeMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLDMj-0003QC-Mw; Thu, 17 Oct 2019 21:31:25 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLDMb-0003PP-5z
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 21:31:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 501E8329;
 Thu, 17 Oct 2019 14:31:04 -0700 (PDT)
Received: from [192.168.0.21] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 459A63F68E;
 Thu, 17 Oct 2019 14:31:03 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] arm64: errata: Hide CTR_EL0.DIC on systems
 affected by Neoverse-N1 #1542419
To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org
References: <20191017174300.29770-1-james.morse@arm.com>
 <20191017174300.29770-2-james.morse@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9a2385e5-c94c-4504-9f3e-41531f673e58@arm.com>
Date: Thu, 17 Oct 2019 22:33:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20191017174300.29770-2-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_143117_270166_B16F177A 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: catalin.marinas@arm.com, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Patch looks correct to me, except for a slightly incorrect comment.

On 10/17/2019 06:42 PM, James Morse wrote:
> Cores affected by Neoverse-N1 #1542419 could execute a stale instruction
> when a branch is updated to point to freshly generated instructions.
> 
> To workaround this issue we need user-space to issue unnecessary
> icache maintenance that we can trap. Start by hiding CTR_EL0.DIC.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> 
> ---
> Changes since v1:
>   * Enable trap if any CPU has the errata to avoid shearing DIC on big/little.
>   * Update silicon-errata.txt
> ---

> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index f19fe4b9acc4..f05afaec18cd 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -52,7 +52,8 @@
>   #define ARM64_HAS_IRQ_PRIO_MASKING		42
>   #define ARM64_HAS_DCPODP			43
>   #define ARM64_WORKAROUND_1463225		44
> +#define ARM64_WORKAROUND_1542419		45
>   
> -#define ARM64_NCAPS				45
> +#define ARM64_NCAPS				46
>   
>   #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index f593f4cffc0d..6558f48b8b3f 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -87,13 +87,21 @@ has_mismatched_cache_type(const struct arm64_cpu_capabilities *entry,
>   }
>   
>   static void
> -cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *__unused)
> +cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *cap)
>   {
>   	u64 mask = arm64_ftr_reg_ctrel0.strict_mask;
> +	bool enable_uct_trap = false;
>   
>   	/* Trap CTR_EL0 access on this CPU, only if it has a mismatch */
>   	if ((read_cpuid_cachetype() & mask) !=
>   	    (arm64_ftr_reg_ctrel0.sys_val & mask))
> +		enable_uct_trap = true;
> +
> +	/* ... or if this CPU is affected by an errata */

That is a bit confusing unfortunately. It may not be "this" CPU that
is affected by the errata, but any one of the CPUs in the system.

So:

s/this CPU/the system/

should be sufficient.

Otherwise,

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
