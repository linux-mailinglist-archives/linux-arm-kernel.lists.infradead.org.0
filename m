Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542056CBBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcnASE+Myqww2IOsOjrdZiYjAevPWw1oGKSpOtVsZRg=; b=h4sIK12JDVol7e
	z9pfRlGH+28+FJ2DeYM+B7q2a1TAPp60eEnWpvku4XLGeokPc2uqiZ0dtZtNY3cboi24Gpy0X+D7k
	tVnR/6wHDRcCU//P/K/5VgcZ7f4pjoS70WjdVJ0eG9ejafmoCf7UIm9shaaTAxsUccSlgW64zCl91
	cJXmWeWz2vRprQP89ywuTbW02+UFAIHvY5gPuNCBGs7lcjZk1ibXC/uh5kFR5wr97MV57kwLQzPr1
	rkrXOZK/RU/FS3xkrbAeteVEVlcl5HUL/lXjpC7KtHTCGol7g7kZovLCEGChlCXT43LuxlCj/ayHj
	BN1hufFw9WHOyW92U9lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2ao-0007u6-Ti; Thu, 18 Jul 2019 09:20:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2aZ-0007tC-Ck
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:20:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC5C128;
 Thu, 18 Jul 2019 02:20:32 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 478A33F71A;
 Thu, 18 Jul 2019 02:20:30 -0700 (PDT)
Date: Thu, 18 Jul 2019 10:20:23 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug
 exception
Message-ID: <20190718092022.GA3625@blommer>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342863822.8565.7624877983728871995.stgit@devnote2>
 <20190718062215.GG14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718062215.GG14271@linux.ibm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_022035_482910_4077B859 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Matt Hart <matthew.hart@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:22:15PM -0700, Paul E. McKenney wrote:
> On Thu, Jul 18, 2019 at 02:43:58PM +0900, Masami Hiramatsu wrote:
> > Remove rcu_read_lock()/rcu_read_unlock() from debug exception
> > handlers since the software breakpoint can be hit on idle task.

Why precisely do we need to elide these? Are we seeing warnings today?

> The exception entry and exit use irq_enter() and irq_exit(), in this
> case, correct?  Otherwise RCU will be ignoring this CPU.

This is missing today, which sounds like the underlying bug.

Thanks,
Mark.

> 
> 							Thanx, Paul
> 
> > Actually, we don't need it because those handlers run in exception
> > context where the interrupts are disabled. This means those are never
> > preempted.
> > 
> > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > Cc: Paul E. McKenney <paulmck@linux.ibm.com>
> > Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
> > ---
> >  arch/arm64/kernel/debug-monitors.c |   14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> > index f8719bd30850..48222a4760c2 100644
> > --- a/arch/arm64/kernel/debug-monitors.c
> > +++ b/arch/arm64/kernel/debug-monitors.c
> > @@ -207,16 +207,16 @@ static int call_step_hook(struct pt_regs *regs, unsigned int esr)
> >  
> >  	list = user_mode(regs) ? &user_step_hook : &kernel_step_hook;
> >  
> > -	rcu_read_lock();
> > -
> > +	/*
> > +	 * Since single-step exception disables interrupt, this function is
> > +	 * entirely not preemptible, and we can use rcu list safely here.
> > +	 */
> >  	list_for_each_entry_rcu(hook, list, node)	{
> >  		retval = hook->fn(regs, esr);
> >  		if (retval == DBG_HOOK_HANDLED)
> >  			break;
> >  	}
> >  
> > -	rcu_read_unlock();
> > -
> >  	return retval;
> >  }
> >  NOKPROBE_SYMBOL(call_step_hook);
> > @@ -305,14 +305,16 @@ static int call_break_hook(struct pt_regs *regs, unsigned int esr)
> >  
> >  	list = user_mode(regs) ? &user_break_hook : &kernel_break_hook;
> >  
> > -	rcu_read_lock();
> > +	/*
> > +	 * Since brk exception disables interrupt, this function is
> > +	 * entirely not preemptible, and we can use rcu list safely here.
> > +	 */
> >  	list_for_each_entry_rcu(hook, list, node) {
> >  		unsigned int comment = esr & ESR_ELx_BRK64_ISS_COMMENT_MASK;
> >  
> >  		if ((comment & ~hook->mask) == hook->imm)
> >  			fn = hook->fn;
> >  	}
> > -	rcu_read_unlock();
> >  
> >  	return fn ? fn(regs, esr) : DBG_HOOK_ERROR;
> >  }
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
