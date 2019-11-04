Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBD9EE75A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNXKdS7aIOza8bmQ59LyJ3barxTlL4QeNHlDTG4UpoY=; b=ByA9jEBEZIkPOm
	J0qBi5uR1gwN/I/rrM4L3Foje3OQngXxzJDmiP3Osg3C07nIU7pjxh2Yvy66M73uoBm4zEx3AgDLs
	1MOdQeHeekFlL4Mv/gysQ8Tw0ngeATNpWU7qFLL1hqdlVLIifu64Bv8sxfuphCcptSXUevNF2KJLH
	JnxHltsH6U+uXo2d1/A7/ev09tPU+O0jj3YrGIOmQgE2yGt3qwsd82fmnLbD9W2H6QN5gNeeSHKqD
	kpzUF6DVh0kj00zrNhNz4+rUgdogjCaGfFSZRDqfYA0WPzdWYAYRR3Gps//ApM5Jwjtd/CrgQCpSS
	Lg1JOv4UJD+0WQPbXyWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRh2x-0008LC-0A; Mon, 04 Nov 2019 18:25:47 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRh2o-0008KT-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:25:41 +0000
Received: by mail-vs1-xe41.google.com with SMTP id k15so11643119vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wt2wTLQmxuTdMREEhAUzUopx1z+7npE/zcGOwaeBYN0=;
 b=DDqpEeTelp0KBAryLFhu0seN089G4kwryRW1DYK2wQrlbIi7CRZsh9v2rcHQEPNl6J
 BBj2NRR2Pk1HlvbuSVjDZIuO5wVpct/qrEFvtbSEy6x4C/TVeLKcEZpKnWq2cs6UPc/M
 l7AgZnDwg4JIqG/CsJuuCNB9U1+Pn6+/Myvlpdne5Wi8ejUqBS+ZbHgKuK0h9LlQ/9U9
 vzflZtZYP33BApxQ0ZnwHc47l2lV6Z24PHrJlAKr48TzpPfeXaXAEYeAe6OnXza1Qus0
 lUbnCrKgtbRLcXOh4dTgIClkyiJiSPQUSNXlnm00vzIZKxY6NiiDXTVHK7IRRgPyZIPf
 8rLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wt2wTLQmxuTdMREEhAUzUopx1z+7npE/zcGOwaeBYN0=;
 b=Cn0Z9UPcNfEsd8r7a/QHRU0zQfVyekg07aQ7oZsRQw52c8kobq76dNR935rWAlUbSE
 9h7wYyIJbDKK/7CYKrQW5AtiZH+n6mPAA5U2xMP+GXaaI4ho88Os77+wxK8cS75rdIL6
 vF2/TiYrvNTZGxU6AYDO9UiQnxTDKoSZA9Z/DtAEfaZbWo5r1jG7bdlALRossjUc0ZWV
 4TIpXMhPmePNq8Rpb6JXTFW9504KXj0NqRUFONy4zIfp9TnmkoMWowQ9F4Epq2vzzF5a
 EYwh6+TzEe5E869jFTbBxyv26rpUuBAVx8I2bbA1Vb5n27JPD6dBREeXYP7Xb85a0+Mg
 cuqg==
X-Gm-Message-State: APjAAAXtMZRdBIv7RlYP4pHUXv64p/EA4YM/wLyAM6Jfs5qNkPwJCSOa
 qFPOOlv64wfknO7IYAzNPkXnm9xPvdfbnMMI5J+XRQ==
X-Google-Smtp-Source: APXvYqxQ+BbqVGy/ZlafGenaa87R0O4QfL/HHG42BUFGVSDt18L0htIGyWtjiK0hi3VHdQ62vQ0H7BnCJt/j4lp4Ang=
X-Received: by 2002:a67:e951:: with SMTP id p17mr10322928vso.112.1572891936159; 
 Mon, 04 Nov 2019 10:25:36 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-6-samitolvanen@google.com>
 <20191104123126.GC45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104123126.GC45140@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 10:25:24 -0800
