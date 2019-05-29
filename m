Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071E2E225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 18:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfecMD9o8gIfrxP9yY+FaUvpyBeObBdCcFflt3YGvwg=; b=SLvzpbUPyS7D15
	bMbW6bV99rE7+OxG1/HHIMaLtfF7XJnpzx1aT+g6eHCds1eDQL8/D19RDu3wb3DA4IGg/S+qPpf28
	w7jchTRWmpap2QQQ+6iqmzSIK/gRfi4hNwGNZXE1zhMXeMmkpYvNuQxTdznzikdcwji2QLXST1lar
	0tn3XZlPno6G3JeW4C4QKWf5AinSnmM6g0CCipTjdYQLAXqJp4bv+ou+1pOSmnj639l3HFZbfsv5N
	ib8MRa5dpizOoCMPJquXp3z+BeVLcAQjoAiVomN7cm1Xf9fknj45nE5IpbxbJIbWhMjpYJsyk8tHM
	mVs4RQtEXrRoKKImPKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1J9-0002EJ-JB; Wed, 29 May 2019 16:20:07 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1J0-0002Dz-4p; Wed, 29 May 2019 16:19:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 0751D201CF1CB; Wed, 29 May 2019 18:19:56 +0200 (CEST)
Date: Wed, 29 May 2019 18:19:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
References: <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529143510.GA11154@fuggles.cambridge.arm.com>
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

On Wed, May 29, 2019 at 03:35:10PM +0100, Will Deacon wrote:
> On Wed, May 29, 2019 at 03:25:15PM +0200, Peter Zijlstra wrote:
> > On Wed, May 29, 2019 at 02:05:21PM +0100, Will Deacon wrote:
> > > On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:
> > 
> > > >  	if (user_mode(regs)) {
> > > 
> > > Hmm, so it just occurred to me that Mark's observation is that the regs
> > > can be junk in some cases. In which case, should we be checking for
> > > kthreads first?
> > 
> > task_pt_regs() can return garbage, but @regs is the exception (or
> > perf_arch_fetch_caller_regs()) regs, and for those user_mode() had
> > better be correct.
> 
> So what should we report for the idle task?

If an interrupt hits the idle task, @regs would be !user_mode(regs),
we'll find current->flags & PF_KTHREAD (idle not having passed through
exec()) and therefore we'll take ABI_NONE for the user regs.

Or am I not getting it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
