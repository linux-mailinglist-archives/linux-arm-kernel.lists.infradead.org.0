Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE26192F81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 18:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrWZynNNAdOtMDlNYi18eB8Egzt5ofN3mORN4Wd3byE=; b=QyV0cXqPejrXaX
	NrIKBHBrLFKaxkHuHO92omQ83RoHGnf0pfCD2xAfbDr7KFTIgPJw9PWOuViqQ758AMTL4JWrItLyL
	gV+eZmcihNL5EzvM1owYspz5fhxo/qV6MeFnHS9ZAWdz3erISQsRxdWx2rSveQI9CXs6xczKe+qfb
	hDI1b1yGsPElDejQmC+kzF99bBVRWzMNWhDX0lZs8IwRAhOcrU39vhZ0pQY3sYLEoLDX3I14ycIuG
	wxVeP8o88U4SHQYNxb/iRRiwBsW+eh4jkMxW4oATcKs4wuuW++bYBJBwVYQQXEE0Pmw0u84Uut7mi
	vWHMlaENtQRvw8dEeEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHA2W-0006UY-JW; Wed, 25 Mar 2020 17:42:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHA2J-0006Tb-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 17:41:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id d1so3759332wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 10:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u7HQvhEtIts1OUhlK/LoSoXfcUF8zx+x9QQTSgrzZ7g=;
 b=fPyESQ7L383Q8UG3F3wvQTYy7at+FgDQyQrvKw4cNSfQysbYDtJU1fIOR5BEZGNKQQ
 cA0Vb8LGBzOdhCKDf+gtxVF0GCb1Jetun8j3FQqZLQ9SHGlZ4XxVgJtaZ711WTv9OVHr
 A3VWPUtyUUdTdM5mNkeBmBlc0GGmjue5nZUBS+YH0TT51AwPzGBALK5Gg2VxwAgT84sW
 WHejRMYfIO56geEE5M7SWbFjGIXVe/ylknf9XcbR693btUt/Ka4NZqHrSd2xSDPzOHBj
 EVawu6eVwMrAKSpL3qUUFbkOaFLRymL2PizxRGOCqpJcVLrQ1zCL33AU32uzDLvH/TjB
 nXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u7HQvhEtIts1OUhlK/LoSoXfcUF8zx+x9QQTSgrzZ7g=;
 b=ah2JMKQbVmB6AvNIf51gzeMZcMjI01TX5U4JN6YN4wmvY14jjOqaTO4D2KYl8Onajq
 S/0Onvl3QHSqoiAX9vgls58dT1ZpyTW/GekCjMcpZ7djam1FXEL0ONePAxATpyoKea6/
 au8xR/CCZTeH95GDciIUWARtrIyJEpJ37T4e+TVgFywAFAYBaM1VhkT2h9rIB2CHQoX+
 5WDq/UzGT1ydkT0GS65MkiXJWtx6SO8wljibsQdynaCXqOJWhtSCObU1nIvvJ+cbu2dc
 P8lthROVOM218q4aJNAOSjltBGTBzaEbsW4mWkpYTIsjnsc7/7sDkZKZnMPZMoCEnKDv
 7EXg==
X-Gm-Message-State: ANhLgQ3TPkGXH/16N78rPZxVS+HE9F+QBXQHJoz1jt2n8jFGOK6XAJik
 bR2/ISCZML66CQIrWVKfu3b6ja8mCgM9nRM1mMexMw==
X-Google-Smtp-Source: ADFU+vtm6oyxXStGJu95SI0D4munUW2EX0lF5AR4sPqKO439YLopmNIsNiG0ab1OvcOCSpSKJeuGA5d7igpZkHWmWXM=
X-Received: by 2002:a1c:6387:: with SMTP id x129mr4600729wmb.58.1585158106556; 
 Wed, 25 Mar 2020 10:41:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200312171755.177743-1-pcc@google.com>
 <20200325131023.GN3901@mbp>
