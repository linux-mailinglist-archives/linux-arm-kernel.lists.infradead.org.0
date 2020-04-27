Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E21B9649
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqeG+D9rGgDk2tcPgPvIqVmWwvKGy+G2GYyPhd4rDFU=; b=iEFZbqi9Z2cqHZ
	vOlQVu+83La4gBSiTw0u0VlP8Sj/2akoBg/ldg+3UH5qhLK5gYDPu8tZOekwe9J1GQ0jBye4UxgdQ
	kPY9O/q2Wiz3vaiSJzIKrvmJaZlGmZUUc6OmNlh1Yuc91JGwNzQQuCzRXlnQgAjlbuRqTTGaASva/
	/nQeck1+RyjBU63vzrTCcmlvnN340ynNmdLbiuZ5Ii9J31nZRLoKkV5n1852kLhjZjiYIjVXbOlVW
	Y4qRBt/Bw856BvugMJGDbd9jzILp9A/KPXWzO7u9cjJ5XH9x+h4faF2LKk5Kq4kWwCfW3IzXvs6u3
	TksgBEX464RELnevJEjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvlJ-00069D-ON; Mon, 27 Apr 2020 04:52:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvlA-000680-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:52:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id k28so12667806lfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 21:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGlQ3C/ta2HjZVUKvLN7ukTHTpTh1FEmhkChtwgd5SI=;
 b=LKgiTjLngAySEuoE9XHfXTgHz6iHW3ahOb8J8NmYd/0AqtJfXne0KE+T1ULRGm0T6A
 7wXzsx5KnkLnsEuU/t/jjfcyBG5qBC14vfdpjlDLl7AXiM8p6O4rMzB5igE8EG7WOK60
 Z9tEvH7eFp5fIIc/l/UAQioBOvDEBkkK4TGGEPHxgr0ky3A+DYWplKGvzSI+kk8sfFJO
 Mfw0V18m6WHtzi2ZMbeZdoJ0minU2g7qgqCEeoNR0zTqnqCWYv6mmQyRjJK1VC4GX94I
 hV6VuXpMIqzyYLbN+ZHtHHMr4riWxXJRfHdCeUn92hAbPIMiOSXtHXqyWLDZl2FVl1Er
 Oujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGlQ3C/ta2HjZVUKvLN7ukTHTpTh1FEmhkChtwgd5SI=;
 b=U/je9a+DZCNrlD8ES4vJOjwbYcuGVfmnxSVczAcT3klP3DGkukQlr/+GPvhwlcLb/6
 rdDiY35QQqY3MiCT0j0YS6qS704KOlL/1at89EyaEFZ53BpTYI1L7or2p9gtvxEhSwdR
 8HI/GCu1ykpeTUoRxkgfMBKHOxcX0qGNZxUWCRdHgvfKKgHudNeDA3PVL+g1dhRQ9wt1
 J3rDW/97BO5ra6hC2DYjWyc4kNEiTQRrhEsrPV6UF1XtSpl5ULSHVfzpKvfpTbRVV0CW
 63UX2MjH40RCBoMBZZMI4m5ng019kFsRUTIA5XQjlxeAVfV1sRlztOnlF8VsWbDAc9Z1
 ljzg==
X-Gm-Message-State: AGi0PuZxyGhMjPTSGq1vlYMwFgXHGEFjsxNbUygWiVdY+UtAN2S8QUEi
 Q4fH80Aiim7qP6H9UPyv/P9wSfio8qWkJdyFhGrYgA==
X-Google-Smtp-Source: APiQypIuLFyeIjy0XquNOeWfBKjhZKT0//ZD6fmYmQYd5pRUYS8wyZTeZbOZ9uQgZYeIJPlGUFwKXFxMwDLfBmwsCx0=
X-Received: by 2002:ac2:5544:: with SMTP id l4mr13589303lfk.122.1587963164995; 
 Sun, 26 Apr 2020 21:52:44 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-5-git-send-email-sumit.garg@linaro.org>
 <CAD=FV=VSrVnx_R=Y38tQ=bw_o22zxWmm=+M+AaqmEMAtK66b-Q@mail.gmail.com>
In-Reply-To: <CAD=FV=VSrVnx_R=Y38tQ=bw_o22zxWmm=+M+AaqmEMAtK66b-Q@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 27 Apr 2020 10:22:33 +0530
Message-ID: <CAFA6WYOorX8iRHhpOq26QCE8T1dKmXFUXVTxoWOP0OZErqJqBQ@mail.gmail.com>
Subject: Re: [RFC Patch v1 4/4] arm64: kgdb: Round up cpus using
 IPI_CALL_NMI_FUNC
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_215248_573725_F7A944C0 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wessel <jason.wessel@windriver.com>, LKML <linux-kernel@vger.kernel.org>,
 julien.thierry.kdev@gmail.com, Marc Zyngier <maz@kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

Thanks for your comments.

