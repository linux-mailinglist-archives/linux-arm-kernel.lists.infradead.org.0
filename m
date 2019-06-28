Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39FB59F01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGBAVwgqYxPeRD00AhW3t4xJhnvEhaj3xokBPcvO9js=; b=OUEJ/qiZhW0rJY
	B+IUo9SoqNvHtoY149S/V+QU2ghArmBU8S4Lg3cnDxhdQWPLEEND+te5KfFXYz08GZvL7dnRjr+3t
	EVMrC+uxieR3jpz881OKKMJlbEMrrY4QZRH0EMdyJ0sGw6Y0G/EX1YWaZ0LQIBOccBcYoQjtPs1cd
	Z7TVHhJ5bV/m/0gTkEEtnwPg04JmqyIWsVFmxW5NV9X43xZE2wzcZ0FemgoEqeUr47rt/Rko2ddvf
	GzsAi0CBc8CESo8psSoRkuJRNPQYN7gfdL+zNzskorv6QNIBTkOS4ElLH/wHoDNrdewMIjbiVuHMi
	Xkgz2CDxUR+h7h7oNW3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgsuP-0004Lg-P5; Fri, 28 Jun 2019 15:35:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgsuB-0004LM-G5
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:35:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C90A28;
 Fri, 28 Jun 2019 08:35:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21DC23F706;
 Fri, 28 Jun 2019 08:35:13 -0700 (PDT)
Date: Fri, 28 Jun 2019 16:35:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190628153510.GK36437@lakrids.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_083518_489669_82275CD7 
X-CRM114-Status: GOOD (  26.24  )
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 05:24:06PM +0100, James Morse wrote:
> Hi Mark,
> 
> On 06/06/2019 13:54, Mark Rutland wrote:
> > The arm64 stacktrace code is careful to only dereference frame records
> > in valid stack ranges, ensuring that a corrupted frame record won't
> > result in a faulting access.
> > 
> > However, it's still possible for corrupt frame records to result in
> > infinite loops in the stacktrace code, which is also undesirable.
> > 
> > This patch ensures that we complete a stacktrace in finite time, by
> > keeping track of which stacks we have already completed unwinding, and
> > verifying that if the next frame record is on the same stack, it is at a
> > higher address.
> 
> I see this truncate stacks when walking from the SDEI handler...
> 
> 
> > diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> > index b00ec7d483d1..1c45b33c7474 100644
> > --- a/arch/arm64/kernel/stacktrace.c
> > +++ b/arch/arm64/kernel/stacktrace.c
> > @@ -43,6 +43,8 @@
> >  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> >  {
> >  	unsigned long fp = frame->fp;
> > +	bool changed_stack = false;
> > +	struct stack_info info;
> >  
> >  	if (fp & 0xf)
> >  		return -EINVAL;
> > @@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> >  	if (!tsk)
> >  		tsk = current;
> >  
> > -	if (!on_accessible_stack(tsk, fp, NULL))
> > +	if (!on_accessible_stack(tsk, fp, &info))
> >  		return -EINVAL;
> >  
> > +	if (test_bit(info.type, frame->stacks_done))
> > +		return -EINVAL;
> > +
> > +	if (frame->stack_current != info.type) {
> > +		set_bit(frame->stack_current, frame->stacks_done);
> > +		frame->stack_current = info.type;
> > +		changed_stack = true;
> > +	}
> > +
> >  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
> >  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> 
> 
> > +	if (!changed_stack && frame->fp <= fp)
> > +		return -EINVAL;
> 
> This is where it goes wrong. changed_stack is only true for the first frame on a newly
> visited stack. This means for the last frame of the previous stack, (which must point to
> the next stack), we still require 'frame->fp <= fp'.
> 
> It think like this just happens to be true for the irq stacks as they are allocated early.
> (whereas the SDEI stacks are allocated late).
> 
> 
> This hunk fixes it for me:
> ------------------------------------%<------------------------------------
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index 8a1fa90c784d..cb5dee233ede 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -43,7 +43,6 @@
>  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  {
>         unsigned long fp = frame->fp;
> -       bool changed_stack = false;
>         struct stack_info info;
> 
>         if (fp & 0xf)
> @@ -61,14 +60,16 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe
> *frame)
>         if (frame->stack_current != info.type) {
>                 set_bit(frame->stack_current, frame->stacks_done);
>                 frame->stack_current = info.type;
> -               changed_stack = true;
>         }
> 
>         frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>         frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> 
> -       if (!changed_stack && frame->fp <= fp)
> -               return -EINVAL;
> +       if (info.low <= frame->fp && frame->fp <= info.high) {
> +               /* within stack bounds: the next frame must be older */
> +               if (frame->fp <= fp)
> +                       return -EINVAL;
> +       }

This fixes the cross-stack case, but it retains the check on the unwound
frame's fp, which may or may not be problematic, but it highlights that
we do something weird.

For frames A->B->C, we unwind A->B, then if C is on the same stack is B
we check whether B->C is sane.

I think that falls apart for cases which are already bad, e.g for:

	+---+
	| B |
	+---+
	| C |
	+---+
	| A |
	+---+

... we'd refuse to unwind A->B, whereas I think we should unwind A->B but
refuse to unwind B->C.

I think we need to keep track of the previous fp, and check that as part
of unwinding A->B. For the first unwind we can prime the frame with
STACK_TYPE_UNKNOWN, since any valid FP will have be treated as a
transition from that stack.

That seems to work in local testing, so I'll have a v2 shortly...

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
