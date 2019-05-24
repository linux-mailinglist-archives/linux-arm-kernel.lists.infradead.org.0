Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB1529617
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9z/9M3SIQy84r3ywuLQiV27QXlc+ntmFiKM+H8EM08=; b=HPADkWPKHHAQ4n
	8blmg3Xe6S7nxGH0QRd7jZmXB/2Cn/OQ3IMQsqXXsF9bnRXUsPksoA5qpsDcczCX+PKoL7Vxdok30
	8BfJyh76i3q4G0iSiNLQoqSUI0hIRFng5kTYVgVuCM6veAuQ43Dbytk0u3Mao/JUx2ClTW3qqIN10
	a4i92P0cpvXaGus2voAB0+r/ykjdaqzFyBD9j+9LEFbaYUx77kXbeKiplkjTEoTL7tdXJl5faxdOQ
	LBZX4/Lt6jQcUY64nof/hfpbJDK0PlfaXsbVOOfImraw3WxunCKoccimVsE5/QduCX01RxvTRSbv0
	S2OK8jpS0xeVvf5UaLmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7eP-0000z9-6Q; Fri, 24 May 2019 10:42:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7e6-0000kk-BN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:41:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2CCC374;
 Fri, 24 May 2019 03:41:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23A643F703;
 Fri, 24 May 2019 03:41:51 -0700 (PDT)
Date: Fri, 24 May 2019 11:41:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Tengfei Fan <tengfeif@codeaurora.org>
Subject: Re: [PATCH] arm64: break while loop if task had been rescheduled
Message-ID: <20190524104148.GB12796@lakrids.cambridge.arm.com>
References: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034154_627288_4E3C727B 
X-CRM114-Status: GOOD (  22.89  )
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
Cc: tengfei@codeaurora.org, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 andreyknvl@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 05:20:04PM +0800, Tengfei Fan wrote:
> While printing a task's backtrace and this task isn't
> current task, it is possible that task's fp and fp+8
> have the same value, so cannot break the while loop.
> This can break while loop if this task had been
> rescheduled during print this task's backtrace.

There are a few cases where backtracing can get stuck in an infinite
loop. I'd attempted to address that more generally in my
arm64/robust-stacktrace branch [1].

Looking at tsk->state here is inherently racy, and doesn't solve the
general case, so I'd prefer to avoid that.

Do my patches help you here? If so, I'm happy to rebase those to
v5.2-rc1 and repost.

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/robust-stacktrace

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
> +			 * state before saving the state, then we may print
> +			 * wrong call trace or end up in infinite while loop
> +			 * if *(fp) and *(fp+8) are same. While the situation
> +			 * will stop print when that task schedule out.
> +			 */
> +			|| cur_sp != thread_saved_sp(tsk)
> +			|| cur_fp != thread_saved_fp(tsk))) {
> +			printk("The task:%s had been rescheduled!\n",
> +				tsk->comm);
> +			break;
> +		}
>  		/* skip until specified stack frame */
>  		if (!skip) {
>  			dump_backtrace_entry(frame.pc);
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
