Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F5A2D481
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 06:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWyIe132SBvvZIR3IkkSuxBFkhe+Ff5fzenMrfpEY74=; b=oejgqgzHJNv4Wb
	hnfwpahBfQwEBRtTa7kEcZKmO6E3qAfj+nz9SA2I8HZSjluWE+7xOnIADheLGvRTTVaedznW9qUut
	XqA0/1lqb8SGwJAroueLEziKI6M7LrnAxTpcOLDau3pPwHpnwVCdCvdtubFjdpeFsnlZoSVnIpriC
	JwqH9UyF55JYLOfUTAOmiaI8pusYOZxi2krlyGO4tgasOgL9Bfc02R1cxroHndKUcyCyp2Z8un02W
	rqwnmeGv/nJBQV27lmYxdoyWDe6M1YijGM/euMP5+HGdip6cL92VTyBBlJTH5cMYsrTZbn8zpDwtN
	tXvX9wL4bIttSaw3xV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVq6S-0003x1-Ot; Wed, 29 May 2019 04:22:16 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVq6L-0003wC-DD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 04:22:11 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45DHbm6RTRz9s4V;
 Wed, 29 May 2019 14:21:55 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
In-Reply-To: <20190528153224.GE20758@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
Date: Wed, 29 May 2019 14:21:54 +1000
Message-ID: <877ea9q49p.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_212209_678276_374FE2C3 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, x86@kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon <will.deacon@arm.com> writes:
> On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
>> On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
>> > When a kthread calls call_usermodehelper() the steps are:
>> >   1. allocate current->mm
>> >   2. load_elf_binary()
>> >   3. populate current->thread.regs
>> > 
>> > While doing this, interrupts are not disabled. If there is a perf
>> > interrupt in the middle of this process (i.e. step 1 has completed
>> > but not yet reached to step 3) and if perf tries to read userspace
>> > regs, kernel oops.
>
> This seems to be because pt_regs(current) gives NULL for kthreads on Power.

Right, we've done that since roughly forever in copy_thread():

int copy_thread(unsigned long clone_flags, unsigned long usp,
		unsigned long kthread_arg, struct task_struct *p)
{
	...
	/* Copy registers */
	sp -= sizeof(struct pt_regs);
	childregs = (struct pt_regs *) sp;
	if (unlikely(p->flags & PF_KTHREAD)) {
		/* kernel thread */
		memset(childregs, 0, sizeof(struct pt_regs));
		childregs->gpr[1] = sp + sizeof(struct pt_regs);
                ...
		p->thread.regs = NULL;	/* no user register state */

See commit from 2002:
  https://github.com/mpe/linux-fullhistory/commit/c0a96c0918d21d8a99270e94d9c4a4a322d04581#diff-edb76bfcc84905163f34d24d2aad3f3aR187

> From the initial report [1], it doesn't look like the mm isn't initialised,
> but rather than we're dereferencing a NULL pt_regs pointer somehow for the
> current task (see previous comment). I don't see how that can happen on
> arm64, given that we put the pt_regs on the kernel stack which is allocated
> during fork.

We have the regs on the stack too (see above), but we're explicitly
NULL'ing the link from task->thread.

Looks like on arm64 and x86 there is no link from task->thread, instead
you get from task to pt_regs via task_stack_page().

That actually seems potentially fishy given the comment on
task_stack_page() about the stack going away for exiting tasks. We
should probably be NULL'ing the regs pointer in free_thread_stack() or
similar. Though that race mustn't be happening because other arches
would see it.

Or are we just wrong and kthreads should have non-NULL regs? I can't
find another arch that does the same as us.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
