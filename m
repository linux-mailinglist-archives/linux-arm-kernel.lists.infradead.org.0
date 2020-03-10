Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4602517F6FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YN0dXAjptUtc60dBH3b36+6NmsHPwaa1Td2wh8sGvo=; b=TKIm39GcZdSzCP
	kaYQozKjVmtcZvVeVLqzNL/88jCXC4gRaa6B4ZzKK6rk/Yo4f4enbjjUxWSbyCtFvyViMlJnf/k+I
	0Wl16WLuN7I4pET5CoofxQLyhmlmENugdQXRhdWFaFSwvqeZUVm2nStcLKQV8GK+cUfbKmfOa9gC6
	h5uac9L50I5t2JTrm1TEP703pWS2/0BhvrBGDxWTBP04IwFpzE2hdexaiyeqFtoQhABaVgZH4gicl
	w1dz+9bE/V6bHyWCOaW1/t5nEc3TOSZvwgsu2cQRDShNvqNukcUobkAv2zD4OjPUo6UfGKXu+VzDc
	MyjX8z8X+BChLWGFx6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdaN-0007YG-90; Tue, 10 Mar 2020 12:02:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdaB-0007Xj-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:02:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E99DE30E;
 Tue, 10 Mar 2020 05:01:55 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EF8C3F67D;
 Tue, 10 Mar 2020 05:01:53 -0700 (PDT)
Subject: Re: [PATCH v6 05/18] arm64: create macro to park cpu in an infinite
 loop
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-6-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <45fcfb45-3c29-cff5-d725-232daa967ee8@arm.com>
Date: Tue, 10 Mar 2020 12:02:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-6-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_050159_552598_4D2EBE0D 
X-CRM114-Status: GOOD (  17.72  )
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
> A macro early_park_cpu is added to park the faulted cpu in an infinite
> loop. Currently, this macro is substituted in two instances and may be
> reused in future.
> 

Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/kernel/head.S | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 989b194..3d18163 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -761,6 +761,17 @@ ENDPROC(__secondary_too_slow)
>  	.endm
>  
>  /*
> + * Macro to park the cpu in an infinite loop.
> + */
> +	.macro	early_park_cpu status
> +	update_early_cpu_boot_status \status | CPU_STUCK_IN_KERNEL, x1, x2
> +.Lepc_\@:
> +	wfe
> +	wfi
> +	b	.Lepc_\@
> +	.endm
> +
> +/*
>   * Enable the MMU.
>   *
>   *  x0  = SCTLR_EL1 value for turning on the MMU.
> @@ -808,24 +819,14 @@ ENTRY(__cpu_secondary_check52bitva)
>  	and	x0, x0, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
>  	cbnz	x0, 2f
>  
> -	update_early_cpu_boot_status \
> -		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_52_BIT_VA, x0, x1
> -1:	wfe
> -	wfi
> -	b	1b
> -
> +	early_park_cpu CPU_STUCK_REASON_52_BIT_VA
>  #endif
>  2:	ret
>  ENDPROC(__cpu_secondary_check52bitva)
>  
>  __no_granule_support:
>  	/* Indicate that this CPU can't boot and is stuck in the kernel */
> -	update_early_cpu_boot_status \
> -		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_GRAN, x1, x2
> -1:
> -	wfe
> -	wfi
> -	b	1b
> +	early_park_cpu CPU_STUCK_REASON_NO_GRAN
>  ENDPROC(__no_granule_support)
>  
>  #ifdef CONFIG_RELOCATABLE
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
