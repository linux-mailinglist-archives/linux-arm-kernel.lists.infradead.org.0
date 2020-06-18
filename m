Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31041FF400
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a148lIV7FxzK0vg/eZFaHs+x2RpgOozbtDxPgO8UMqY=; b=aPb9/EIsARXyv/PnouIgBjuPa
	gO/xdtzUrDSaI1V/2YzgJbg3MGa8/6cv/QLPI4GmEK+bQymLs0EDOR9kqwu79g7b3eUCOXWBHHGzt
	lQZFf06SwblXbln+McS7blX4pljRKdgMCicJ0SRKtKH2D3JDljZunzaMVEC+nUXEkzrd+U+5PxTRf
	1riOzke6jp+ZGiGCY8ucLqcbeV5sTSHoYc0QL2q/lhGum0W3eyMEPGPhfXn3AD9ESs+WijSM4aoik
	MvoXKyVU1ipwh60lYOjeCifOd15c2blt/H93vPghyV48hZy79anBOnn+/CqS32P01yuW07rrI4yfH
	NWvEXcCxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlv3E-0004Hz-MK; Thu, 18 Jun 2020 13:57:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlv36-0004Hc-QK
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:57:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C69B12082F;
 Thu, 18 Jun 2020 13:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592488667;
 bh=LnYEKbo5XLm8oVGmH1Jg4y8ZvUiouHun1liXREq5bac=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BvEtPq7yWq1HoWLreLAPoRHu9zg2dv4gVjA+/sWolyzzhzCuYfusljrsDt7PCh1Rl
 8VzOVSWJVHPKOQf8ENECav3J03US/j4/DonegZKfy7eWRDwY3D9dWQ05qwLpA4LpOi
 HaPbrU2sScJRWJ14HAyMty8l/Dv/fn0Im1rhu9eQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlv34-004BYE-2D; Thu, 18 Jun 2020 14:57:46 +0100
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 14:57:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH v3 02/15] arm64: kvm: Move __smccc_workaround_1_smc to
 .rodata
In-Reply-To: <20200618122537.9625-3-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
 <20200618122537.9625-3-dbrazdil@google.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <02322fdac903aa1786c334d0ddd7f38a@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: dbrazdil@google.com, will@kernel.org,
 catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 android-kvm@google.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_065748_892064_2B290D53 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 2020-06-18 13:25, David Brazdil wrote:
> This snippet of assembly is used by cpu_errata.c to overwrite parts of 
> KVM hyp
> vector. Move it to its own source file and change its ELF section to 
> .rodata.
> 
> Signed-off-by: David Brazdil <dbrazdil@google.com>
> ---
>  arch/arm64/kvm/hyp/Makefile    |  1 +
>  arch/arm64/kvm/hyp/hyp-entry.S | 16 ----------------
>  arch/arm64/kvm/hyp/smccc_wa.S  | 30 ++++++++++++++++++++++++++++++
>  3 files changed, 31 insertions(+), 16 deletions(-)
>  create mode 100644 arch/arm64/kvm/hyp/smccc_wa.S
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index 8c9880783839..5d8357ddc234 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -7,6 +7,7 @@ ccflags-y += -fno-stack-protector 
> -DDISABLE_BRANCH_PROFILING \
>  		$(DISABLE_STACKLEAK_PLUGIN)
> 
>  obj-$(CONFIG_KVM) += hyp.o
> +obj-$(CONFIG_KVM_INDIRECT_VECTORS) += smccc_wa.o
> 
>  hyp-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o 
> sysreg-sr.o \
>  	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S 
> b/arch/arm64/kvm/hyp/hyp-entry.S
> index 9c5cfb04170e..d362fad97cc8 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -318,20 +318,4 @@ SYM_CODE_START(__bp_harden_hyp_vecs)
>  1:	.org __bp_harden_hyp_vecs + __BP_HARDEN_HYP_VECS_SZ
>  	.org 1b
>  SYM_CODE_END(__bp_harden_hyp_vecs)
> -
> -	.popsection

I'd be tempted to leave the .popsection in place, if only for symmetry  
with the initial .pushsection.

> -
> -SYM_CODE_START(__smccc_workaround_1_smc)
> -	esb
> -	sub	sp, sp, #(8 * 4)
> -	stp	x2, x3, [sp, #(8 * 0)]
> -	stp	x0, x1, [sp, #(8 * 2)]
> -	mov	w0, #ARM_SMCCC_ARCH_WORKAROUND_1
> -	smc	#0
> -	ldp	x2, x3, [sp, #(8 * 0)]
> -	ldp	x0, x1, [sp, #(8 * 2)]
> -	add	sp, sp, #(8 * 4)
> -1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
> -	.org 1b
> -SYM_CODE_END(__smccc_workaround_1_smc)
>  #endif
> diff --git a/arch/arm64/kvm/hyp/smccc_wa.S 
> b/arch/arm64/kvm/hyp/smccc_wa.S
> new file mode 100644
> index 000000000000..aa25b5428e77
> --- /dev/null
> +++ b/arch/arm64/kvm/hyp/smccc_wa.S
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2015-2018 - ARM Ltd
> + * Author: Marc Zyngier <marc.zyngier@arm.com>
> + */
> +
> +#include <linux/arm-smccc.h>
> +
> +#include <asm/kvm_asm.h>
> +#include <asm/kvm_mmu.h>
> +
> +	/*
> +	 * This is not executed directly and is instead copied into the 
> vectors
> +	 * by install_bp_hardening_cb().
> +	 */
> +	.data
> +	.pushsection	.rodata
> +	.global		__smccc_workaround_1_smc
> +__smccc_workaround_1_smc:

You probably want to replace this with SYM_DATA_START (and SYM_DATA_END 
at the end).

> +	esb
> +	sub	sp, sp, #(8 * 4)
> +	stp	x2, x3, [sp, #(8 * 0)]
> +	stp	x0, x1, [sp, #(8 * 2)]
> +	mov	w0, #ARM_SMCCC_ARCH_WORKAROUND_1
> +	smc	#0
> +	ldp	x2, x3, [sp, #(8 * 0)]
> +	ldp	x0, x1, [sp, #(8 * 2)]
> +	add	sp, sp, #(8 * 4)
> +1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
> +	.org 1b

Otherwise, looks good.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
