Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BC372E11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AX/+s3xjuDD1YnmSk6F0ldm1Z6kd9SRsJ0Kgf6v8jM=; b=VLfavd/H+YmQzJ
	r+/ddH3cl9La/2lpVJqzS+z6WNA3oKnQjeVuQnSEvQ1pBMjdASeg7OpiYDfS/LpHzuuZtd9xhrTii
	fJEcZjFNnsVKg5E/g9MptRTLCOoei/+7BWJZfMZjUE4hrxYMmyIM29LXoz53svCZ4PEDkiEf/jzDr
	YjCU/0LC3snGx1WKuyeylhMezVzjjC68cup01efDE/8lVwDkOMN/3ySlb5RysSUWJsaY+v+9VioUc
	9COVb+B46PlbgZWAxYvwNcx+SUj35xOAODIyPVuShw96T/TR2URqdoVqQECpcHhQ9LNOmV3lq4Y4u
	912zQm39/+GQ3pTYVrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFkb-0000Gu-3C; Wed, 24 Jul 2019 11:48:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFkQ-0000G8-31
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:47:57 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C506122387;
 Wed, 24 Jul 2019 11:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563968873;
 bh=mBlNAmlgpbL8sIsWIS0MT/Km8ZKqFPisBuV/zTsyUU4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fW20VpN2srzvHeaON2aO9PX860hcw585Lgh8gjeSOCIXozBFl1aXstLO3FISoddd2
 mCm+LcnzB1FUNo1wCMfGn3zsJWmTU/ozny13dklCz3DHrxCfJ0X7lJM8EndoFPBA7d
 l8KF7HLC8T2tQa5sTG83bBoq/dkligeH2bI43MP8=
Date: Wed, 24 Jul 2019 20:47:48 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 3/4] arm64: Make debug exception handlers visible
 from RCU
Message-Id: <20190724204748.94abebef1f184032d2e77f73@kernel.org>
In-Reply-To: <0290c71b-6ed3-c455-eb4a-3f6a670f5e37@arm.com>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378173770.12011.3832608237079432765.stgit@devnote2>
 <0290c71b-6ed3-c455-eb4a-3f6a670f5e37@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044756_036427_EBE8E4E7 
X-CRM114-Status: GOOD (  26.37  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 18:07:56 +0100
James Morse <james.morse@arm.com> wrote:

> Hi,
> 
> On 22/07/2019 08:48, Masami Hiramatsu wrote:
> > Make debug exceptions visible from RCU so that synchronize_rcu()
> > correctly track the debug exception handler.
> > 
> > This also introduces sanity checks for user-mode exceptions as same
> > as x86's ist_enter()/ist_exit().
> > 
> > The debug exception can interrupt in idle task. For example, it warns
> > if we put a kprobe on a function called from idle task as below.
> > The warning message showed that the rcu_read_lock() caused this
> > problem. But actually, this means the RCU is lost the context which
> > is already in NMI/IRQ.
> 
> > So make debug exception visible to RCU can fix this warning.
> 
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index 9568c116ac7f..a6b244240db6 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -777,6 +777,42 @@ void __init hook_debug_fault_code(int nr,
> >  	debug_fault_info[nr].name	= name;
> >  }
> >  
> > +/*
> > + * In debug exception context, we explicitly disable preemption.
> > + * This serves two purposes: it makes it much less likely that we would
> > + * accidentally schedule in exception context and it will force a warning
> > + * if we somehow manage to schedule by accident.
> > + */
> > +static void debug_exception_enter(struct pt_regs *regs)
> > +{
> > +	if (user_mode(regs)) {
> > +		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
> 
> Would moving entry.S's context_tracking_user_exit() call to be before do_debug_exception()
> also fix this?

It sounds like treating only user context, correct?
This part is just adding assertion, not fixing the problem which Naresh reported.

> 
> I don't know the reason its done 'after' debug exception handling. Its always been like
> this: commit 6c81fe7925cc4c42 ("arm64: enable context tracking").
> 
> 
> > +	} else {
> > +		/*
> > +		 * We might have interrupted pretty much anything.  In
> > +		 * fact, if we're a debug exception, we can even interrupt
> > +		 * NMI processing.
> 
> > +		 * We don't want in_nmi() to return true,
> > +		 * but we need to notify RCU.
> 
> How come? If you interrupted an SError or pseudo-nmi, it already is. Those paths should
> all be painted no-kprobe, but I'm sure there are gaps. The hw-breakpoints can almost
> certainly hook them.

I think that sentense means "we don't want that this code makes in_nmi() to return true"
So, if the breakpoint interrupts pNMI/SError context, it is OK that in_nmi() returns true.

> 
> 
> > +		 */
> > +		rcu_nmi_enter();
> 
> Can we interrupt printk()? Do we need printk_nmi_enter()? ... What about ftrace?

Good point! As far as I know, we don't use it because ftrace doesn't use printk.
But indeed, kprobes user can use printk and they have to call printk_nmi_enter()/exit(),
that must be commented in the documentation. Anyway, basically it is user's choice.

> 
> Because SError and pseudo-nmi can interrupt interrupt-masked code, we describe them as
> NMI. The only difference here is these exceptions are synchronous.
> 
> 
> I suspect we should make these debug exceptions nmi for EL1. We can then use this for the
> kprobe-re-entrance stuff so the pre/post hooks don't get run if they interrupted something
> also described as NMI.

I'm not sure how it can prevent... anyway because we have to run a single-stepping for
recovery, and kprobe already check the reentered kprobes and skip user-handlers in
such case.

Thank you,

> 
> 
> > +	}
> > +
> > +	preempt_disable();
> > +
> > +	/* This code is a bit fragile.  Test it. */
> > +	RCU_LOCKDEP_WARN(!rcu_is_watching(), "exception_enter didn't work");
> > +}
> > +NOKPROBE_SYMBOL(debug_exception_enter);
> 
> 
> Thanks,
> 
> James


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