In-Reply-To: <20200325131023.GN3901@mbp>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 25 Mar 2020 10:41:34 -0700
Message-ID: <CAMn1gO6nq1P2Z1byYWdO44WRoxhPX6FxyOS3eYc6G2BZ7yKJ2w@mail.gmail.com>
Subject: Re: [PATCH] arm64: Expose original FAR_EL1 value in sigcontext
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_104151_170744_FFF57D54 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Wed, Mar 25, 2020 at 6:10 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Hi Peter,
>
> On Thu, Mar 12, 2020 at 10:17:55AM -0700, Peter Collingbourne wrote:
> > diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> > index fde59981445ca..290ea59c68b85 100644
> > --- a/arch/arm64/kernel/entry-common.c
> > +++ b/arch/arm64/kernel/entry-common.c
> > @@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
> >       unsigned long far = read_sysreg(far_el1);
> >
> >       local_daif_inherit(regs);
> > -     far = untagged_addr(far);
> >       do_mem_abort(far, esr, regs);
> >  }
> >  NOKPROBE_SYMBOL(el1_abort);
>
> Would we get a signal on faults triggered by the kernel? Anyway, I'm
> fine with this change for consistency and may help with the fault
> information printed by the kernel with khwasan or (later) MTE.

It doesn't look like we would. As far as I can tell all of the signal
injection paths are guarded with if (user_mode(regs)) and such. Agreed
with the consistency argument.

> > @@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
> >
> >       user_exit_irqoff();
> >       local_daif_restore(DAIF_PROCCTX);
> > -     far = untagged_addr(far);
> >       do_mem_abort(far, esr, regs);
> >  }
> >  NOKPROBE_SYMBOL(el0_da);
> > diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
> > index 0b727edf41046..985cd44decf62 100644
> > --- a/arch/arm64/kernel/hw_breakpoint.c
> > +++ b/arch/arm64/kernel/hw_breakpoint.c
> > @@ -730,7 +730,7 @@ static u64 get_distance_from_watchpoint(unsigned long addr, u64 val,
> >               return 0;
> >  }
> >
> > -static int watchpoint_handler(unsigned long addr, unsigned int esr,
> > +static int watchpoint_handler(unsigned long far, unsigned int esr,
> >                             struct pt_regs *regs)
> >  {
> >       int i, step = 0, *kernel_step, access, closest_match = 0;
> > @@ -741,6 +741,7 @@ static int watchpoint_handler(unsigned long addr, unsigned int esr,
> >       struct debug_info *debug_info;
> >       struct arch_hw_breakpoint *info;
> >       struct arch_hw_breakpoint_ctrl ctrl;
> > +     unsigned long addr = untagged_addr(far);
> >
> >       slots = this_cpu_ptr(wp_on_reg);
> >       debug_info = &current->thread.debug;
>
> Why do we need to untag this here? Have you hit any bug? This function
> gets the original FAR_EL1 value, untagged (via elX_dbg()), and we clear
> the tag further down in get_distance_from_watchpoint().

You're right, I missed that this was going via elX_dbg() rather than
an abort handler. In fact, this would seem to be a potential userspace
break because the now-untagged address is also stored in
counter_arch_bp(wp)->trigger, which is exposed to userspace via
ptrace_hbptriggered in arch/arm64/kernel/ptrace.c. I've reverted this
part in v2.

> > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > index 339882db5a915..48e8b6c7b5369 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
> >
> >       unsigned long fpsimd_offset;
> >       unsigned long esr_offset;
> > +     unsigned long far_offset;
> >       unsigned long sve_offset;
> >       unsigned long extra_offset;
> >       unsigned long end_offset;
> > @@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
> >                       break;
> >
> >               case ESR_MAGIC:
> > +             case FAR_MAGIC:
> >                       /* ignore */
> >                       break;
> >
> > @@ -581,6 +583,11 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
> >                                    sizeof(struct esr_context));
> >               if (err)
> >                       return err;
> > +
> > +             err = sigframe_alloc(user, &user->far_offset,
> > +                                  sizeof(struct far_context));
> > +             if (err)
> > +                     return err;
>
> It looks fine, I think it makes sense to only expose the raw FAR_EL1
> when we also expose the ESR_EL1 (via set_thread_esr()).
>
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index 85566d32958f5..2ca2de1ff43be 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -41,7 +41,7 @@
> >  #include <asm/traps.h>
> >
> >  struct fault_info {
> > -     int     (*fn)(unsigned long addr, unsigned int esr,
> > +     int     (*fn)(unsigned long far, unsigned int esr,
> >                     struct pt_regs *regs);
> >       int     sig;
> >       int     code;
> > @@ -320,9 +320,11 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
> >       die_kernel_fault(msg, addr, esr, regs);
> >  }
> >
> > -static void set_thread_esr(unsigned long address, unsigned int esr)
> > +static void set_thread_esr(unsigned long far, unsigned int esr)
>
> We might as well rename this to set_thread_far_esr().

Done in v2.


Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
