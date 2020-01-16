Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4234B13F40E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zijt565HwlOqdv7WyiF8p7QQpxn+KWrKFej2DIIAKfs=; b=MnXbQly5v4nFYC
	qhbhsiLFKTSbuYPk606UPMXJS6YPDO8dS+XDTIxRPhWnFW9QB0iWdPa8QPU5uh+iqQ/gRSNgjOI1L
	A7t+YMif83f5RuYkdGX2PIJlZAhvOnNdKM2UFJDspAdYuOEjq41UBwpnnitUFneUo8/FPpKU1euaw
	o02CeEkIJn4qoMJPNdv5U+eXmS2AUS1FhBJwjQUznnPy7bm0P5mdavRUA6tXUiKGc5zOdKSEDOY0a
	f6erT26h5xIKVaDdTOX9Hxxpj+5LAsa5YhncI3NPJxwPv7jLniMjnUX05JNKfcoIcPs/2LMf82KGO
	dYk1S6oivZHtoYanMnHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAB9-00027T-Bi; Thu, 16 Jan 2020 18:47:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9ob-0000sI-Qu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:24:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DBED20684;
 Thu, 16 Jan 2020 18:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579199061;
 bh=i3X7g6e5IWVSb2ig5J3pyxSFVme9xcgEpRgpwwyT7y0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2lKYCD0WLm3yh5hflSvOoz1YmRKTSBKkclTs5ld6unkAjonC1Y+tIkvepq+xbrn9U
 oaYQxLTjOd8a75YAl2ytpep4WZYPqO61mgWrMmzeAeo2d6nDQ1kTKV6vUkVLcBmJnA
 C4B1lWD83B/LjZENzIt/YiRwplWzrI6kKIAiGuDU=
Date: Thu, 16 Jan 2020 18:24:15 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v6 14/15] arm64: implement Shadow Call Stack
Message-ID: <20200116182414.GC22420@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-15-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102421_950513_66849535 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 02:13:50PM -0800, Sami Tolvanen wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig                   |  5 ++++
>  arch/arm64/include/asm/scs.h         | 37 +++++++++++++++++++++++++
>  arch/arm64/include/asm/thread_info.h |  3 +++
>  arch/arm64/kernel/Makefile           |  1 +
>  arch/arm64/kernel/asm-offsets.c      |  3 +++
>  arch/arm64/kernel/entry.S            | 31 +++++++++++++++++++--
>  arch/arm64/kernel/head.S             |  9 +++++++
>  arch/arm64/kernel/irq.c              |  2 ++
>  arch/arm64/kernel/process.c          |  2 ++
>  arch/arm64/kernel/scs.c              | 40 ++++++++++++++++++++++++++++
>  arch/arm64/kernel/smp.c              |  4 +++
>  11 files changed, 135 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/include/asm/scs.h
>  create mode 100644 arch/arm64/kernel/scs.c

[...]

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 583f71abbe98..7aa2d366b2df 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -172,6 +172,10 @@ alternative_cb_end
>  
>  	apply_ssbd 1, x22, x23
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
> +	str	xzr, [tsk, #TSK_TI_SCS]		// Limit visibility of saved SCS
> +#endif
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_current_task tsk
> @@ -280,6 +284,12 @@ alternative_else_nop_endif
>  	ct_user_enter
>  	.endif
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	.if	\el == 0
> +	str	x18, [tsk, #TSK_TI_SCS]		// Save shadow call stack
> +	.endif
> +#endif
> +
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>  	/*
>  	 * Restore access to TTBR0_EL1. If returning to EL0, no need for SPSR
> @@ -385,6 +395,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  
>  	.macro	irq_stack_entry
>  	mov	x19, sp			// preserve the original sp
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	mov	x20, x18		// preserve the original shadow stack
> +#endif

Hmm, not sure about corrupting x20 here. Doesn't it hold the PMR value from
kernel_entry?

Rest of the patch looks ok, but I'll do a proper review when it's closer to
being merged as we've got a bunch of other entry changes in the pipeline.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
