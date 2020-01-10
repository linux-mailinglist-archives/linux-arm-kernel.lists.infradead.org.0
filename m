Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCD913663E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 05:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjiUkM6SeZfjZcVQWg/302xFsUoZsl6Q76TAx5fL3RM=; b=kBmJ7SJKQtgm/6
	+dx+uluuLjQ5M4YfZxB+ZL84T0hrD1Y1ED6Ck4vvhuRh52i8Ob5K+zJjCoqR4B6wjA77QGZUsNBKZ
	It288JoRd1FrCY7+kjh30K521Nn7OT3xpXwc5eFL8/JwP7i2aKZ/Kb63IPJ2IUHwjDXlFh+B2Bm4j
	LD1yh4cwH/gJ8ZO71JqQP09Q+dwzCkhXtMTaFnSGNP44DJZXg9a6rpEVh1x1pwjaRc4Tqp1ZM9y01
	BlXOZ+J/8GKpz+hJKCGr40NK6ZnuySEz/zDAnX26tNcF/EUHDhkmMaZugZAIRARRf8aqOsvxAfEBL
	4D86hWTxBi6ENCQSFzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipm0V-0001te-9a; Fri, 10 Jan 2020 04:34:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipm0N-0001t2-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 04:34:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46B581396;
 Thu,  9 Jan 2020 20:34:38 -0800 (PST)
Received: from [10.162.42.128] (p8cg001049571a15.blr.arm.com [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 55A623F6C4; Thu,  9 Jan 2020 20:34:34 -0800 (PST)
Subject: Re: [PATCH 12/17] arm64: debug-monitors: refactor MDSCR manipulation
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-13-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c616e5c0-301c-7c26-6954-9e287e6c9673@arm.com>
Date: Fri, 10 Jan 2020 10:05:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-13-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_203440_021267_460AE1C9 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> When we convert the ret_to_user/work_pending code to C, we're going to
> want to poke the MDSCR to enable/disable single-step. Let's factor out
> the existing code for this from debug-monitors.c.
> 
> At the same time, we can make use of {read,write}_sysreg() directly, and
> get rid of the mdscr_{read,write} wrappers.
> 
> The existing code masked DAIF when manipulating MDSCR_EL1, but this
> should not be necessary. Exceptions can be taken immediately before DAIF
> is masked, and given the lack of an ISB can also be taken after DAIF is
> unmasked as writes to DAIF are only self-synchronizing and not
> context-synchronizing in general. We may want to add an ISB to ensure
> that updates to MDSCR have taken effect, however.

Any reason this patch choose not add that ISB for now after writing
mdscr_el1 register via sysreg_clear_set().

> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/debug-monitors.h | 10 ++++++++++
>  arch/arm64/kernel/debug-monitors.c      | 32 +++++++-------------------------
>  2 files changed, 17 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index 7619f473155f..342867e50c54 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -107,6 +107,16 @@ enum dbg_active_el {
>  void enable_debug_monitors(enum dbg_active_el el);
>  void disable_debug_monitors(enum dbg_active_el el);
>  
> +static __always_inline void __enable_single_step_nosync(void)
> +{
> +	sysreg_clear_set(mdscr_el1, 0, DBG_MDSCR_SS);
> +}
> +
> +static __always_inline void __disable_single_step_nosync(void)
> +{
> +	sysreg_clear_set(mdscr_el1, DBG_MDSCR_SS, 0);
> +}
> +
>  void user_rewind_single_step(struct task_struct *task);
>  void user_fastforward_single_step(struct task_struct *task);
>  
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..fa2d4145bd07 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -32,24 +32,6 @@ u8 debug_monitors_arch(void)
>  }
>  
>  /*
> - * MDSCR access routines.
> - */
> -static void mdscr_write(u32 mdscr)
> -{
> -	unsigned long flags;
> -	flags = local_daif_save();
> -	write_sysreg(mdscr, mdscr_el1);
> -	local_daif_restore(flags);
> -}
> -NOKPROBE_SYMBOL(mdscr_write);
> -
> -static u32 mdscr_read(void)
> -{
> -	return read_sysreg(mdscr_el1);
> -}
> -NOKPROBE_SYMBOL(mdscr_read);
> -
> -/*
>   * Allow root to disable self-hosted debug from userspace.
>   * This is useful if you want to connect an external JTAG debugger.
>   */
> @@ -91,9 +73,9 @@ void enable_debug_monitors(enum dbg_active_el el)
>  		enable |= DBG_MDSCR_KDE;
>  
>  	if (enable && debug_enabled) {
> -		mdscr = mdscr_read();
> +		mdscr = read_sysreg(mdscr_el1);
>  		mdscr |= enable;
> -		mdscr_write(mdscr);
> +		write_sysreg(mdscr, mdscr_el1);
>  	}
>  }
>  NOKPROBE_SYMBOL(enable_debug_monitors);
> @@ -112,9 +94,9 @@ void disable_debug_monitors(enum dbg_active_el el)
>  		disable &= ~DBG_MDSCR_KDE;
>  
>  	if (disable) {
> -		mdscr = mdscr_read();
> +		mdscr = read_sysreg(mdscr_el1);
>  		mdscr &= disable;
> -		mdscr_write(mdscr);
> +		write_sysreg(mdscr, mdscr_el1);
>  	}
>  }
>  NOKPROBE_SYMBOL(disable_debug_monitors);
> @@ -409,7 +391,7 @@ void kernel_enable_single_step(struct pt_regs *regs)
>  {
>  	WARN_ON(!irqs_disabled());
>  	set_regs_spsr_ss(regs);
> -	mdscr_write(mdscr_read() | DBG_MDSCR_SS);
> +	__enable_single_step_nosync();
>  	enable_debug_monitors(DBG_ACTIVE_EL1);
>  }
>  NOKPROBE_SYMBOL(kernel_enable_single_step);
> @@ -417,7 +399,7 @@ NOKPROBE_SYMBOL(kernel_enable_single_step);
>  void kernel_disable_single_step(void)
>  {
>  	WARN_ON(!irqs_disabled());
> -	mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
> +	__disable_single_step_nosync();
>  	disable_debug_monitors(DBG_ACTIVE_EL1);
>  }
>  NOKPROBE_SYMBOL(kernel_disable_single_step);
> @@ -425,7 +407,7 @@ NOKPROBE_SYMBOL(kernel_disable_single_step);
>  int kernel_active_single_step(void)
>  {
>  	WARN_ON(!irqs_disabled());
> -	return mdscr_read() & DBG_MDSCR_SS;
> +	return read_sysreg(mdscr_el1) & DBG_MDSCR_SS;
>  }
>  NOKPROBE_SYMBOL(kernel_active_single_step);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
