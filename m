Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AAC13E001
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX3scKmnbUGCLTeQvYkrvGqA5ce6bwerWVnC8QT8DOE=; b=WU1YkD1rGgOq/Q
	DK/36msCquLxolHEX1xdNURtxjlsNbC3rG0gJQq2IBc0fgzs20hNUi0CEltLI8+JVOscrzrgo6Zdm
	mbjhKRK6pnZD8lUMaiz4g55k8ZABPbEvCH+7bagWoLu/TE0yYraRUPKz48+QUtpS/MmowbthZoePW
	FktjhUpsveB50gt0UsS7E0KBq5EBxwcrvs2kpbix1yUdVkZNAJrhzB5u/82ASURbmHkPpPqJjOksO
	bZlO81eblX0RX4uVKxJ7wEombMpQLrBsBQ6IF3hgby9oWtBixE/Zu0NsdXp5+0KN+AYfS9c5KSK+6
	ke7Z3iDsdmFLS72WeVLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7wl-0006go-Vg; Thu, 16 Jan 2020 16:24:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7wZ-0006f6-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CB5C1396;
 Thu, 16 Jan 2020 08:24:18 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D709D3F68E; Thu, 16 Jan 2020 08:24:16 -0800 (PST)
Date: Thu, 16 Jan 2020 16:24:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
Message-ID: <20200116162414.GF10277@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_082427_891673_E071418C 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:08PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 5aaf1bb..c59c28f 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -13,6 +13,7 @@
>  #include <linux/init.h>
>  #include <linux/irqchip/arm-gic-v3.h>
>  
> +#include <asm/alternative.h>
>  #include <asm/assembler.h>
>  #include <asm/boot.h>
>  #include <asm/ptrace.h>
> @@ -713,6 +714,7 @@ secondary_startup:
>  	 * Common entry point for secondary CPUs.
>  	 */
>  	bl	__cpu_secondary_check52bitva
> +	bl	__cpu_secondary_checkptrauth
>  	mov	x0, #ARM64_CPU_BOOT_LATE
>  	bl	__cpu_setup			// initialise processor
>  	adrp	x1, swapper_pg_dir
> @@ -831,6 +833,24 @@ __no_granule_support:
>  	early_park_cpu CPU_STUCK_REASON_NO_GRAN
>  ENDPROC(__no_granule_support)
>  
> +ENTRY(__cpu_secondary_checkptrauth)
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +	/* Check if the CPU supports ptrauth */
> +	mrs	x2, id_aa64isar1_el1
> +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
> +	cbnz	x2, 1f
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	mov	x3, 1
> +alternative_else
> +	mov	x3, 0
> +alternative_endif
> +	cbz	x3, 1f
> +	/* Park the mismatched secondary CPU */
> +	early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
> +#endif
> +1:	ret
> +ENDPROC(__cpu_secondary_checkptrauth)

Do we actually need to park secondary CPUs early? Let's say a secondary
CPU doesn't have PAC, __cpu_setup won't set the corresponding SCTLR_EL1
bits and the instructions are NOPs. Wouldn't the cpufeature framework
park it later anyway?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
