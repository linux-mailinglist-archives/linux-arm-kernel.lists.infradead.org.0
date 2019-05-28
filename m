Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7341E2CA5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3g0tR2FNmxBciU/gHml++BCTDASQZxzBUjeM6CQJKXI=; b=mXNYrME+0KfMFp
	vv1/N1rzsPb6l43+EBerQ8sRFFTUjOaN3UVDWamA+4+ZI9mY8xYLQy4qg3ArbvQ8SC8x6d1neK77D
	yGG2kydHW+U5cKL0wg2k+QiczM4YC2F1ya7liwk1lhDkO5NW4COA6QjErJxVQlc4yqUHEH0ZGsLf8
	712Tt7MiNwAWyQ7M+aO4lLYFjnCw0t43rMrWd9nNN++0JK6OZlSSylXU4DGpPZwOpktcuR/hjdXK7
	hBaXqTjriZnGU3XTmqoQ42008uHCIowpwgYH+Y7GBzAjg41vsH6NzQ10gycTxhvSNSZORXqsLh1TJ
	2vmu2ZQH7qj47TbtOp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVe5i-0000xG-Gc; Tue, 28 May 2019 15:32:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVe5Y-0000wP-Hp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:32:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07479341;
 Tue, 28 May 2019 08:32:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3AE53F59C;
 Tue, 28 May 2019 08:32:26 -0700 (PDT)
Date: Tue, 28 May 2019 16:32:24 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190528153224.GE20758@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528140103.GT2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_083232_617040_DF7C45C4 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 x86@kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
> On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> > When a kthread calls call_usermodehelper() the steps are:
> >   1. allocate current->mm
> >   2. load_elf_binary()
> >   3. populate current->thread.regs
> > 
> > While doing this, interrupts are not disabled. If there is a perf
> > interrupt in the middle of this process (i.e. step 1 has completed
> > but not yet reached to step 3) and if perf tries to read userspace
> > regs, kernel oops.

This seems to be because pt_regs(current) gives NULL for kthreads on Power.

> > Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
> > pt_regs are not set.
> > 
> > See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
> > user process") for details.
> 
> Why the hell do we set current->mm before it is complete? Note that
> normally exec() builds the new mm before attaching it, see exec_mmap()
> in flush_old_exec().

From the initial report [1], it doesn't look like the mm isn't initialised,
but rather than we're dereferencing a NULL pt_regs pointer somehow for the
current task (see previous comment). I don't see how that can happen on
arm64, given that we put the pt_regs on the kernel stack which is allocated
during fork.

Will

[1] https://git.kernel.org/linus/bf05fc25f268

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
