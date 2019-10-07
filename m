Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9247CDE4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 11:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CSplIJ1JAy3bwnGFRaK+AAA/w/CI5/VUBG9or4uHQmY=; b=D2qvAkm1N5/zDdhLfEd5OUoNO
	kbx41X5UPv/qUiwGMF4WmC7JaU5sEz5soNMNOPOiRmnYLPvQrL0j/eUQ395JMVvIK95GDyeJlJp6I
	QH1wh0JN4DHUZO9ZcusKU1LVTiXqk7FbT7bHa+wmJDBD0MmPtRu8nDIgt/VUWKp6/TECAu9IWcjaf
	KmLOyiYobvftMhGH2FRP0d/RrDWgNWe0dKemiOuUnRefKOkspJeQFm6YfdiWloVsrMcSvPYNi852V
	RZXgzZ+8+MzuZYmVcZs8sEk+DGUThXBreVdl2hpiGiKnrMJCFoCTR5hujKxUXdgHYTSLzKOkicGRG
	vQXzYpZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPTi-0003vA-Kh; Mon, 07 Oct 2019 09:38:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPTa-0003ub-ET
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 09:38:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D055215BE;
 Mon,  7 Oct 2019 02:38:44 -0700 (PDT)
Received: from [10.1.197.116] (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4444A3F68E;
 Mon,  7 Oct 2019 02:38:44 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: errata: Hide CTR_EL0.DIC on systems affected
 by Neoverse-N1 #1542419
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-2-james.morse@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0f473a08-d5c6-7880-3070-94494d802930@arm.com>
Date: Mon, 7 Oct 2019 10:38:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191002094935.48848-2-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_023846_567790_364BFCCE 
X-CRM114-Status: GOOD (  26.77  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 02/10/2019 10:49, James Morse wrote:
> Cores affected by Neoverse-N1 #1542419 could execute a stale instruction
> when a branch is updated to point to freshly generated instructions.
> 
> To workaround this issue we need user-space to issue unnecessary
> icache maintenance that we can trap. Start by hiding CTR_EL0.DIC.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>   arch/arm64/Kconfig               | 16 ++++++++++++++++
>   arch/arm64/include/asm/cpucaps.h |  3 ++-
>   arch/arm64/kernel/cpu_errata.c   | 30 ++++++++++++++++++++++++++++++
>   arch/arm64/kernel/traps.c        |  3 +++
>   4 files changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b4257b72..f2e1965d2461 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -559,6 +559,22 @@ config ARM64_ERRATUM_1463225
>   
>   	  If unsure, say Y.
>   
> +config ARM64_ERRATUM_1542419
> +	bool "Neoverse-N1: workaround mis-ordering of instruction fetches"
> +	default y
> +	help
> +	  This option adds a workaround for ARM Neoverse-N1 erratum
> +	  1542419.
> +
> +	  Affected Neoverse-N1 cores could execute a stale instruction when
> +	  modified by another CPU. The workaround depends on a firmware
> +	  counterpart.
> +
> +	  Workaround the issue by hiding the DIC feature from EL0. This
> +	  forces user-space to perform cache maintenance.
> +
> +	  If unsure, say Y.
> +
>   config CAVIUM_ERRATUM_22375
>   	bool "Cavium erratum 22375, 24313"
>   	default y
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
> index 1e43ba5c79b7..a7de0d5dde9a 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -90,10 +90,18 @@ static void
>   cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *__unused)
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
> +	if (this_cpu_has_cap(ARM64_WORKAROUND_1542419))
> +		enable_uct_trap = true;

I think we need to trap the CTR accesses on all the CPUs if at least one
of the CPU is affected by the Errata. i.e, even if both the LITTLE and the
big CPU has DIC, we must trap this on both types to make sure the application
doesn't use a cached value of the DIC read on the CPU that is not affected.

So we could change this enable() routine a bit to :

cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *cap)
{
	.... existing checks ....

	if (cap->capability == ARM64_WORKAROUND_1542419)
		enable_uct_trap = true;

}


Rest looks good to me.

Cheers
Suuzki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
