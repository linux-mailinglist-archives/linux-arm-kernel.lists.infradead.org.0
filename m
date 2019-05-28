Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77532CB59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAVdavIJNm2QduFfWiD0Y1uHJTEpO5pj/NkGipiJNts=; b=I5m7/s3jOMK7HK
	SDb91bMiCbNUrB/3tMgIcmr+MoZfIh0qbXHbsyEiJYAWFenaGOnaFuYgLrAGEEoMvEQZFCqbJQXPZ
	l+AORWJoiuXl/4KVo88yKzp3GZEMaqgEgLG7Ydda0Qi/42dDS3ZbmJxE1Cl3Atj1+pvbJ/HH9Wh0e
	PzPmrHa4abigEsJP6+zpt+epzrwsHHzdWoJvqI7ok8KgTN5cINJR8PTRdMED2JLSq9D+zmJzOHbCp
	wR5vIc9H5I4Nc8TeXtXqyGHHUW7ig4iNmr4lVXDCFtJob50jQZ+qkLZGvfLFe3VxQIyVgPecr2NVT
	w649hWlD60MpprYFaAbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVejp-0007k4-L2; Tue, 28 May 2019 16:14:09 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeih-0006ig-Sl
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:13:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63936341;
 Tue, 28 May 2019 09:12:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B63A3F59C;
 Tue, 28 May 2019 09:12:57 -0700 (PDT)
Date: Tue, 28 May 2019 17:12:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190528161254.GA28492@lakrids.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528153224.GE20758@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091259_931587_6B68E700 
X-CRM114-Status: GOOD (  20.50  )
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
Cc: Young Xiao <92siuyang@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 mpe@ellerman.id.au, x86@kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:32:24PM +0100, Will Deacon wrote:
> On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
> > On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> > > When a kthread calls call_usermodehelper() the steps are:
> > >   1. allocate current->mm
> > >   2. load_elf_binary()
> > >   3. populate current->thread.regs
> > > 
> > > While doing this, interrupts are not disabled. If there is a perf
> > > interrupt in the middle of this process (i.e. step 1 has completed
> > > but not yet reached to step 3) and if perf tries to read userspace
> > > regs, kernel oops.
> 
> This seems to be because pt_regs(current) gives NULL for kthreads on Power.

I think you mean task_pt_regs(current) here.

> > > Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
> > > pt_regs are not set.
> > > 
> > > See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
> > > user process") for details.
> > 
> > Why the hell do we set current->mm before it is complete? Note that
> > normally exec() builds the new mm before attaching it, see exec_mmap()
> > in flush_old_exec().
> 
> From the initial report [1], it doesn't look like the mm isn't initialised,
> but rather than we're dereferencing a NULL pt_regs pointer somehow for the
> current task (see previous comment). I don't see how that can happen on
> arm64, given that we put the pt_regs on the kernel stack which is allocated
> during fork.
> 
> Will
> 
> [1] https://git.kernel.org/linus/bf05fc25f268

One caveat is that for the idle threads, the initial SP overlaps the
task_pt_regs() area:

* __primary_switched starts SP at init_thread_union + THREAD_SIZE.

* __cpu_up() starts SP at task_stack_page(idle) + THREAD_SIZE.

... and in either case, sampling that would be bad.

For both arm, I believe similar holds true. AFAICT x86 seems to reserve
the regs area in its head_{64,32}.S, but I can't see what it does for
other threads.

Regardless, for arm, arm64, and x86, task_pt_regs(current) cannot be
NULL.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
