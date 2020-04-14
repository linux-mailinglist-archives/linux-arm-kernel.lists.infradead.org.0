Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9BA1A7B73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94egMpNLVpXlAjy/uYJXVx5yZuJ765RUGFiYkh55IRU=; b=StLquQZJoRsYpI
	CpuBLMux5NcCRG+IS6rG5J44Z60Scle9kh+koOn6gR40miZdTy89It/J/eRmiYM94AZZFBmnxANWb
	KR4WMstqO6Ec0AvW+UFajSO3PvkFbjGMPJ5N0eEWWNlFaEozsFPcw+JqmYyjaSECEWQBwtAfifPrf
	DXe6qFG3l9n0p6f+sfEfMgEwRrihCPvatOEj87dyDWU+PO8Rc3y4x6VhnuoUUwZ+3A8T/pM5yQGfl
	OW440l+Cu7Mn0aoHJhN8fzLLODkGInooKd767JihUnwVkpA4RLqHBetvkkwOYlV4maE5UYG5bqjqR
	i+OABxpAdvz3FovegmgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOL5w-00077M-RR; Tue, 14 Apr 2020 12:55:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOL5e-0006zi-SZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:55:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2209630E;
 Tue, 14 Apr 2020 05:54:58 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1966E3F73D;
 Tue, 14 Apr 2020 05:54:56 -0700 (PDT)
Date: Tue, 14 Apr 2020 13:54:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Wang Qing <wangqing@vivo.com>
Subject: Re: [PATCH] ARM64: fixed dump_backtrace() when task running on
 another cpu
Message-ID: <20200414125454.GE2486@C02TD0UTHF1T.local>
References: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
 <1586769788-5954-1-git-send-email-wangqing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586769788-5954-1-git-send-email-wangqing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_055459_007406_2AEAB52D 
X-CRM114-Status: GOOD (  26.98  )
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
Cc: opensource.kernel@vivo.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 05:23:08PM +0800, Wang Qing wrote:
> >Hi,
> >
> >On Thu, Apr 09, 2020 at 05:38:16PM +0800, Wang Qing wrote:
> >> We cannot get FP and PC when the task is running on another CPU,
> >> task->thread.cpu_context is the last time the task was switched out,
> >> it's better to give a reminder than to provide wrong information.
> >> 
> >> Signed-off-by: Wang Qing <wangqing@vivo.com>
> >
> >Are you seeing this happen anywhere in particular today?
> 
> This problem is not so obvious, because it will not cause any exceptions
> but will show "old" stack always ending with switch_to, I finally confirmed
> the problem through debugging.
> 
> For example:Task blocked in spinlock/interrupt/busy loop, I want to print
> the backtrace when detected(like PSI in Android), the printing is wrong(old).

Sure, but *where* are you seeing this?

Is this a problem in mainline, or only in code that you add?
 
> >
> >> ---
> >>  arch/arm64/kernel/traps.c | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >> 
> >> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> >> index cf402be..c04e3e8 100644
> >> --- a/arch/arm64/kernel/traps.c
> >> +++ b/arch/arm64/kernel/traps.c
> >> @@ -106,6 +106,14 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> >>  		start_backtrace(&frame,
> >>  				(unsigned long)__builtin_frame_address(0),
> >>  				(unsigned long)dump_backtrace);
> >> +	} else if (tsk->on_cpu) {
> >> +		/*
> >> +		 * The task is running in another cpu, so the call stack
> >> +		 * is changing and we cannot get it.
> >> +		 */
> >> +		pr_warn("tsk: %s is running in CPU%d, Don't call trace!\n",
> >> +			tsk->comm, tsk->cpu);
> >
> >I believe that we can race with a concurrent write to tsk->cpu in both
> >cases above. We could use READ_ONCE() to get a snapshot, but we can
> >still race and miss cases where the task was runnning as we backtrace
> >it.
> >
> >Thanks,
> >Mark.
> 
> I will use task_cpu(tsk) instead of tsk->cpu, and add task_running_oncpu() in
> include/linux/sched.h instead of tsk->on_cpu, but as you said, by this patch,
> we can still race and miss cases where the task was runnning as we backtrace.
> 
> But from the user's perspective, printing wrong backtrace is confused when
> we call this function while task already running. However, it's reasonable to
> print the last backtrace when task enter running during the function is called.

The contract of dump_backtrace() is that it's only called for either:

* the current task
* a task that is blocked in switch_to()

... so I don't think that the current behaviour is wrong as such, though
if it's easy to catch misuse I agree it would be nice to do so for
robustness.

However, we can alwatys race here, so detecting this case is best-effort
and not entirely reliable, and I don't want to leave the impression that
it is. I'm also not a fan of pr_warn() here, since this is indicative of
a kernel bug rather than a user/system issue, and can spam the console
due to a lack of ratelimiting.

So, based on whether this is a problem in existing code, I'd like that
code fix first, and then we can consider adding a WARN_ONCE() or
something ratelimited. Ideally something that'll give us the bactrace or
the code that's calling dump_backtrace() erroneously.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
