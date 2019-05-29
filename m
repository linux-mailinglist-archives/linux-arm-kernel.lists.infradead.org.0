Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2F2E276
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 18:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qbx+9magCJVcSs2ylxxD9F0rOksi0Clk3kWUwfImuYw=; b=bOcAD2++Q33QJj
	BR06ybNeniW3ikCE82bVda3MdHyRwV3I1fHgTJHU1z0wQ0ONgK3pCA13FGJ1D7uEhiUwltUj5IV8S
	KKkdIa5cXwYRF6Id70aj52Vabp5WXDxZJIA6ZwMsXLLuFOnKE26iLKf+BDHbWbS0b6+qWENkrAcmI
	kCIV8y5vtsY3CdoWNMPa1oY2iorOfy8Yc/i3up80v+NAF8xMqepEf5zgfgl6ZH4lnrH9YAeK+6NId
	DJIu1MLV8Do0IWDij3I2iiteV3VHDDIqiuH0aMTW9/RFthjuvowx+hdWL3XytfbvQrIpYzg3vXfbA
	LvmZeOX1xHdOLnQ3z5Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1gW-0002ux-RW; Wed, 29 May 2019 16:44:16 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1gP-0002uk-4d; Wed, 29 May 2019 16:44:09 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 51939201D5AB3; Wed, 29 May 2019 18:44:07 +0200 (CEST)
Date: Wed, 29 May 2019 18:44:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529164407.GA2623@hirez.programming.kicks-ass.net>
References: <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
 <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
 <20190529162528.GB12420@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529162528.GB12420@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 jolsa@redhat.com, x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 05:25:28PM +0100, Will Deacon wrote:

> > > > On Wed, May 29, 2019 at 02:05:21PM +0100, Will Deacon wrote:
> > > > > On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:
> > > > 
> > > > > >  	if (user_mode(regs)) {
> > > > > 
> > > > > Hmm, so it just occurred to me that Mark's observation is that the regs
> > > > > can be junk in some cases. In which case, should we be checking for
> > > > > kthreads first?

> Sorry, I'm not trying to catch you out! Just trying to understand what the
> semantics are supposed to be.
> 
> I do find the concept of user_mode(regs) bizarre for the idle task. By the
> above, we definitely have a bug on arm64 (user_mode(regs) tends to be
> true for the idle task), and I couldn't figure out how you avoided it on
> x86. I guess it happens to work because the stack is zero-initialised or
> something?

So lets take the whole thing:

static void perf_sample_regs_user(struct perf_regs *regs_user,
				  struct pt_regs *regs,
				  struct pt_regs *regs_user_copy)
{
	if (user_mode(regs)) {
		regs_user->abi = perf_reg_abi(current);
		regs_user->regs = regs;
	} else if (!(current->flags & PF_KTHREAD)) {
		perf_get_regs_user(regs_user, regs, regs_user_copy);
	} else {
		regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;
		regs_user->regs = NULL;
	}
}

This is called from the perf-generate-a-sample path, which is typically
an exception (IRQ/NMI/whatever) or a software/tracepoint thing.

In the exception case, the @regs argument are the exception register, as
provided by your entry.S to your exception handlers. In the
software/tracepoint thing, it is the result of
perf_arch_fetch_caller_regs().

So @regs is always 'sane' and user_mode(regs) tells us if the exception
came from userspace (and software/tracepoints always fail this, they
'obviously' don't come from userspace). If we're idle, we're not from
userspace, so this branch doesn't matter.

Next, we test if there is a userspace part _at_all_, this is the newly
minted: '!(current->flags & PF_KTHREAD)', if that passes, we use
architecture magic -- task_pt_regs() -- to get the user-regs. This can
be crap. But since the idle task will always fail our test (as would
the old one, idle->mm is always NULL), we'll never get here for idle.

Then failing the above two, as we must for idle, we'll default to
ABI_NONE/NULL.


Does that help?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
