Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0145990B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uizq0XxwqafEaCbT38IFiiKjISC60NCFhziIqgWfZtE=; b=gpAlRonEZQghlU
	2gayGtjBjZmPtIIV3lwDWzq1nG0Kf8pz2ytHwsjylzmTQkchvfXy1n7fCAP7f9kqSNcWxcEidJVFU
	byLwyClvVQslV1YKwrd+o1RpQyMwGTjH4Enb785rU939fNvJdwZA+m6cBZeyMlqhHcqYtDO3Jokdf
	WN3tN6MSC+0rvyCG+8ICYIHFBU/HmYwL5li+QFYOFGVCJ0o+NQcZkrjQ4w4Vz3+8pMFzRG/dyf8eR
	/+Fhcv6t0WnCWu6c4yzfb8aexkQ1SmrRswFQuO6rvgw3VVtg65L2ip8wUKabyJJYjCYvegir4iZ+C
	DjiSGmBLDrqEK9iZ3S2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoqg-0007FI-CA; Fri, 28 Jun 2019 11:15:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoqT-0006yz-Vr
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:15:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC3A928;
 Fri, 28 Jun 2019 04:15:06 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE4943F718;
 Fri, 28 Jun 2019 04:15:05 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:15:03 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190628111501.GK2790@e103592.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_041510_118463_588FF481 
X-CRM114-Status: GOOD (  26.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 tengfeif@codeaurora.org, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
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
> This is where it goes wrong. changed_stack is only true for the first
> frame on a newly visited stack. This means for the last frame of the
> previous stack, (which must point to the next stack), we still
> require 'frame->fp <= fp'.
> 
> It think like this just happens to be true for the irq stacks as they
> are allocated early.  (whereas the SDEI stacks are allocated late).

I don't understand this.

Either we are on an edge frame (changed_stack is true) or not (false).

If not, the two FPs are on the same stack and we should compare them.
Otherwise they're on different stacks and such a comparison is nonsense.

I don't see any third situation.

So, what's wrong here?

> This hunk fixes it for me:
> ------------------------------------%<------------------------------------
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c

[...]

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

Doesn't on_accessible_stack() already do this check?  This is how we
determined what stack we tranitioned to in the first place.

Not saying there isn't a problem here, but I don't yet understand what
goes wrong...

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
