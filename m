Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF0B18016B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Cw6SyeTh1N4RxJLcqWSdYuWD5c2Dd2dryW4UGigm/w=; b=JsYy30xWxK6uTb
	jCaGEWTgJ5RF2FNGNr5hCSleU2GL1ymeijm8W5b0ptyUEpBQO/JLsWxaWdRUupu1VOdCNj6kG6TFk
	j59s1P4oZFBMDtRhlVh7YNJ16oZ5MZxI/7FtjqP+yw9PLz7v+L3wCBjoC8oaTsAT5aZBm3ZvqqH6Q
	pP5wViNxwst0nJ8AMsZTTGFsCDgvi/rWpJvK7wNI/n6dE5QIZi6bFwTJFeHpqkfFFZf62DbKhuRez
	5pcNcq8iNbFp10KNq8l6dUh2NN2xSEBAdJlstNLTCyqmvJsrV6Mjzxz5SW2NVuUttYVeG3aF4+ghA
	IQ7S24x4d9KJ2ziP5UfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgeB-0000KH-Ub; Tue, 10 Mar 2020 15:18:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBge2-0000Js-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:18:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEC791FB;
 Tue, 10 Mar 2020 08:18:09 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 874493F534;
 Tue, 10 Mar 2020 08:18:07 -0700 (PDT)
Subject: Re: [PATCH v6 15/18] arm64: suspend: restore the kernel ptrauth keys
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-16-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <84927a1f-2456-cf67-fb89-906478a264f5@arm.com>
Date: Tue, 10 Mar 2020 15:18:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-16-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_081810_943632_2CCA5273 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> This patch restores the kernel keys from current task during cpu resume
> after the mmu is turned on and ptrauth is enabled.
> 
> A flag is added in macro ptrauth_keys_install_kernel to check if isb
> instruction needs to executed.
>

Nit: s/needs to executed/needs to be executed/

With this:

Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since v5:
>  * Moved ptrauth_keys_install_kernel inside function cpu_do_resume.
>  * Added a flag in ptrauth_keys_install_kernel to provide options for isb
>    instruction.
> 
>  arch/arm64/include/asm/asm_pointer_auth.h | 6 ++++--
>  arch/arm64/kernel/entry.S                 | 4 ++--
>  arch/arm64/mm/proc.S                      | 2 ++
>  3 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> index 4152afe..899a007 100644
> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -39,14 +39,16 @@ alternative_if ARM64_HAS_GENERIC_AUTH
>  alternative_else_nop_endif
>  	.endm
>  
> -	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> +	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
>  alternative_if ARM64_HAS_ADDRESS_AUTH
>  	mov	\tmp1, #THREAD_KEYS_KERNEL
>  	add	\tmp1, \tsk, \tmp1
>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
>  	msr_s	SYS_APIAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	.if     \sync == 1
>  	isb
> +	.endif
>  alternative_else_nop_endif
>  	.endm
>  
> @@ -55,7 +57,7 @@ alternative_else_nop_endif
>  	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
>  	.endm
>  
> -	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> +	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
>  	.endm
>  
>  #endif /* CONFIG_ARM64_PTR_AUTH */
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 3dad2d0..6273d7b 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -178,7 +178,7 @@ alternative_cb_end
>  
>  	apply_ssbd 1, x22, x23
>  
> -	ptrauth_keys_install_kernel tsk, x20, x22, x23
> +	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_current_task tsk
> @@ -900,7 +900,7 @@ ENTRY(cpu_switch_to)
>  	ldr	lr, [x8]
>  	mov	sp, x9
>  	msr	sp_el0, x1
> -	ptrauth_keys_install_kernel x1, x8, x9, x10
> +	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
>  	ret
>  ENDPROC(cpu_switch_to)
>  NOKPROBE(cpu_switch_to)
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index 5a11a89..4450dc8 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -11,6 +11,7 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>  #include <asm/asm-offsets.h>
> +#include <asm/asm_pointer_auth.h>
>  #include <asm/hwcap.h>
>  #include <asm/pgtable.h>
>  #include <asm/pgtable-hwdef.h>
> @@ -137,6 +138,7 @@ alternative_if ARM64_HAS_RAS_EXTN
>  	msr_s	SYS_DISR_EL1, xzr
>  alternative_else_nop_endif
>  
> +	ptrauth_keys_install_kernel x14, 0, x1, x2, x3
>  	isb
>  	ret
>  SYM_FUNC_END(cpu_do_resume)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
