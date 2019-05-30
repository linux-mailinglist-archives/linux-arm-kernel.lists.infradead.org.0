Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB1E2F7E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 09:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNyhKNFksQDEjqFwx/uIQVonE2GEEGEk7hAzjSi6OWs=; b=ng29DCsIbgaqkA
	0akpiBt29DHTTRiqhJec81drbtmg++oQJpDyB06Jt2+ZF8LdLH6hXCVZVgT2cZpg+smNdXEWNBDyp
	zAegRc1uh789OXtS5c+E3ghgdWcM2J/nnirv6Fu7ZKSckMWd2EVQ8DfxqnytNVgUeTTYRH06v2IuY
	HBFaMzdrYQgn46m4O3kgwUrqpnLVan0LAGRvK8cvmhvBOELWOmRFx+9Be+gS4lYh36J8oS2SHcm/5
	xlDhG0FWoOq1SC3zdrLvBo3TxqymoHx2ctKhfxvaTpw8o2TIjel58eS1GraigNL+infCIMvAGz8uV
	YFDMJxI3buVGZny8b4FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWFUv-0007Lq-5n; Thu, 30 May 2019 07:29:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWFUo-0007LT-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 07:29:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1D4BA78;
 Thu, 30 May 2019 00:29:05 -0700 (PDT)
Received: from brain-police (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F00F53F690;
 Thu, 30 May 2019 00:29:01 -0700 (PDT)
Date: Thu, 30 May 2019 08:28:58 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190530072858.GB9955@brain-police>
References: <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
 <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
 <20190529162528.GB12420@fuggles.cambridge.arm.com>
 <20190529164407.GA2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529164407.GA2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_002906_401116_62B45CB4 
X-CRM114-Status: GOOD (  19.93  )
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
 jolsa@redhat.com, x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 06:44:07PM +0200, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 05:25:28PM +0100, Will Deacon wrote:
> 
> > > > > On Wed, May 29, 2019 at 02:05:21PM +0100, Will Deacon wrote:
> > > > > > On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:
> > > > > 
> > > > > > >  	if (user_mode(regs)) {
> > > > > > 
> > > > > > Hmm, so it just occurred to me that Mark's observation is that the regs
> > > > > > can be junk in some cases. In which case, should we be checking for
> > > > > > kthreads first?
> 
> > Sorry, I'm not trying to catch you out! Just trying to understand what the
> > semantics are supposed to be.
> > 
> > I do find the concept of user_mode(regs) bizarre for the idle task. By the
> > above, we definitely have a bug on arm64 (user_mode(regs) tends to be
> > true for the idle task), and I couldn't figure out how you avoided it on
> > x86. I guess it happens to work because the stack is zero-initialised or
> > something?
> 
> So lets take the whole thing:
> 
> static void perf_sample_regs_user(struct perf_regs *regs_user,
> 				  struct pt_regs *regs,
> 				  struct pt_regs *regs_user_copy)
> {
> 	if (user_mode(regs)) {
> 		regs_user->abi = perf_reg_abi(current);
> 		regs_user->regs = regs;
> 	} else if (!(current->flags & PF_KTHREAD)) {
> 		perf_get_regs_user(regs_user, regs, regs_user_copy);
> 	} else {
> 		regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;
> 		regs_user->regs = NULL;
> 	}
> }
> 
> This is called from the perf-generate-a-sample path, which is typically
> an exception (IRQ/NMI/whatever) or a software/tracepoint thing.

Yes, sorry, fell into the same trap as Mark here and misunderstood your
assertion about user_mode(regs) always needing to be valid. Then I went down
a stupid rabbit hole and dragged you with me. I can't ack a patch twice, so
I'll just go do something else for a bit...

Thanks for your patience!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