On Sat, 25 Apr 2020 at 02:17, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Apr 24, 2020 at 4:11 AM Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > arm64 platforms with GICv3 or later supports pseudo NMIs which can be
> > leveraged to round up CPUs which are stuck in hard lockup state with
> > interrupts disabled that wouldn't be possible with a normal IPI.
> >
> > So instead switch to round up CPUs using IPI_CALL_NMI_FUNC. And in
> > case a particular arm64 platform doesn't supports pseudo NMIs,
> > IPI_CALL_NMI_FUNC will act as a normal IPI which maintains existing
> > kgdb functionality.
> >
> > Also, one thing to note here is that with CPUs running in NMI context,
> > kernel has special handling for printk() which involves CPU specific
> > buffers and defering printk() until exit from NMI context. But with kgdb
> > we don't want to defer printk() especially backtrace on corresponding
> > CPUs. So switch to normal printk() context instead prior to entering
> > kgdb context.
> >
> > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > ---
> >  arch/arm64/kernel/kgdb.c | 15 +++++++++++++++
> >  arch/arm64/kernel/smp.c  | 17 ++++++++++++++---
> >  2 files changed, 29 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> > index 4311992..0851ead 100644
> > --- a/arch/arm64/kernel/kgdb.c
> > +++ b/arch/arm64/kernel/kgdb.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/kgdb.h>
> >  #include <linux/kprobes.h>
> >  #include <linux/sched/task_stack.h>
> > +#include <linux/smp.h>
> >
> >  #include <asm/debug-monitors.h>
> >  #include <asm/insn.h>
> > @@ -353,3 +354,17 @@ int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
> >         return aarch64_insn_write((void *)bpt->bpt_addr,
> >                         *(u32 *)bpt->saved_instr);
> >  }
> > +
> > +#ifdef CONFIG_SMP
> > +void kgdb_roundup_cpus(void)
> > +{
> > +       struct cpumask mask;
> > +
> > +       cpumask_copy(&mask, cpu_online_mask);
> > +       cpumask_clear_cpu(raw_smp_processor_id(), &mask);
> > +       if (cpumask_empty(&mask))
> > +               return;
> > +
> > +       arch_send_call_nmi_func_ipi_mask(&mask);
> > +}
> > +#endif
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index 27c8ee1..c7158f6e8 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -31,6 +31,7 @@
> >  #include <linux/of.h>
> >  #include <linux/irq_work.h>
> >  #include <linux/kexec.h>
> > +#include <linux/kgdb.h>
> >  #include <linux/kvm_host.h>
> >
> >  #include <asm/alternative.h>
> > @@ -976,9 +977,19 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
> >                 /* Handle it as a normal interrupt if not in NMI context */
> >                 if (!in_nmi())
> >                         irq_enter();
> > -
> > -               /* nop, IPI handlers for special features can be added here. */
> > -
> > +#ifdef CONFIG_KGDB
>
> My vote would be to keep "ifdef"s out of the middle of functions.  Can
> you put your code in "arch/arm64/kernel/kgdb.c" and then have a dummpy
> no-op function if "CONFIG_KGDB" isn't defined?
>

Sure.

>
> > +               if (atomic_read(&kgdb_active) != -1) {
> > +                       /*
> > +                        * For kgdb to work properly, we need printk to operate
> > +                        * in normal context.
> > +                        */
> > +                       if (in_nmi())
> > +                               printk_nmi_exit();
>
> It feels like all the printk management belongs in kgdb_nmicallback().
> ...or is there some reason that this isn't a problem for other
> platforms using NMI?  Maybe it's just that nobody has noticed it yet?
>

Initially I was skeptical of moving this printk handling in the common
kgdb framework but after exploring other platforms like x86 (probably
unnoticed bug), I agree with you that it belongs to
kgdb_nmicallback(). So I will move it there.

>
> > +                       kgdb_nmicallback(raw_smp_processor_id(), regs);
>
> Why do you need to call raw_smp_processor_id()?  Are you expecting a
> different value than the local variable "cpu"?

Ah, no. Will use the local variable "cpu" instead.

>
>
> > +                       if (in_nmi())
> > +                               printk_nmi_enter();
> > +               }
> > +#endif
> >                 if (!in_nmi())
> >                         irq_exit();
> >                 break;
>
> Not that I really know what I'm talking about since I really don't
> know arm64 at this level very well, but I'll ask anyway and probably
> look like a fool...  I had a note that said:
>
> * Will Deacon says:
> *
> * the whole roundup code is sketchy and it's the only place in the kernel
> * which tries to perform I-cache maintenance with irqs disabled, leading
> * to this nasty hack in the arch code:
> *
> * https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/include/asm/cacheflush.h#n74
>
> I presume that, if nothing else, the comment needs to be updated.
> ...but is the situation any better (or worse?) with your new solution?

I think the situation remains the same with new solution as well. As
either we use IPI being a pseudo NMI or a normal IRQ to roundup CPUs,
kgdb still does I-cache maintenance with irqs disabled which could
lead to a deadlock trying to IPI the secondary CPUs without this nasty
hack in the arch code.

-Sumit

>
> -Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
