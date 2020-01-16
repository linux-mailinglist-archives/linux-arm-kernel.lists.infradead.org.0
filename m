Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A24513F17C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X78hU4RnN+dA+SiCCBQBWh5hYN5iTAu4DsXN0JxNu40=; b=Rb4BkGeH34Ky0z
	KPH7VleJhKWm0QyyZEYpmI0t1+LIQoi+UyUaS+ipOv/DOZBLFI13ztk4KhoCsfWRzqDGW1dv2jqpO
	gsRMou3DOeJQvpIlmDDZ4fY8aFfsE1KZmBTBMf/SKpK+mJBn3XFF7bVvt6Zp6ab8ImvgEO0BZ9tdN
	9znaHwTy2vwkTzaKSonigt/b5+vT96IGQxEDPXkGkP3fcoBgDr9qd1e6kmZenHOypMpQbbK1WLuWi
	orprZtQPZZV/CYP+opCZdIX2GwrdOXdimKHGp8SLD136/q4G12n7jXzrXkrzEwhTokFSrWSyIOqxt
	fqrNjtYFyx6QHp+dem3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9sx-0005g0-44; Thu, 16 Jan 2020 18:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9A8-0002wj-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:42:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBF40246A4;
 Thu, 16 Jan 2020 17:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196551;
 bh=mgprMcwg5geRqmgaKiU1wuHYHMykWSduBoXMRAfD5oU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mgw6egZbi23SsHpczLIWPA2oAwGPyk1eHd0VM6m9t7cbSHqf6wpmF1ExXLBq+pIoS
 ao91bTU+o5nHjuJ5t+13jNG0TuB8o3S23+d9VEpLJq1SU98zND0ETuVrwom6LsbauM
 AfXlJFTytG/yjer33m8X2wJA8Wvp2M4SU906Ij2A=
Date: Thu, 16 Jan 2020 17:42:25 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v6 10/15] arm64: preserve x18 when CPU is suspended
Message-ID: <20200116174225.GC21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-11-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_094232_343933_13087654 
X-CRM114-Status: GOOD (  17.09  )
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

On Fri, Dec 06, 2019 at 02:13:46PM -0800, Sami Tolvanen wrote:
> Don't lose the current task's shadow stack when the CPU is suspended.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
> index 8939c87c4dce..0cde2f473971 100644
> --- a/arch/arm64/include/asm/suspend.h
> +++ b/arch/arm64/include/asm/suspend.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_SUSPEND_H
>  #define __ASM_SUSPEND_H
>  
> -#define NR_CTX_REGS 12
> +#define NR_CTX_REGS 13
>  #define NR_CALLEE_SAVED_REGS 12
>  
>  /*
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..5c8219c55948 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>  	mrs	x2, tpidr_el0
> @@ -73,6 +75,11 @@ alternative_endif
>  	stp	x8, x9, [x0, #48]
>  	stp	x10, x11, [x0, #64]
>  	stp	x12, x13, [x0, #80]
> +	/*
> +	 * Save x18 as it may be used as a platform register, e.g. by shadow
> +	 * call stack.
> +	 */
> +	str	x18, [x0, #96]
>  	ret
>  ENDPROC(cpu_do_suspend)
>  
> @@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
>  	ldp	x9, x10, [x0, #48]
>  	ldp	x11, x12, [x0, #64]
>  	ldp	x13, x14, [x0, #80]
> +	/*
> +	 * Restore x18, as it may be used as a platform register, and clear
> +	 * the buffer to minimize the risk of exposure when used for shadow
> +	 * call stack.
> +	 */
> +	ldr	x18, [x0, #96]
> +	str	xzr, [x0, #96]

Mumble, mumble, spectre-v4.

But I think it's fairly hopeless trying to fix that everywhere it crops up,
so:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
