Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB6C184525
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDdHs24o7lOwZ7og0EDN7l9hVMhjedYbbPynJC4thPU=; b=VcVk9Hx+2aqdbi
	oJCNElKj7DFwj38I8P7fc0+y6SFc1Vi0x3I0p/OQN73HW0uuetl9aQLsrIrgsuV82rcsfMjHdI1LM
	U6S8l562oDpnM1akS6fnRg+H7ND2Sdj1RIyFReGlCNERu0Vo6KwOpkrcWD7d+IO8O9CafYG/UVrey
	VcDyjfPLH2e6EKlaqjVA7B8e7S25VfMtQhzAj4uMy43gSO5a9YvWA+XVpyD75+YiqPMY/KsYEbiDd
	Ap3h8bQ83pm2ngyV97kkbesNUDZddYIXWtY8irjhCFg3sLAGlm0Qay2ubsz6x7wPyIBEtchnZ9kBe
	D3O/OGX9f+CqUuwxnifA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChpb-00019S-Go; Fri, 13 Mar 2020 10:46:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChpT-00018c-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:46:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1533FEC;
 Fri, 13 Mar 2020 03:46:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBD8B3F534;
 Fri, 13 Mar 2020 03:46:09 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:46:07 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH 6/6] arm64: Hoist CONFIG option out of ALTERNATIVE in
 uaccess.h
Message-ID: <20200313104607.GB42546@lakrids.cambridge.arm.com>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-7-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311180416.6509-7-richard.henderson@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_034612_050557_231B9EFD 
X-CRM114-Status: GOOD (  17.92  )
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
Cc: maz@kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

On Wed, Mar 11, 2020 at 11:04:16AM -0700, Richard Henderson wrote:
> From: Richard Henderson <rth@twiddle.net>
> 
> The placement of the CONFIG check, within the asm, is less than
> ideal within uaccess.h.  When we have
> 
> 	if (cond)
> 		asm("something")
> 
> and "something" turns out to be empty, the if cannot be removed
> by the compiler.

Given the config argument to ALTERNATIVE() is unfortunate for codegen,
and IMO hinder clarity, I think it'd be worth removing that completely.

Regardless of that, and regardless of the rest of the series, this patch
looks good to me, so FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> 
> Signed-off-by: Richard Henderson <rth@twiddle.net>
> ---
>  arch/arm64/include/asm/uaccess.h | 31 ++++++++++++++++---------------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index ca1acd7b95c3..90be003101f4 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -43,11 +43,14 @@ static inline void set_fs(mm_segment_t fs)
>  	 * Enable/disable UAO so that copy_to_user() etc can access
>  	 * kernel memory with the unprivileged instructions.
>  	 */
> -	if (IS_ENABLED(CONFIG_ARM64_UAO) && fs == KERNEL_DS)
> -		asm(ALTERNATIVE("nop", SET_PSTATE_UAO(1), ARM64_HAS_UAO));
> -	else
> -		asm(ALTERNATIVE("nop", SET_PSTATE_UAO(0), ARM64_HAS_UAO,
> -				CONFIG_ARM64_UAO));
> +	if (IS_ENABLED(CONFIG_ARM64_UAO)) {
> +		if (fs == KERNEL_DS)
> +			asm(ALTERNATIVE("nop", SET_PSTATE_UAO(1),
> +					ARM64_HAS_UAO));
> +		else
> +			asm(ALTERNATIVE("nop", SET_PSTATE_UAO(0),
> +					ARM64_HAS_UAO));
> +	}
>  }
>  
>  #define segment_eq(a, b)	((a) == (b))
> @@ -178,28 +181,26 @@ static inline bool uaccess_ttbr0_enable(void)
>  
>  static inline void __uaccess_disable_hw_pan(void)
>  {
> -	asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN,
> -			CONFIG_ARM64_PAN));
> +	if (IS_ENABLED(CONFIG_ARM64_PAN))
> +		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN));
>  }
>  
>  static inline void __uaccess_enable_hw_pan(void)
>  {
> -	asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), ARM64_HAS_PAN,
> -			CONFIG_ARM64_PAN));
> +	if (IS_ENABLED(CONFIG_ARM64_PAN))
> +		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), ARM64_HAS_PAN));
>  }
>  
>  #define __uaccess_disable(alt)						\
>  do {									\
> -	if (!uaccess_ttbr0_disable())					\
> -		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), alt,		\
> -				CONFIG_ARM64_PAN));			\
> +	if (IS_ENABLED(CONFIG_ARM64_PAN) && !uaccess_ttbr0_disable())	\
> +		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), alt));	\
>  } while (0)
>  
>  #define __uaccess_enable(alt)						\
>  do {									\
> -	if (!uaccess_ttbr0_enable())					\
> -		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), alt,		\
> -				CONFIG_ARM64_PAN));			\
> +	if (IS_ENABLED(CONFIG_ARM64_PAN) && !uaccess_ttbr0_enable())	\
> +		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), alt));	\
>  } while (0)
>  
>  static inline void uaccess_disable(void)
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
