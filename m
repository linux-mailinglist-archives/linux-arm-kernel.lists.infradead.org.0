Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6338F2DA23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie+v7yis6U8z4bPEkqGZUa1m6SNXzncZVPUclBtIZyo=; b=SKvAabmidfel99
	TStQWumeTTR+W1SCN+6iz7d9PU+GRmOZLbkLUcJJEdqUvHcT9TUTiMC56RaAIqY2M37CpaKtpjncs
	pyzGBlgQ0aw+KsKEy0ayikQ2E8WC2TZSVvJ8KLdoHojlk1pMf3LqPlxsI4h1X7MAb/0TfVnFDfcBP
	CysE8Mm8VXkY5kSEaKgx9uUM3I0RFd25h1vXOqUlTQSS1phc+b1intXhlVGSsQxmEGCpnTXBK8Jgh
	yMBkkQGxdyf+nY4mfTu9wVKmBA0CQBLnMSOEqhtCkFDO1WuwngioZzWE9rC/7RdYQkKS37HGCCgBp
	hsKIJ+C2J5a8+tJNi4qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvZa-0000on-82; Wed, 29 May 2019 10:12:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvZR-0000o4-PW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:12:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AAC4341;
 Wed, 29 May 2019 03:12:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 536243F59C;
 Wed, 29 May 2019 03:12:31 -0700 (PDT)
Date: Wed, 29 May 2019 11:11:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529101135.GA31777@lakrids.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528173228.GW2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_031233_838315_7DF40578 
X-CRM114-Status: GOOD (  19.40  )
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
Cc: Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 07:32:28PM +0200, Peter Zijlstra wrote:
> On Tue, May 28, 2019 at 04:32:24PM +0100, Will Deacon wrote:
> > On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
> > > On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> > > > When a kthread calls call_usermodehelper() the steps are:
> > > >   1. allocate current->mm
> > > >   2. load_elf_binary()
> > > >   3. populate current->thread.regs
> > > > 
> > > > While doing this, interrupts are not disabled. If there is a perf
> > > > interrupt in the middle of this process (i.e. step 1 has completed
> > > > but not yet reached to step 3) and if perf tries to read userspace
> > > > regs, kernel oops.
> > 
> > This seems to be because pt_regs(current) gives NULL for kthreads on Power.
> 
> 'funny' thing that, perf_sample_regs_user() seems to assume that
> anything with current->mm is in fact a user task, and that assumption is
> just plain wrong, consider use_mm().

Tagnentially, it looks like that assumption is made elsewhere, and could
do with a more general cleanup. IIUC, the following are suspect:

* kmemleak's scan_should_stop()
* x86's __kernel_fpu_begin()
* arm64's arch_dup_task_struct()

It's probably worth an is_thread(task) helper so that those can be
written in an obviously correct way.

> So I'm thinking the right thing to do here is something like the below;
> umh should get PF_KTHREAD cleared when it passes exec(). And this should
> also fix the power splat I'm thinking.
> 
> ---
> 
> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index abbd4b3b96c2..9929404b6eb9 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct perf_regs *regs_user,
>  	if (user_mode(regs)) {
>  		regs_user->abi = perf_reg_abi(current);
>  		regs_user->regs = regs;
> -	} else if (current->mm) {
> +	} else if (!(current->flags & PF_KTHREAD) && current->mm) {

Wouldn't !PF_KTHREAD imply current->mm anyhow?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
