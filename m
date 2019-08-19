Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A127C91FED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4gjHjKRjbqURUxXjVbbiZYnMXF9n/yMI3Ofx+89StE=; b=pse9Tp0XZS6RK4
	w5jhoLlnq3yGwD1Fqla3pbIlNtGu6ufnRq8xuE0ShPOiT0dFDDTU1Uj6iEmZL7EY90zKS71udDLQH
	6Ggk7yBFQQRnzNcl7Tt8VULHcSw/2sbW1fIuAbx7h8yDsLkjwQHaG25r39xs0aS5HuWo2Yj6ZA32x
	p0gUgEK62vi05P4TkKQKmk/rMjsejOqtmQ5mzX9fCgoAcJrMCd+yAikGHcmnKDVLtC595KNPHYlxn
	1x8wYcUaECNvGpJDKY7Rvq6dEQNOp2rfx7/T4pT4Iv5/G1j3vCGXPqjpWaOfE3WKE5IoDHaOAfyXz
	cGePa79mtwEdOLe1fGkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdpI-0001tt-Mx; Mon, 19 Aug 2019 09:19:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdnv-0001tM-Ev
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:18:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id h3so681885pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 02:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EWeFe61NjVZsw0MX6UC+IPTXiHZgyCfddwQtPOe4yOY=;
 b=Av/fd6DuCqD3aQRAuu8B6WDBiSNYnjii1FPfts2kGCg0+Twyjs8z1xa3zu6MSXgiem
 tAo6QbpvxAg2KVJEMqHi6UYQACJJ3s9UhZ5MACP9eBB2Al1xVVCEkQMjCrxHvZ8hhJvN
 yc/7GCDU+oFUp1rTrD9gnsdm8VHs5MN3pgPJJN5sRAlC3T1UbxW2kfXHBelS3eNkg6dT
 YZB4Giq1av/PaLZxx7E1TDh/FG61CZi35GpdySl8enyYAo1aklP5oo5St3A657Swuujf
 mjk7ATqw50OHlQ0LOo3AEaQLD32NVM8+dgiayh1JL8tH1CiK55wn/4UV9u9cZAiVi6sM
 BGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EWeFe61NjVZsw0MX6UC+IPTXiHZgyCfddwQtPOe4yOY=;
 b=iPk7SDkaX0CiMIgQjHOTwhOJnxucijq29Nrv8jOjDDSda3L8VK+4IqIqn6e03YP/mt
 Vosx9rvU++AoxJlhNp7od1Q9OudBsxH81fkrAn5oP4HNrcU3/lGZvRVDzmJpy1VXR5LI
 rUIFe+vjAZS5/X6Mi60kYgeuwR7Oc0l09r3Wn02e60YMrL5d89+cKan2wF0V/vh558fh
 JIPUvK83u2bOcypTsTAgFdbgDciyF/vbNAV158i8lSO8zSSY/qrXBr8YmQ6LuvhHEzQr
 xyCevgZCRYmuoSEoVfJQqXc5W8DleyZZskhxjWMiVRmDW2Sd6VMMU6kyOPSPrFbTLeqb
 VI8Q==
X-Gm-Message-State: APjAAAU3degw2f2FlIvG2l05YCrJAGg4BU0fR5hGmDhNb4I0z2R3VR1U
 O3L/o2zv2JdIkG3OD89MSuZUVQ==
X-Google-Smtp-Source: APXvYqxHZbQ6AKILK5r1gXP12qaqsKkN+4COxNlst8U8XzfUTS8V/tZT8lHFRS6rP/NugHkoh1oHyw==
X-Received: by 2002:a17:902:2bc5:: with SMTP id
 l63mr19077218plb.239.1566206298095; 
 Mon, 19 Aug 2019 02:18:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id d2sm11867796pjs.21.2019.08.19.02.18.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 02:18:17 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:18:08 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] arm: Add support for function error injection
Message-ID: <20190819091808.GB5599@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806100015.11256-4-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_021819_501036_9DE680B9 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> This patch implements arm specific functions regs_set_return_value() and
> override_function_with_return() to support function error injection.
> 
> In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> so can override the probed function return.

Gentle ping ...  Could you review this patch?

Thanks,
Leo.

> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm/Kconfig              |  1 +
>  arch/arm/include/asm/ptrace.h |  5 +++++
>  arch/arm/lib/Makefile         |  2 ++
>  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
>  4 files changed, 27 insertions(+)
>  create mode 100644 arch/arm/lib/error-inject.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 33b00579beff..2d3d44a037f6 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -77,6 +77,7 @@ config ARM
>  	select HAVE_EXIT_THREAD
>  	select HAVE_FAST_GUP if ARM_LPAE
>  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
>  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
>  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
>  	select HAVE_GCC_PLUGINS
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
> index b25c54585048..8f56484a7156 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> +
> +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> new file mode 100644
> index 000000000000..2d696dc94893
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
> +	 * function, when kprobe returns back from exception it will override
> +	 * the end of probed function and directly return to the predefined
> +	 * function's caller.
> +	 */
> +	instruction_pointer_set(regs, regs->ARM_lr);
> +}
> +NOKPROBE_SYMBOL(override_function_with_return);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
