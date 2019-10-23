Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BA4E21D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIGujo4LRlUnHc+SCdKV6kWNTYMuCc5uN5LQ395L//A=; b=bEJJITkeD2fkLX
	9MPKCv5+JMupbqvHveXrRnyJ9F8VlGjma6aqXBCmNSFM87KgsbRF9a6XUddS7ehvfk6ROskILUDkM
	1CCherwcDpYXrhFqK9Nf3KfVHd2vg+wZio7w+6bfOuckoHEUob/lxVK/NuDOIF3dARiPPmSQGY3F0
	zRf8WCIcRQx5CVZCEEWmGEDNm3bK8Atdn+ZpsPWsFgpS097+ohLyBlsf3TFiCYjGFjtmn+KF+kCyu
	SaLJqp/MPvi7f6IKLTGra48IbKs0GTcMcXvIIVZ8DyU4jR7rdbFzMrMSu/YbIJ+zrqRwoNr7+Djg2
	tj0GIfVSnQ5kCmmZC3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKVf-0002QI-Tk; Wed, 23 Oct 2019 17:33:23 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKVT-0002PA-S5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:33:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DAE53BB;
 Wed, 23 Oct 2019 10:33:00 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2827E3F718;
 Wed, 23 Oct 2019 10:32:59 -0700 (PDT)
Subject: Re: [PATCH 05/11] arm64: enable ptrauth earlier
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <dc7ea4ea-5113-8420-22e4-56ed49cc0da9@arm.com>
Date: Wed, 23 Oct 2019 18:32:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_103311_995093_4B6644C0 
X-CRM114-Status: GOOD (  24.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> When the kernel is compiled with pointer auth instructions, the boot CPU
> needs to start using address auth very early, so change the cpucap to
> account for this.
> 
> Pointer auth must be enabled before we call C functions, because it is
> not possible to enter a function with pointer auth disabled and exit it
> with pointer auth enabled. Note, mismatches between architected and
> IMPDEF algorithms will still be caught by the cpufeature framework (the
> separate *_ARCH and *_IMP_DEF cpucaps).
> 
> Note the change in behavior: if the boot CPU has address auth and a late
> CPU does not, then we offline the late CPU. Until now we would have just
> disabled address auth in this case.
> 
> Leave generic authentication as a "system scope" cpucap for now, since
> initially the kernel will only use address authentication.


> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index e58e5975..157c811 100644
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
> @@ -119,6 +120,8 @@ ENTRY(stext)
>  	 * the TCR will have been set.
>  	 */
>  	bl	__cpu_setup			// initialise processor
> +	mov	x1, #1
> +	bl	__ptrauth_setup
>  	b	__primary_switch
>  ENDPROC(stext)
>  
> @@ -713,6 +716,8 @@ secondary_startup:
>  	 */
>  	bl	__cpu_secondary_check52bitva
>  	bl	__cpu_setup			// initialise processor
> +	mov	x1, #0
> +	bl	__ptrauth_setup
>  	adrp	x1, swapper_pg_dir
>  	bl	__enable_mmu
>  	ldr	x8, =__secondary_switched

__cpu_setup creates the SCTLR_EL1 value for us, it already reads ID registers for stuff
like AFDBM. It seems odd that you don't do the ptrauth check in there.

Not putting it in __cpu_setup means you've missed the other caller: sleep.S's cpu_resume,
which brings the wakeup CPU back as if it were a secondary. (although the value set at
boot will be restored in _cpu_resume).


It looks like you only need this to be separate to pass in the primary/secondary flag, as
__ptrauth_setup has to work with 3 cases: the boot-CPU and secondary CPUs that must have
the feature, or can ignore the feature. Three cases with one alternative isn't possible.

Could we pull the '__cpu_secondary_checkptrauth' out, and run it earlier? This means the
setup call doesn't need to consider secondary CPUs that don't support ptrauth. (and it
matches what we do for 52bit support)

I think passing primary-boot-cpu into __cpu_setup is something we are going to need for
other features, so it makes sense to add it as a preparatory patch.

Now the setup call can enable the feature if its supported and we are the boot cpu.
If the feature is discovered, cpufeature can change that code to enable it unconditionally
as we know secondaries without support will be caught in __cpu_secondary_checkptrauth.

I think this would be simpler, but the proof is in the writing... what do you think?


Thanks,

James

> @@ -832,6 +837,49 @@ __no_granule_support:
>  	early_park_cpu
>  ENDPROC(__no_granule_support)
>  
> +/*
> + * Enable pointer authentication.
> + *   x0 = SCTLR_EL1
> + *   x1 = 1 for primary, 0 for secondary
> + */
> +__ptrauth_setup:
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +	/* Check if the CPU supports ptrauth */
> +	mrs	x2, id_aa64isar1_el1
> +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
> +	cbz	x2, 2f
> +
> +	/* x2 = system_supports_address_auth() */
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	mov	x2, 1
> +alternative_else
> +	mov	x2, 0
> +alternative_endif
> +	orr	x2, x2, x1	// primary || system_supports_address_auth()
> +	cbz	x2, 3f
> +
> +	/* Enable ptrauth instructions */
> +	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
> +		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
> +	orr	x0, x0, x2
> +	b	3f
> +
> +2:	/* No ptrauth support */
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	b	4f
> +alternative_else_nop_endif
> +3:
> +#endif
> +	ret
> +
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +4:	/* Park the secondary CPU */
> +	update_early_cpu_boot_status \
> +		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_PTRAUTH, x0, x1
> +	early_park_cpu
> +#endif
> +ENDPROC(__ptrauth_setup)
> +
>  #ifdef CONFIG_RELOCATABLE
>  __relocate_kernel:
>  	/*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
