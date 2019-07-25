Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0064C742FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 03:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bp3YB1f2JRGwlg1Us3ktZw1DpF0HbH7Utxa1dZEsHO4=; b=cbDb9762hlEKlF
	YRSb77IvaOOg2Lk8Ns6gwl8ueikmAxCi75n8Rs+gju0HyfieF+b5zvz5mI06HVnUiLwpEV0LJOx6V
	ty24fWkWqp0CONy3Rz69W3wZqxCkPS6Xq9Afz77jFPFJjgRQRtbzx8ISLJhmg7Lq2X++uNFFBO9t1
	LuYlMjniDDslXhp1pG1N6+HixcPl+XlIHX2wXnKqwYKrtCIPdmEaAiKhzWliFosLtUqTzomDymQNC
	RKke81PxfMInPITw6rrpNYpLkri44Q2QmAUxqqAwrF1xvECeVe2Tn/4YO63UomTCGKKpkY4BBz1e3
	DDg+54mw8KuQFLxvQz+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqSsh-0006VD-PU; Thu, 25 Jul 2019 01:49:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqSsV-0006UF-KX
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 01:49:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id c73so21838848pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 18:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jiFDcwQiGaN6vJB6KlbsTelIXNEPU4EhhSM8eaDwe28=;
 b=NEk+K/M4XoXRNkaimXAp55fFnW3FG5JYc3y4ElmVcnygNevbCkm7g12T2gZIawjH2m
 ervX0znf3v+LokRvX8HvRYRZl/+E9WIpAoEOw7CYj2MriWSfdJygVGODxCuUvmiXdEXX
 RxDDWIzRbhS1RMdFp9h7dgJ5HPvZOYNZiOC0FrRLge9QjYDB9mZb32tTG9bnJ4J1Cwlf
 9zFbjngKQdACK2PH8tc2nnDIp0V5gB6EXixQ18pjnff+elGrh5duFnjWXbo2SlVAz9e/
 jSE3gdzud8A+T/nJBAC8R4eyxE9JDvqa7P4h1FWmp3l493GQEiQ/xOG7MRT1m9wLsv3d
 Rb0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jiFDcwQiGaN6vJB6KlbsTelIXNEPU4EhhSM8eaDwe28=;
 b=Syi/+slWIivxIVHpFLB3jPnm7AlIEdK230OTnKFkN019Pw1nMgQOaYcZreAW/dM1co
 l2tx2nWl9T6+uep5H27p40xlWKxGqdqmSg2cvWykUnH5EHBybiUkHJKFLWLe9z2kDjna
 smv2vC11AlLZCHaT8Zb/VomCbOwsror5+zusF3R7TPPjCJOlOMngoQWgY++rE7N1Q7mP
 wufsyvTtcBsPG6NCmsD7FZhWvHxkAJAzLnGzxcSBioGSGmZTdusH8RnLCBd7jdKVv/NK
 Wpy4wuoWtxN30HObJAIcmVsXXaS/4KLvpwtjl4Ba76ysUUNw4ynl/DEe+eKGDJb5mA1o
 qOtw==
X-Gm-Message-State: APjAAAVthGn01IYmEPK2lUNxAwnPkRPldY434di7wg0ar9nvhyPNUSFG
 LtQ2vuwcgmqnNlyVvXcfCwThSw==
X-Google-Smtp-Source: APXvYqw8jGLemfwZZMgQ9iTqUNH6yOhQwK3TZ3iENKJ2ax2lB0hZ9iGxiJLocXHtOSry7RDr1MmsXw==
X-Received: by 2002:a65:5144:: with SMTP id g4mr31637451pgq.202.1564019344033; 
 Wed, 24 Jul 2019 18:49:04 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([240e:e0:f090:3aa1:9c84:f7b8:9214:6096])
 by smtp.gmail.com with ESMTPSA id e124sm75939006pfh.181.2019.07.24.18.48.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 18:49:03 -0700 (PDT)
Date: Thu, 25 Jul 2019 09:48:32 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Justin He <Justin.He@arm.com>
Subject: Re: [PATCH 2/2] arm: Add support for function error injection
Message-ID: <20190725014416.GC6764@leoy-ThinkPad-X240s>
References: <20190716111301.1855-1-leo.yan@linaro.org>
 <20190716111301.1855-3-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716111301.1855-3-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_184907_707014_D2940C80 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Jul 16, 2019 at 07:13:01PM +0800, Leo Yan wrote:
> This patch implement regs_set_return_value() and
> override_function_with_return() to support function error injection
> for arm.
> 
> In the exception flow, we can update pt_regs::ARM_pc with
> pt_regs::ARM_lr so that can override the probed function return.

Gentle ping.

> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm/Kconfig                       |  1 +
>  arch/arm/include/asm/error-injection.h | 13 +++++++++++++
>  arch/arm/include/asm/ptrace.h          |  5 +++++
>  arch/arm/lib/Makefile                  |  2 ++
>  arch/arm/lib/error-inject.c            | 19 +++++++++++++++++++
>  5 files changed, 40 insertions(+)
>  create mode 100644 arch/arm/include/asm/error-injection.h
>  create mode 100644 arch/arm/lib/error-inject.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 8869742a85df..f7932a5e29ea 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -74,6 +74,7 @@ config ARM
>  	select HAVE_EFFICIENT_UNALIGNED_ACCESS if (CPU_V6 || CPU_V6K || CPU_V7) && MMU
>  	select HAVE_EXIT_THREAD
>  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
>  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
>  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
>  	select HAVE_GCC_PLUGINS
> diff --git a/arch/arm/include/asm/error-injection.h b/arch/arm/include/asm/error-injection.h
> new file mode 100644
> index 000000000000..da057e8ed224
> --- /dev/null
> +++ b/arch/arm/include/asm/error-injection.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +
> +#ifndef __ASM_ERROR_INJECTION_H_
> +#define __ASM_ERROR_INJECTION_H_
> +
> +#include <linux/compiler.h>
> +#include <linux/linkage.h>
> +#include <asm/ptrace.h>
> +#include <asm-generic/error-injection.h>
> +
> +void override_function_with_return(struct pt_regs *regs);
> +
> +#endif /* __ASM_ERROR_INJECTION_H_ */
> diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> index 91d6b7856be4..3b41f37b361a 100644
> --- a/arch/arm/include/asm/ptrace.h
> +++ b/arch/arm/include/asm/ptrace.h
> @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
>  	return regs->ARM_r0;
>  }
>  
> +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> +{
> +	regs->ARM_r0 = rc;
> +}
> +
>  #define instruction_pointer(regs)	(regs)->ARM_pc
>  
>  #ifdef CONFIG_THUMB2_KERNEL
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 0bff0176db2c..d3d7430ecd76 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -43,3 +43,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> +
> +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> new file mode 100644
> index 000000000000..96319d017114
> --- /dev/null
> +++ b/arch/arm/lib/error-inject.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/error-injection.h>
> +#include <linux/kprobes.h>
> +
> +void override_function_with_return(struct pt_regs *regs)
> +{
> +	/*
> +	 * 'regs' represents the state on entry of a predefined function in
> +	 * the kernel/module and which is captured on a kprobe.
> +	 *
> +	 * 'regs->ARM_lr' contains the the link register for the probed
> +	 * function and assign it to 'regs->ARM_pc', so when kprobe returns
> +	 * back from exception it will override the end of probed function
> +	 * and drirectly return to the predefined function's caller.
> +	 */
> +	regs->ARM_pc = regs->ARM_lr;
> +}
> +NOKPROBE_SYMBOL(override_function_with_return);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
