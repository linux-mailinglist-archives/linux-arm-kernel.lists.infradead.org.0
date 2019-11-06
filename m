Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7213DF11E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMYswgWl4xguC0bQOiem5pvcPwGtoaMBFAdz1Opj+EI=; b=iHS8aufQL4WfvS
	ZpaUFcnyg8VM7E2v51gLNBIu6v8IvwoW52otFwFPPgysjA8+FOGj/71bA/tvilm95DF/608oIaH1n
	8R9GuKjPYd0XNMi8v+wfmAktVdNkq7Wk7UEPX4SvM9cQQfLEhug4c+NcWLEXphzWJhTYd++Uu1hQc
	YU1TR8sLBLjHcnF0WSlvtA9BenRI8CkKiY1lfforVHggAuHgM/XYo3ynTRjRPSZ1p/UpqRTtmSwPI
	VTVwUmsXHjjzTVUuDHiJ7wrcnLQ8v77VbSe74QK7t+pDKwM5RPLiloqlMVwuxIBjXP77miUDoc8ar
	BXYCG+JXuHahSgmTPgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHOO-0007zf-Pz; Wed, 06 Nov 2019 09:14:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHOH-0007yu-7F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOdQALz0m5WieFGaUz1ns1b04RuCs9AC7LJ76ZAlU8g=; b=PGPKVKzClKmB52+NYumu5YW9W
 qaQh7cG1XxzG/gZCfo8c9ti5kC2wGTkEM0az9+JS/AXaVOkSVT9GmSCnFaC7W3cA28LorvRuwp9kz
 8lX0gcWRcunHPEjyFl0t86cTDsP5e8+KM/4p+jMf9xRp3hcUL6e++GHkF09LwV8Hyp+J8elBt8t0U
 y7LrZ5nRNjRNeX7ttzWtY9MmFEro+7gmTzbsYha4tuUExMFolPfzeN7RmvP0u+NvJN7xTWWUMmhzA
 iu5jqDK47hh3s/ozrCQCbbpTtTsxZKBuWN36bA80rgkpTc5z+xuUIlrNdF0FTifarInFQi1YQVesa
 tNbH0EjvA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52522)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iSHNB-0003vt-DG; Wed, 06 Nov 2019 09:13:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iSHN5-0003wB-1z; Wed, 06 Nov 2019 09:12:59 +0000
Date: Wed, 6 Nov 2019 09:12:59 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
Message-ID: <20191106091258.GS25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-6-dima@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-6-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_011413_265344_C5578CC0 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, clang-built-linux@googlegroups.com,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:04:56AM +0000, Dmitry Safonov wrote:
> Currently, the log-level of show_stack() depends on a platform
> realization. It creates situations where the headers are printed with
> lower log level or higher than the stacktrace (depending on
> a platform or user).
> 
> Furthermore, it forces the logic decision from user to an architecture
> side. In result, some users as sysrq/kdb/etc are doing tricks with
> temporary rising console_loglevel while printing their messages.
> And in result it not only may print unwanted messages from other CPUs,
> but also omit printing at all in the unlucky case where the printk()
> was deferred.
> 
> Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
> an easier approach than introducing more printk buffers.
> Also, it will consolidate printings with headers.
> 
> Add log level argument to unwind_backtrace() as a preparation for
> introducing show_stack_loglvl().
> 
> As a good side-effect arm_syscall() is now printing errors with the same
> log level as the backtrace.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: clang-built-linux@googlegroups.com
> [1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
> Signed-off-by: Dmitry Safonov <dima@arista.com>
> ---
>  arch/arm/include/asm/unwind.h | 3 ++-
>  arch/arm/kernel/traps.c       | 6 +++---
>  arch/arm/kernel/unwind.c      | 7 ++++---
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
> index 6e282c33126b..0f8a3439902d 100644
> --- a/arch/arm/include/asm/unwind.h
> +++ b/arch/arm/include/asm/unwind.h
> @@ -36,7 +36,8 @@ extern struct unwind_table *unwind_table_add(unsigned long start,
>  					     unsigned long text_addr,
>  					     unsigned long text_size);
>  extern void unwind_table_del(struct unwind_table *tab);
> -extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk);
> +extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> +			     const char *loglvl);
>  
>  #endif	/* !__ASSEMBLY__ */
>  
> diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
> index 7c3f32b26585..69e35462c9e9 100644
> --- a/arch/arm/kernel/traps.c
> +++ b/arch/arm/kernel/traps.c
> @@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
>  #ifdef CONFIG_ARM_UNWIND
>  static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  {
> -	unwind_backtrace(regs, tsk);
> +	unwind_backtrace(regs, tsk, KERN_DEBUG);

Why demote this to debug level?  This is used as part of the kernel
panic message, surely we don't want this at debug level?  What about
the non-unwind version?

>  }
>  #else
>  static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> @@ -660,10 +660,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
>  	if (user_debug & UDBG_SYSCALL) {
>  		pr_err("[%d] %s: arm syscall %d\n",
>  		       task_pid_nr(current), current->comm, no);
> -		dump_instr("", regs);
> +		dump_instr(KERN_ERR, regs);
>  		if (user_mode(regs)) {
>  			__show_regs(regs);
> -			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
> +			c_backtrace(frame_pointer(regs), processor_mode(regs), KERN_ERR);
>  		}
>  	}
>  #endif
> diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
> index 0a65005e10f0..caaae1b6f721 100644
> --- a/arch/arm/kernel/unwind.c
> +++ b/arch/arm/kernel/unwind.c
> @@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
>  	return URC_OK;
>  }
>  
> -void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> +void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> +		      const char *loglvl)
>  {
>  	struct stackframe frame;
>  
> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);

Clearly, this isn't supposed to be part of the normal backtrace output...

Overall impression at this point is really not good.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
