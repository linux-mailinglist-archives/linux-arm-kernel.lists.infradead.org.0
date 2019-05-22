Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0276F26017
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9FMETdbEQwIqTlxwczE8Kd9wjVqY+QIf92pM/B6laY=; b=m3jijlZC7Gz/8H
	FSyd8qqhOur/pUm8PFnqTI3Esfn8ta8Fs9ryVMui2tVB4+Djtt8ti70CP5D31Dl5JOM3A+cJbj46r
	QKSm4/EITDZ1BdpjaKQ0GrSBt35vPKJYvSlV0J4dgWQCvyFPEuL8nw5oOO//V6uPlFepePsY5VInV
	Ywzp9zVB3X1GBCRVO4UGl1pdZBifT6u0IzJqwz9RkYrQGOEmeHSzBxyIojOgeuDY1sznUYAvOFyCS
	t7yW4R3L+d/7riaVJamXOGHR3u77qXCChe9pRUEztgSDBC0q4kPctjgEZJ6/65l1+akoML00Lbj/G
	cmfYyldNLLGJIepbQR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNB1-0003R7-20; Wed, 22 May 2019 09:04:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNAu-0003QK-2r
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:04:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A043A374;
 Wed, 22 May 2019 02:04:37 -0700 (PDT)
Received: from [10.162.43.129] (p8cg001049571a15.blr.arm.com [10.162.43.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A4AC23F718; Wed, 22 May 2019 02:04:34 -0700 (PDT)
Subject: Re: [PATCH] arm64: break while loop if task had been rescheduled
To: Tengfei Fan <tengfeif@codeaurora.org>, catalin.marinas@arm.com,
 will.deacon@arm.com
References: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f2d62227-4694-d973-cacc-8225e2b2baf4@arm.com>
Date: Wed, 22 May 2019 14:34:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_020440_137997_27B76829 
X-CRM114-Status: GOOD (  27.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, tengfei@codeaurora.org, marc.zyngier@arm.com,
 andreyknvl@google.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/21/2019 02:50 PM, Tengfei Fan wrote:
> While printing a task's backtrace and this task isn't
> current task, it is possible that task's fp and fp+8
> have the same value, so cannot break the while loop.
> This can break while loop if this task had been
> rescheduled during print this task's backtrace.

This is very confusing. IIUC it suggests that while printing
the backtrace for non-current tasks the do/while loop does not
exit because fp and fp+8 might have the same value ? When would
this happen ? Even in that case the commit message here does not
properly match the change in this patch.

This patch tries to stop printing the stack for non-current tasks
if their state change while there is one dump_backtrace() trying
to print back trace. Dont we have any lock preventing a task in
this situation (while dumping it's backtrace) from running again
or changing state.

> 
> Signed-off-by: Tengfei Fan <tengfeif@codeaurora.org>
> ---
>  arch/arm64/kernel/traps.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 2975598..9df6e02 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -103,6 +103,9 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  {
>  	struct stackframe frame;
>  	int skip = 0;
> +	long cur_state = 0;
> +	unsigned long cur_sp = 0;
> +	unsigned long cur_fp = 0;
>  
>  	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
>  
> @@ -127,6 +130,9 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  		 */
>  		frame.fp = thread_saved_fp(tsk);
>  		frame.pc = thread_saved_pc(tsk);
> +		cur_state = tsk->state;
> +		cur_sp = thread_saved_sp(tsk);
> +		cur_fp = frame.fp;

Should 'saved_state|sp|fp' instead as its applicable to non-current
tasks only.

>  	}
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>  	frame.graph = 0;
> @@ -134,6 +140,23 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  
>  	printk("Call trace:\n");
>  	do {
> +		if (tsk != current && (cur_state != tsk->state
> +			/*
> +			 * We would not be printing backtrace for the task
> +			 * that has changed state from uninterruptible to
> +			 * running before hitting the do-while loop but after
> +			 * saving the current state. If task is in running

This does not check any explicit task states like 'un-interruptible' or
'running' but instead tracks change from any previously 'saved' state.


> +			 * state before saving the state, then we may print
> +			 * wrong call trace or end up in infinite while loop
> +			 * if *(fp) and *(fp+8) are same. While the situation

Then dump_backtrace() must detect it, should not save it and just abort.


> +			 * will stop print when that task schedule out.

Thats not a reliable solution. AFICS we should not proceed further if
there is a chance of an wrong trace or an infinite loop. Hoping that
the printing will stop when task gets scheduled out does not seem right.

> +			 */
> +			|| cur_sp != thread_saved_sp(tsk)
> +			|| cur_fp != thread_saved_fp(tsk))) {

Why does any of these three mismatches detect the problematic transition
not just the state ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
