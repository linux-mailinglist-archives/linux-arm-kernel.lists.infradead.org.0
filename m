Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A0A63753
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gDBfkvMsBtptwg4bYgBa1SWDTDDEkMAPEgbZDncnZc=; b=iNGSZVSJvibE8a
	Z1WoP9DNo4VdxIklobqLL5OG/HV1clJQwdrpHQkvuFXppYA0VNbgus0EdtbIs3J3u8oEgyDImhPM0
	cPprV4DyIWX/eKw7j3NwcKunZsPZ+RmbgWmO6TdLCmD2QPG0N6qiQhgnoFkH8nvIqckfWmXEqfz0H
	A+sS6upTfXYybwixhka5LOnle3JvEszXlYeAUoTRpWBFZzibLiJsVlr1ywvaAKlxm3sZ4/NGkXzAj
	9hxqjqjWZqgyT0fZPLUJLAIyO7xgX9kl8gbE/VIpBfOnSGQere20ADLyZy68tMoLfKVu9bHAu6ZPj
	e3cdioj+3Fc1+S2XLVTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqbU-0001RG-PG; Tue, 09 Jul 2019 13:56:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqbI-0001Pz-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:56:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBA7328;
 Tue,  9 Jul 2019 06:56:04 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E5953F738;
 Tue,  9 Jul 2019 06:56:03 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:55:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] arm64: Explicitly set pstate.ssbs for el0 on kernel entry
Message-ID: <20190709135557.GA10123@lakrids.cambridge.arm.com>
References: <1562671333-3563-1-git-send-email-neeraju@codeaurora.org>
 <62c4fed5-39ac-adc9-3bc5-56eb5234a9d1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62c4fed5-39ac-adc9-3bc5-56eb5234a9d1@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_065608_743499_A16164CC 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: parthd@codeaurora.org, julien.thierry@arm.com, gkohli@codeaurora.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, will@kernel.org, Neeraj Upadhyay <neeraju@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Tue, Jul 09, 2019 at 02:08:28PM +0100, Marc Zyngier wrote:
> From 7d4314d1ef3122d8bf56a7ef239c8c68e0c81277 Mon Sep 17 00:00:00 2001
> From: Marc Zyngier <marc.zyngier@arm.com>
> Date: Tue, 4 Jun 2019 17:35:18 +0100
> Subject: [PATCH] arm64: Force SSBS on context switch
> 
> On a CPU that doesn't support SSBS, PSTATE[12] is RES0.  In a system
> where only some of the CPUs implement SSBS, we end-up losing track of
> the SSBS bit across task migration.
> 
> To address this issue, let's force the SSBS bit on context switch.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/processor.h | 14 ++++++++++++--
>  arch/arm64/kernel/process.c        | 14 ++++++++++++++
>  2 files changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index fd5b1a4efc70..844e2964b0f5 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -193,6 +193,16 @@ static inline void start_thread_common(struct pt_regs *regs, unsigned long pc)
>  		regs->pmr_save = GIC_PRIO_IRQON;
>  }
>  
> +static inline void set_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_SSBS_BIT;
> +}
> +
> +static inline void set_compat_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_AA32_SSBS_BIT;
> +}
> +
>  static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>  				unsigned long sp)
>  {
> @@ -200,7 +210,7 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>  	regs->pstate = PSR_MODE_EL0t;
>  
>  	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_SSBS_BIT;
> +		set_ssbs_bit(regs);
>  
>  	regs->sp = sp;
>  }
> @@ -219,7 +229,7 @@ static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
>  #endif
>  
>  	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_AA32_SSBS_BIT;
> +		set_compat_ssbs_bit(regs);
>  
>  	regs->compat_sp = sp;
>  }
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 9856395ccdb7..d451b3b248cf 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -442,6 +442,19 @@ void uao_thread_switch(struct task_struct *next)
>  	}
>  }
>  
> +static void ssbs_thread_switch(struct task_struct *next)
> +{
> +	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
> +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
> +		struct pt_regs *regs = task_pt_regs(next);
> +
> +		if (compat_user_mode(regs))
> +			set_compat_ssbs_bit(regs);
> +		else if (user_mode(regs))
> +			set_ssbs_bit(regs);
> +	}
> +}

I think this isn't quite right, and it's not always safe to call
task_pt_regs() on a task.

For user tasks, the kernel stack looks like:

  +---------+ <=== task_stack_page(tsk) + THREAD_SIZE;
  |         |
  | pt_regs |
  |         |
  +---------+ <=== task_pt_regs(tsk)
  |         |
  |         |
  |         |
  |  stack  |
  |         |
  |         |
  |         |
  +---------+ <=== task_stack_page(tsk)

... where:

#define task_pt_regs(p) \
	((struct pt_regs *)(THREAD_SIZE + task_stack_page(p)) - 1)

... and in copy_thread() we initialize a new tsk's SP to start at
task_pt_regs(tsk).

However, in __cpu_up() we start the idle threads stacks without the
pt_regs bias, at task_stack_page(tsk) + THREAD_SIZE. Likewise for the
initial thread in __primary_switched(). So task_pt_regs(idle) will
return an aliasing portion of stack, rather than a pt_regs.

So when switching to those, we'll look at unrelated stack, and corrupt
it.

We could add a pt_regs bias to those to prevent stack corruption, though
assuming stacks are zero-initialized, user_mode(task_pt_regs(tsk))
should always be true, since:

#define PSR_MODE_EL0t      0x00000000

#define user_mode(regs) \
	(((regs)->pstate & PSR_MODE_MASK) == PSR_MODE_EL0t)

We could:

(a) Check for PF_KTRHEAD in ssbs_thread_switch(), and skip when this is set.

(b) Add the pt_regs bias to all stacks, and not care about the pointless
    manipulation of the junk regs.

(c) Make task_pt_regs() return NULL for kthreads, and fix up the fallout. I'm
    very tempted to do this longer term even if we do (a) or (b) for now.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
