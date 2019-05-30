Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B240C2ED6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjU/A6O42PZdshLI7PAp3rM4m134FrxHUvGZIfXGvhk=; b=LDAl+RLiiiCQul
	z9EI+CUipH43P7LapeNubO5rEC/a5RsE64mUWeYwpo+K0bfiVcN9abKw8YAmsjkN70XBC9fPUlrr5
	2FygCwX0oeoW5GzsrFDtEwkwK74Bz8t5fT0atkAvgwMcF1lvz3Muis4JofBrvUPBsR7okFPkxT+SA
	yx7wVBF/iVMFz+J6+wFlbpod8thcZ6thkhk7a+dBgapEdyq4zm0EQbDn+umfkGgTdFbHL2D5jKAt8
	NkTFoj6mEnSXCXxeKXp5brD6p7uqE8Fmx5a7ym4Mgtd6lJcndeYfp/Zbi6SrX59QMgViLyZ8yc4qo
	L6zfnGsPfBs/4pWmO4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBrn-0003Yh-GL; Thu, 30 May 2019 03:36:35 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBrg-0003YN-Cg
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:36:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so1116068pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sQQIrKCZw7QJSvWRojgxcrgfDweSyJMGbr73dM9YOfA=;
 b=ivmtiP+bmqM37BCsnV51RB1vs3qGfkQMINQAzja+MAJLcXy9vwQdCa67MZR+CxyW3b
 SXruT+dUQfOfhiDAcm0kGPTFpu+BxKpbbIwS35QkW3S0/hvgT5f3+gDbYzgAzTFV0Z/c
 noiuoTkVq44HFKRcDYZEaAO1fPdDV9ey92H0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sQQIrKCZw7QJSvWRojgxcrgfDweSyJMGbr73dM9YOfA=;
 b=aJgLjd9iX+hNxhKc22swLJUVdancW0O+QoMDEPjo8wOcIqIOa6lMvKjaCZYwhOfp/H
 65SGMIfv1NNPz575gYH+Q+vogtS+kEBjFUUzZrd7C80iQP6+rOsM1E0zDdKs+rhAd1B9
 yHW43OZT8p+34bQPMGZktTz5YVkpwkEnm61XgWluA/RWHxlGqGW55cEZ8Hoj65ZMFNd5
 RsuMEWYBqlDPMhjDvAIFmZGemnOggHGuFtfnmyTPVy0lEA9g9uLmbWs8rAKzZL6ZUqCI
 q2/nL6TSgeokGe4JzTFTcFkwlGPfU0b2XlQ/bJCvo/SfkzYv8qeGdg63zULdQQSnd+C9
 m3tA==
X-Gm-Message-State: APjAAAUMVer6STz8q2eUJyUQl/ZzyL5oSHM9Hwr7dYvoZkQlzlc7KQa1
 0jbT4KEup1h0bAM+jq4fhuJKQQ==
X-Google-Smtp-Source: APXvYqz5mhzD4gugDelwxgPmCknBvQYV+YduG9U90ygKMUM5cxPglagBlx+ToZPvyJ2TPhrpMkt8kw==
X-Received: by 2002:a17:90a:cb82:: with SMTP id
 a2mr1657996pju.80.1559187387253; 
 Wed, 29 May 2019 20:36:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k36sm971779pjb.14.2019.05.29.20.36.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 20:36:26 -0700 (PDT)
Date: Wed, 29 May 2019 20:36:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 6/7] arm64: unwind: strip PAC from kernel addresses
Message-ID: <201905292035.A4D0E73@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-7-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-7-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_203628_433813_B39D6721 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:31PM +0100, Kristina Martsenko wrote:
> From: Mark Rutland <mark.rutland@arm.com>
> 
> When we enable pointer authentication in the kernel, LR values saved to
> the stack will have a PAC which we must strip in order to retrieve the
> real return address.
> 
> Strip PACs when unwinding the stack in order to account for this.
> 
> Reviewed-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
> Changes since RFC v1:
>  - Moved the patch later in the series
> 
>  arch/arm64/include/asm/pointer_auth.h | 10 +++++++---
>  arch/arm64/kernel/stacktrace.c        |  3 +++
>  2 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 79f35f5ecff5..5491c34b4dc3 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -80,12 +80,16 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>   * The EL0 pointer bits used by a pointer authentication code.
>   * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
>   */
> -#define ptrauth_user_pac_mask()	GENMASK(54, vabits_user)
> +#define ptrauth_user_pac_mask()		GENMASK(54, vabits_user)
> +
> +#define ptrauth_kernel_pac_mask()	(GENMASK(63, 56) | GENMASK(54, VA_BITS))
>  
> -/* Only valid for EL0 TTBR0 instruction pointers */
>  static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  {
> -	return ptr & ~ptrauth_user_pac_mask();
> +	if (ptr & BIT_ULL(55))
> +		return ptr | ptrauth_kernel_pac_mask();
> +	else
> +		return ptr & ~ptrauth_user_pac_mask();
>  }
>  
>  #define ptrauth_thread_init_user(tsk)					\
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index d908b5e9e949..df07c27a9673 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -24,6 +24,7 @@
>  #include <linux/stacktrace.h>
>  
>  #include <asm/irq.h>
> +#include <asm/pointer_auth.h>
>  #include <asm/stack_pointer.h>
>  #include <asm/stacktrace.h>
>  
> @@ -56,6 +57,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
>  
> +	frame->pc = ptrauth_strip_insn_pac(frame->pc);
> +
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>  	if (tsk->ret_stack &&
>  			(frame->pc == (unsigned long)return_to_handler)) {
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
