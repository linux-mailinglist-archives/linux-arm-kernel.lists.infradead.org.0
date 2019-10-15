Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42501D79A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVnMQTTjAdY9YOQpiiOOjq9AjbtLOsbBGoEwAIlJQx8=; b=qoRQ05eVZDwFpg
	egOno2Xx4FCexbV+yCjWhxtq+REcGZtkrtBtPulFaCvo79NdOkBsiIODGW2hCvGVXgTxJHlelS1Pz
	/S9PS5dbnvZ9Ef040+RH0TEoo/uqZbL+eqqevmdK0BAapDsNP8cWvPTonMtCw/hpTpjHEp1PJqjfI
	kXBk0V4vqkDPbkccmYBwu6J6ah6xdhuFK4VYZ7FjXNucOYHUo8YkTFmpCJKzWQe0jSMM3mp56dojz
	8a4ZF5wVJ+doWGTdz1olyExewGeiSTSa5KC1hnp2duv5+/IYxvOsNmF7KydOEfR333575oetmQIKa
	mwDCQZqTS42T+aBC6aZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOdd-0006Rt-TO; Tue, 15 Oct 2019 15:21:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOdQ-0006PQ-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:21:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AEF528;
 Tue, 15 Oct 2019 08:21:14 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53A473F718;
 Tue, 15 Oct 2019 08:21:11 -0700 (PDT)
Date: Tue, 15 Oct 2019 16:21:09 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 09/12] arm64: traps: Fix inconsistent faulting
 instruction skipping
Message-ID: <20191015152108.GX27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-10-git-send-email-Dave.Martin@arm.com>
 <20191011152453.GF33537@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011152453.GF33537@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_082116_749963_679B2E5F 
X-CRM114-Status: GOOD (  30.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 04:24:53PM +0100, Mark Rutland wrote:
> On Thu, Oct 10, 2019 at 07:44:37PM +0100, Dave Martin wrote:
> > Correct skipping of an instruction on AArch32 works a bit
> > differently from AArch64, mainly due to the different CPSR/PSTATE
> > semantics.
> > 
> > There have been various attempts to get this right.  Currenty
> > arm64_skip_faulting_instruction() mostly does the right thing, but
> > does not advance the IT state machine for the AArch32 case.
> > 
> > arm64_compat_skip_faulting_instruction() handles the IT state
> > machine but is local to traps.c, and porting other code to use it
> > will make a mess since there are some call sites that apply for
> > both the compat and native cases.
> > 
> > Since manual instruction skipping implies a trap, it's a relatively
> > slow path.
> > 
> > So, make arm64_skip_faulting_instruction() handle both compat and
> > native, and get rid of the arm64_compat_skip_faulting_instruction()
> > special case.
> > 
> > Fixes: 32a3e635fb0e ("arm64: compat: Add CNTFRQ trap handler")
> > Fixes: 1f1c014035a8 ("arm64: compat: Add condition code checks and IT advance")
> > Fixes: 6436beeee572 ("arm64: Fix single stepping in kernel traps")
> > Fixes: bd35a4adc413 ("arm64: Port SWP/SWPB emulation support from arm")
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > ---
> >  arch/arm64/kernel/traps.c | 18 ++++++++----------
> >  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> This looks good to me; it's certainly easier to reason about.
> 
> I couldn't spot a place where we do the wrong thing today, given AFAICT
> all the instances in arch/arm64/kernel/armv8_deprecated.c would be
> UNPREDICTABLE within an IT block.
> 
> It might be worth calling out an example in the commit message to
> justify the fixes tags.

IIRC I found no bug here; rather we have pointlessly fragmented code,
so I followed the "if fixing the same bug in multiple places, merge
those places so you need only fix it in one place next time" rule.

Since arm64_skip_faulting_instruction() is most of the way to being
generically usable anyway, this series merges all the special-case
handling into it.

I could add something like

--8<--

This allows this fiddly operation to be maintained in a single
place rather than trying to maintain fragmented versions spread
around arch/arm64.

-->8--

Any good?

Cheers
---Dave

[...]

> > 
> > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > index 15e3c4f..44c91d4 100644
> > --- a/arch/arm64/kernel/traps.c
> > +++ b/arch/arm64/kernel/traps.c
> > @@ -268,6 +268,8 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
> >  	}
> >  }
> >  
> > +static void advance_itstate(struct pt_regs *regs);
> > +
> >  void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
> >  {
> >  	regs->pc += size;
> > @@ -278,6 +280,9 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
> >  	 */
> >  	if (user_mode(regs))
> >  		user_fastforward_single_step(current);
> > +
> > +	if (regs->pstate & PSR_MODE32_BIT)
> > +		advance_itstate(regs);
> >  }
> >  
> >  static LIST_HEAD(undef_hook);
> > @@ -629,19 +634,12 @@ static void advance_itstate(struct pt_regs *regs)
> >  	compat_set_it_state(regs, it);
> >  }
> >  
> > -static void arm64_compat_skip_faulting_instruction(struct pt_regs *regs,
> > -						   unsigned int sz)
> > -{
> > -	advance_itstate(regs);
> > -	arm64_skip_faulting_instruction(regs, sz);
> > -}
> > -
> >  static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
> >  {
> >  	int reg = (esr & ESR_ELx_CP15_32_ISS_RT_MASK) >> ESR_ELx_CP15_32_ISS_RT_SHIFT;
> >  
> >  	pt_regs_write_reg(regs, reg, arch_timer_get_rate());
> > -	arm64_compat_skip_faulting_instruction(regs, 4);
> > +	arm64_skip_faulting_instruction(regs, 4);
> >  }
> >  
> >  static const struct sys64_hook cp15_32_hooks[] = {
> > @@ -661,7 +659,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
> >  
> >  	pt_regs_write_reg(regs, rt, lower_32_bits(val));
> >  	pt_regs_write_reg(regs, rt2, upper_32_bits(val));
> > -	arm64_compat_skip_faulting_instruction(regs, 4);
> > +	arm64_skip_faulting_instruction(regs, 4);
> >  }
> >  
> >  static const struct sys64_hook cp15_64_hooks[] = {
> > @@ -682,7 +680,7 @@ asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
> >  		 * There is no T16 variant of a CP access, so we
> >  		 * always advance PC by 4 bytes.
> >  		 */
> > -		arm64_compat_skip_faulting_instruction(regs, 4);
> > +		arm64_skip_faulting_instruction(regs, 4);
> >  		return;
> >  	}
> >  
> > -- 
> > 2.1.4
> > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
