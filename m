Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77271F78C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jps6wVCJ/eLpzi3ElwkSjZXNMmmvNl6bLsNyQ00QfTI=; b=VaU61hyUsiMYdz
	9eK50ofA8NN8k1MscPZcfsNXCV2ljS7Ts4bCTL3UVn5XEEb38h59jc8i7t5C2bom8AWvHtT+fUHjA
	WMAG9k0kDlNMieRo5t8Aj48JYTKLkG4aYZK1syV9IcSsylMzGRhynMb6gaD5tePvmnXOdh37p0akl
	ELHOmRV6ixYvBTa9hx3MLR7HO9CRE9c0uIpLZsMDLw17S9Rh0KT0nqWA5UsgLXXdbqCAGFY6TH+7s
	RN9DCHXklMZhbBTmuVdO35R3PIIePk/xXzorjpqN5WaEEnb9RY7OxPzVZOkunwqGxr8/jK0vQ421N
	n3ODBobgEjpQ2o1lnJ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjkv-0005Cc-Sz; Fri, 12 Jun 2020 13:30:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjko-0005Bi-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:29:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 934C21F1;
 Fri, 12 Jun 2020 06:29:51 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.9.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 205533F6CF;
 Fri, 12 Jun 2020 06:29:48 -0700 (PDT)
Date: Fri, 12 Jun 2020 14:29:43 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Wang Qing <wangqing@vivo.com>
Subject: Re: [PATCH] arm64: smp call when task currently running on other cpu
Message-ID: <20200612132943.GA71861@C02TD0UTHF1T.local>
References: <1591947707-15140-1-git-send-email-wangqing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591947707-15140-1-git-send-email-wangqing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_062954_937884_EE83A6D6 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 jinho lim <jordan.lim@samsung.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 03:41:46PM +0800, Wang Qing wrote:
> We cannot get FP and PC when the task is running on another CPU,
> task->thread.cpu_context is the last time the task was switched out,
> we can use smp call to print backtrace itself.
> 
> Signed-off-by: Wang Qing <wangqing@vivo.com>

Sorry, but NAK to this as-is. This is not a legitimate use of
dump_backtrace(), and even if we wanted to dump a backtrace of a
remotely running task, the patch is:

* Insufficient, since a remotely running task can become blocked after
  task_curr() is sampled.

* Insufficient and incorrect, since the task can be rescheduled after
  task->cpu is sampled. This patch could cause *another* task to dump a
  stacktrace.

* Unsafe, since tsk->cpu is accessed racily. In practice we'd likely get
  away with that, but it's not something we should rely on.

* Unsafe, since if this were ever called in IRQ context it could result
  in a deadlock.

Taking a step back, please explain *why* you think you need this?

What code in mainline is calling dumop_backtrace() on a remotely running
task?

Thanks,
Mark.

> ---
>  arch/arm64/kernel/traps.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>  mode change 100644 => 100755 arch/arm64/kernel/traps.c
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 50cc30a..17a07b9
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -83,6 +83,11 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
>  	printk("%sCode: %s\n", lvl, str);
>  }
>  
> +static void dump_backtrace_smp_fun(struct task_struct *tsk)
> +{
> +	dump_backtrace(NULL, tsk, KERN_DEFAULT);
> +}
> +
>  void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>  		    const char *loglvl)
>  {
> @@ -107,6 +112,12 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>  		start_backtrace(&frame,
>  				(unsigned long)__builtin_frame_address(0),
>  				(unsigned long)dump_backtrace);
> +	} else if (task_curr(tsk)) {
> +		/*
> +		 * The task is currently running on other cpu
> +		 */
> +		smp_call_function_single(tsk->cpu, dump_backtrace_fun, tsk, 0);
> +		return;
>  	} else {
>  		/*
>  		 * task blocked in __switch_to
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
