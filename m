Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5D9192944
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdksPqoAn1QsUkWS8OUf71Rz1YKScrvK0zQp6NPCQh4=; b=LnrNz2zL3hJfMd
	O4o2PW//VJX/ha4LNAukEMYuHmUvp8la6xq+afgHDhT3tGr5vxYS5woxU7GbSvXjWllHgjkJv/RQF
	yvDHOoffy+kgNQIfZcWgYEd3PIeznC+pFr19KqlGfDa9O42iVTPEhdJkuzwmruRQlDbOLMEkWB3+y
	JyMNBh3goRY7mZN0cqQw5Q9OrJCrkLENPtnwgMH2UI/BjNaLZxxtCTWYNc0TY2LWVpiBTdS1PGPn4
	hV1jN8MCe+Pbd4W/Lw67VZ62p/nTg17e/3+jcXmT8iO0zUSd/ZeWVvR6VVY0cuSF9YQV7Ugj75V5G
	nzU+K01ej2ZQEDecIkYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5np-0005pG-V4; Wed, 25 Mar 2020 13:10:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5ng-0005oY-KM
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:10:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EBF831B;
 Wed, 25 Mar 2020 06:10:27 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 555003F71F;
 Wed, 25 Mar 2020 06:10:26 -0700 (PDT)
Date: Wed, 25 Mar 2020 13:10:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200325131023.GN3901@mbp>
References: <20200312171755.177743-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312171755.177743-1-pcc@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_061028_759349_B1C07011 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Thu, Mar 12, 2020 at 10:17:55AM -0700, Peter Collingbourne wrote:
> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> index fde59981445ca..290ea59c68b85 100644
> --- a/arch/arm64/kernel/entry-common.c
> +++ b/arch/arm64/kernel/entry-common.c
> @@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
>  	unsigned long far = read_sysreg(far_el1);
>  
>  	local_daif_inherit(regs);
> -	far = untagged_addr(far);
>  	do_mem_abort(far, esr, regs);
>  }
>  NOKPROBE_SYMBOL(el1_abort);

Would we get a signal on faults triggered by the kernel? Anyway, I'm
fine with this change for consistency and may help with the fault
information printed by the kernel with khwasan or (later) MTE.

> @@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
>  
>  	user_exit_irqoff();
>  	local_daif_restore(DAIF_PROCCTX);
> -	far = untagged_addr(far);
>  	do_mem_abort(far, esr, regs);
>  }
>  NOKPROBE_SYMBOL(el0_da);
> diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
> index 0b727edf41046..985cd44decf62 100644
> --- a/arch/arm64/kernel/hw_breakpoint.c
> +++ b/arch/arm64/kernel/hw_breakpoint.c
> @@ -730,7 +730,7 @@ static u64 get_distance_from_watchpoint(unsigned long addr, u64 val,
>  		return 0;
>  }
>  
> -static int watchpoint_handler(unsigned long addr, unsigned int esr,
> +static int watchpoint_handler(unsigned long far, unsigned int esr,
>  			      struct pt_regs *regs)
>  {
>  	int i, step = 0, *kernel_step, access, closest_match = 0;
> @@ -741,6 +741,7 @@ static int watchpoint_handler(unsigned long addr, unsigned int esr,
>  	struct debug_info *debug_info;
>  	struct arch_hw_breakpoint *info;
>  	struct arch_hw_breakpoint_ctrl ctrl;
> +	unsigned long addr = untagged_addr(far);
>  
>  	slots = this_cpu_ptr(wp_on_reg);
>  	debug_info = &current->thread.debug;

Why do we need to untag this here? Have you hit any bug? This function
gets the original FAR_EL1 value, untagged (via elX_dbg()), and we clear
the tag further down in get_distance_from_watchpoint().

> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a915..48e8b6c7b5369 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
>  
>  	unsigned long fpsimd_offset;
>  	unsigned long esr_offset;
> +	unsigned long far_offset;
>  	unsigned long sve_offset;
>  	unsigned long extra_offset;
>  	unsigned long end_offset;
> @@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
>  			break;
>  
>  		case ESR_MAGIC:
> +		case FAR_MAGIC:
>  			/* ignore */
>  			break;
>  
> @@ -581,6 +583,11 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
>  				     sizeof(struct esr_context));
>  		if (err)
>  			return err;
> +
> +		err = sigframe_alloc(user, &user->far_offset,
> +				     sizeof(struct far_context));
> +		if (err)
> +			return err;

It looks fine, I think it makes sense to only expose the raw FAR_EL1
when we also expose the ESR_EL1 (via set_thread_esr()).

> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 85566d32958f5..2ca2de1ff43be 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -41,7 +41,7 @@
>  #include <asm/traps.h>
>  
>  struct fault_info {
> -	int	(*fn)(unsigned long addr, unsigned int esr,
> +	int	(*fn)(unsigned long far, unsigned int esr,
>  		      struct pt_regs *regs);
>  	int	sig;
>  	int	code;
> @@ -320,9 +320,11 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
>  	die_kernel_fault(msg, addr, esr, regs);
>  }
>  
> -static void set_thread_esr(unsigned long address, unsigned int esr)
> +static void set_thread_esr(unsigned long far, unsigned int esr)

We might as well rename this to set_thread_far_esr().

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
