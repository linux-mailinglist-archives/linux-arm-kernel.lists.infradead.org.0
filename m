Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D40742F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 03:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdzHvY3jGCdBV1P3QNP/k6omTWHahoT0WB70o+YpdHY=; b=UmF/eqEOSth1JP
	CkakGzk9GTW5ikTCZyPlPgP/qjre8NGYZVj4istxUf2G8yRhr4Xq5EIcAsAme0emyCG2mvWptXA9m
	/K/8S53JECLIrH1+j4lSjCtzdtygWx3hICd2lGc7CCTlUuwxuQwwUL/5rvBVQtKhaVskkrFDVNWKm
	exa8GWdR3+YQTcy0CUzyHwkfjvx1fw8ppkA1QlTL/QpvnpCnCDFk2TAHZSkeDdsGvJ+0EB3Q24tmF
	I9uTB9XfSVi/j1I4njn/I91On0nHjxT2EDxL4kRImX/ErfJXeZvBSDfRg9S5NcDU30qheEGnZ23bf
	DjPfP5q3poFi577JHjHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqSm4-0004g3-Lr; Thu, 25 Jul 2019 01:42:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqSlq-0004fc-98
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 01:42:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so21849389pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 18:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LQf41Qf2MyEcGAlnCF9Sv7hDI8pxvRaGA0CXobFrUw4=;
 b=iRxxgKeR7cr+V++hP1PTKFiQqoGu3lDyaG67Q0HbnfgYus3nbKzY8UIizGiF8seN/s
 0dTw+JALQRKOo5V/c79A7FAzTuvukc6HS084DxljNZnDNvQYCEQl+ZAM3LLzrmIFHE0Q
 aVcrWaCeV/JSeAvEpzfBdPjfFtVje3wxxiMGaZWBT4tX+ncANg2SCZI06EEVlPQKvF1x
 YJzk590XLIcO2HI+ITddTp0jDw70V4DUthCzlqltJVRifpa1wd7tLS2zBULSKBW/5ex7
 vIC97zr6Lf8YuFtzgj9B79bTm7wpknpPZ0sokurfH/ebOcGmM5a2k/oqIVU41TrU+plQ
 pz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LQf41Qf2MyEcGAlnCF9Sv7hDI8pxvRaGA0CXobFrUw4=;
 b=GWtRtHb9NpfxVkh4hComNN8N97acu/mRKwSNZP0+k0A3s1/0zP/E2WXken6WIQ4WnZ
 COZJQOcrpHZoqBw1Aajl8JL1EQNU8z9nk/QAwuztFO8rJxfZ7eDzySN6Fbbb5y+N/64O
 ORxJOYS0s8g+GF4Uq0T2iVU0FAfX60Dz8SCXk3zXWQ6UKabULGo+FsZrBKe1xqGegIvY
 qLgP3fOe7K5idVR1TerEaZd7nUEL/3vEOLdHRdg0C896iGAAQMdPe8Nt2Puvuk6kY0fr
 rwXJP6q5I1RBUajSGhCXk6AsrFxJb5Fq/dlnil4TDYr8l/6y3sK7LYYYYnvTsUaowE2z
 IQNg==
X-Gm-Message-State: APjAAAXr/JP3OHk7jKbG/7aDaWgpyrOnWYVZH9YgUYglJ+RcJbcLFBKe
 iLZrpAe1peTB6Gy2g+42Hf4TMQ==
X-Google-Smtp-Source: APXvYqz7SxCnEnIwWDcY0tdro2KnRSLcWW6rNVOtl8l+IZj11PjrZsuZgMe9kckvrBuNewHBVXBgnA==
X-Received: by 2002:a63:9318:: with SMTP id b24mr73280689pge.31.1564018933093; 
 Wed, 24 Jul 2019 18:42:13 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([116.232.252.231])
 by smtp.gmail.com with ESMTPSA id o11sm79923453pfh.114.2019.07.24.18.42.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 18:42:12 -0700 (PDT)
Date: Thu, 25 Jul 2019 09:42:04 +0800
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
Subject: Re: [PATCH 1/2] arm64: Add support for function error injection
Message-ID: <20190725014125.GB6764@leoy-ThinkPad-X240s>
References: <20190716111301.1855-1-leo.yan@linaro.org>
 <20190716111301.1855-2-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716111301.1855-2-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_184214_384211_4818DC08 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jul 16, 2019 at 07:13:00PM +0800, Leo Yan wrote:
> This patch implement regs_set_return_value() and
> override_function_with_return() to support function error injection
> for arm64.
> 
> In the exception flow, arm64's general register x30 contains the value
> for the link register; so we can just update pt_regs::pc with it rather
> than redirecting execution to a dummy function that returns.
> 
> This patch is heavily inspired by the commit 7cd01b08d35f ("powerpc:
> Add support for function error injection").
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Catalin, Will:  Gentle ping ...

> ---
>  arch/arm64/Kconfig                       |  1 +
>  arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
>  arch/arm64/include/asm/ptrace.h          |  5 +++++
>  arch/arm64/lib/Makefile                  |  2 ++
>  arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
>  5 files changed, 40 insertions(+)
>  create mode 100644 arch/arm64/include/asm/error-injection.h
>  create mode 100644 arch/arm64/lib/error-inject.c
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..a6d9e622977d 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -142,6 +142,7 @@ config ARM64
>  	select HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_TRACER
> +	select HAVE_FUNCTION_ERROR_INJECTION
>  	select HAVE_FUNCTION_GRAPH_TRACER
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
> diff --git a/arch/arm64/include/asm/error-injection.h b/arch/arm64/include/asm/error-injection.h
> new file mode 100644
> index 000000000000..da057e8ed224
> --- /dev/null
> +++ b/arch/arm64/include/asm/error-injection.h
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
> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> index dad858b6adc6..3aafbbe218a2 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -294,6 +294,11 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
>  	return regs->regs[0];
>  }
>  
> +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> +{
> +	regs->regs[0] = rc;
> +}
> +
>  /**
>   * regs_get_kernel_argument() - get Nth function argument in kernel
>   * @regs:	pt_regs of that context
> diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> index 33c2a4abda04..f182ccb0438e 100644
> --- a/arch/arm64/lib/Makefile
> +++ b/arch/arm64/lib/Makefile
> @@ -33,3 +33,5 @@ UBSAN_SANITIZE_atomic_ll_sc.o	:= n
>  lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
>  
>  obj-$(CONFIG_CRC32) += crc32.o
> +
> +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> diff --git a/arch/arm64/lib/error-inject.c b/arch/arm64/lib/error-inject.c
> new file mode 100644
> index 000000000000..35661c2de4b0
> --- /dev/null
> +++ b/arch/arm64/lib/error-inject.c
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
> +	 * 'regs->regs[30]' contains the the link register for the probed
> +	 * function and assign it to 'regs->pc', so when kprobe returns
> +	 * back from exception it will override the end of probed function
> +	 * and drirectly return to the predefined function's caller.
> +	 */
> +	regs->pc = regs->regs[30];
> +}
> +NOKPROBE_SYMBOL(override_function_with_return);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