Message-ID: <CABCJKudAiafvGk60oOjcZwcSHV69vGYZYpHaDD9HRgAuEx4jBw@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_102540_030311_4C313D17 
X-CRM114-Status: GOOD (  29.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 4:31 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +/*
> > + * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
> > + * architecture) provided ~40% safety margin on stack usage while keeping
> > + * memory allocation overhead reasonable.
> > + */
> > +#define SCS_SIZE     1024
>
> To make it easier to reason about type promotion rules (and avoid that
> we accidentaly mask out high bits when using this to generate a mask),
> can we please make this 1024UL?

Sure.

> > --- a/kernel/sched/core.c
> > +++ b/kernel/sched/core.c
> > @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
> >       raw_spin_lock_irqsave(&idle->pi_lock, flags);
> >       raw_spin_lock(&rq->lock);
> >
> > +     scs_task_reset(idle);
>
> Could we please do this next to the kasan_unpoison_task_stack() call,
> Either just before, or just after?
>
> They're boot addressing the same issue where previously live stack is
> being reused, and in general I'd expect them to occur at the same time
> (though I understand idle will be a bit different).

Good point, I'll move this.

> > --- a/kernel/sched/sched.h
> > +++ b/kernel/sched/sched.h
> > @@ -58,6 +58,7 @@
> >  #include <linux/profile.h>
> >  #include <linux/psi.h>
> >  #include <linux/rcupdate_wait.h>
> > +#include <linux/scs.h>
> >  #include <linux/security.h>
> >  #include <linux/stop_machine.h>
> >  #include <linux/suspend.h>
>
> This include looks extraneous.

I added this to sched.h, because most of the includes used in
kernel/sched appear to be there, but I can move this to
kernel/sched/core.c instead.

> > +static inline void *__scs_base(struct task_struct *tsk)
> > +{
> > +     /*
> > +      * We allow architectures to use the shadow_call_stack field in
> > +      * struct thread_info to store the current shadow stack pointer
> > +      * during context switches.
> > +      *
> > +      * This allows the implementation to also clear the field when
> > +      * the task is active to avoid keeping pointers to the current
> > +      * task's shadow stack in memory. This can make it harder for an
> > +      * attacker to locate the shadow stack, but also requires us to
> > +      * compute the base address when needed.
> > +      *
> > +      * We assume the stack is aligned to SCS_SIZE.
> > +      */
>
> How about:
>
>         /*
>          * To minimize risk the of exposure, architectures may clear a
>          * task's thread_info::shadow_call_stack while that task is
>          * running, and only save/restore the active shadow call stack
>          * pointer when the usual register may be clobbered (e.g. across
>          * context switches).
>          *
>          * The shadow call stack is aligned to SCS_SIZE, and grows
>          * upwards, so we can mask out the low bits to extract the base
>          * when the task is not running.
>          */
>
> ... which I think makes the lifetime and constraints a bit clearer.

Sounds good to me, thanks.

> > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
>
> We usually use unsigned long ratehr than uintptr_t. Could we please use
> that for consistency?
>
> The kernel relies on sizeof(unsigned long) == sizeof(void *) tree-wide,
> so that doesn't cause issues for us here.
>
> Similarly, as suggested above, it would be easier to reason about this
> knowing that SCS_SIZE is an unsigned long. While IIUC we'd get sign
> extension here when it's promoted, giving the definition a UL suffix
> minimizes the scope for error.

OK, I'll switch to unsigned long.

> > +/* Keep a cache of shadow stacks */
> > +#define SCS_CACHE_SIZE 2
>
> How about:
>
> /* Matches NR_CACHED_STACKS for VMAP_STACK */
> #define NR_CACHED_SCS 2
>
> ... which explains where the number came from, and avoids confusion that
> the SIZE is a byte size rather than number of elements.

Agreed, that sounds better.

> > +static void scs_free(void *s)
> > +{
> > +     int i;
> > +
> > +     for (i = 0; i < SCS_CACHE_SIZE; i++)
> > +             if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
> > +                     return;
>
> Here we should compare to NULL rather than 0.

Ack.

> > +void __init scs_init(void)
> > +{
> > +     cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> > +             scs_cleanup);
>
> We probably want to do something if this call fails. It looks like we'd
> only leak two pages (and we'd be able to use them if/when that CPU is
> brought back online. A WARN_ON() is probably fine.

fork_init() in kernel/fork.c lets this fail quietly, but adding a
WARN_ON seems fine.

I will include these changes in v5.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
