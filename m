Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717D25B973
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZolLxHY+R3dJU82e17Nj7rdQxyf3YPYT40B+3KFOhQ=; b=Wa0IedCbWbyeS9
	jTHQrcV2qtyZTMUk4PmGgaud7dZajHEPVJd/NtlXUiCXjPcOUS4Zm/rU34Snpvoy338GI05mQj4io
	b5giDTVo7zWIP1lesbV+c0VVPYeJ3Uiz28WlU5dtRaSIuFcTnOW0zK0Y9wQQatTGloXElu9yMZ2FB
	TKuz3ACtPrL+j4YHSpUmeIu29F3WXfph5hJrq8iCZfhHx/U2W/PN7HVwVZzLIMFkN+PyUJqEXqoP7
	/9KuUn3A6kwWvxeJK+sQVkemAaOSjbxPDGTcQf1tSykByYAvbzSQ1O7KNwL+cqWnW65QaKJJ4aFIj
	ulJKs9Xy+FOrWtBF4nSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtuO-000387-Rz; Mon, 01 Jul 2019 10:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtrH-0007Uc-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:48:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ABF3344;
 Mon,  1 Jul 2019 03:48:24 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1AC93F703;
 Mon,  1 Jul 2019 03:48:23 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:48:21 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190701104819.GL2790@e103592.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
 <20190628111501.GK2790@e103592.cambridge.arm.com>
 <20190628130255.GJ36437@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628130255.GJ36437@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034827_559706_28D415A0 
X-CRM114-Status: GOOD (  30.49  )
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
Cc: will.deacon@arm.com, catalin.marinas@arm.com, tengfeif@codeaurora.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 02:02:55PM +0100, Mark Rutland wrote:
> On Fri, Jun 28, 2019 at 12:15:03PM +0100, Dave Martin wrote:
> > On Thu, Jun 27, 2019 at 05:24:06PM +0100, James Morse wrote:
> > > Hi Mark,
> > > 
> > > On 06/06/2019 13:54, Mark Rutland wrote:
> > > > The arm64 stacktrace code is careful to only dereference frame records
> > > > in valid stack ranges, ensuring that a corrupted frame record won't
> > > > result in a faulting access.
> > > > 
> > > > However, it's still possible for corrupt frame records to result in
> > > > infinite loops in the stacktrace code, which is also undesirable.
> > > > 
> > > > This patch ensures that we complete a stacktrace in finite time, by
> > > > keeping track of which stacks we have already completed unwinding, and
> > > > verifying that if the next frame record is on the same stack, it is at a
> > > > higher address.
> > > 
> > > I see this truncate stacks when walking from the SDEI handler...
> > > 
> > > 
> > > > diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> > > > index b00ec7d483d1..1c45b33c7474 100644
> > > > --- a/arch/arm64/kernel/stacktrace.c
> > > > +++ b/arch/arm64/kernel/stacktrace.c
> > > > @@ -43,6 +43,8 @@
> > > >  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> > > >  {
> > > >  	unsigned long fp = frame->fp;
> > > > +	bool changed_stack = false;
> > > > +	struct stack_info info;
> > > >  
> > > >  	if (fp & 0xf)
> > > >  		return -EINVAL;
> > > > @@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> > > >  	if (!tsk)
> > > >  		tsk = current;
> > > >  
> > > > -	if (!on_accessible_stack(tsk, fp, NULL))
> > > > +	if (!on_accessible_stack(tsk, fp, &info))
> > > >  		return -EINVAL;
> > > >  
> > > > +	if (test_bit(info.type, frame->stacks_done))
> > > > +		return -EINVAL;
> > > > +
> > > > +	if (frame->stack_current != info.type) {
> > > > +		set_bit(frame->stack_current, frame->stacks_done);
> > > > +		frame->stack_current = info.type;
> > > > +		changed_stack = true;
> > > > +	}
> > > > +
> > > >  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
> > > >  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> > > 
> > > 
> > > > +	if (!changed_stack && frame->fp <= fp)
> > > > +		return -EINVAL;
> > > 
> > > This is where it goes wrong. changed_stack is only true for the first
> > > frame on a newly visited stack. This means for the last frame of the
> > > previous stack, (which must point to the next stack), we still
> > > require 'frame->fp <= fp'.
> > > 
> > > It think like this just happens to be true for the irq stacks as they
> > > are allocated early.  (whereas the SDEI stacks are allocated late).
> > 
> > I don't understand this.
> 
> I ended up drawing a diagram to figure this out, and realised James is
> right.
> 
> > Either we are on an edge frame (changed_stack is true) or not (false).
> > 
> > If not, the two FPs are on the same stack and we should compare them.
> > Otherwise they're on different stacks and such a comparison is nonsense.
> > 
> > I don't see any third situation.
> > 
> > So, what's wrong here?
> 
> The problem is that we unwind one frame, then check the fp of that
> frame.
> 
> Say we have three stack frames, A->B->C, where A and B are on the IRQ
> stack, and C is on the task stack.
> 
> At entry to unwind_frame(), frame describes A, and frame->fp points at
> B. Thus frame->stack_current == info.type, and changed_stack == false.
> 
> Then we sample B:
> 
> 	frame->fp = READ_ONCE(fp); // points at C on the task tasck
> 
> Then we do:
> 
> 	if (!changed_stack && frame->fp <= fp)
> 
> ... where changed_stack describes the A->B transition (false), but
> frame->fp <= fp is the B->C transition, and B and C are on different
> stacks!

OK, if I've understood that right, it looks like frame->stack_current
describes where the contents of frame were fetched from, not the frame
at frame->fp.

This is actually pretty confusing: the frame stack_current refers to is
already history: we have no pointer to it any more anyway.

I wonder whether this can be refactored so that stack_current doesn't
lag behind: say, call it fp_stack (the stack frame->fp points at).

That's just one option though.  I'll take a look at the repost.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
