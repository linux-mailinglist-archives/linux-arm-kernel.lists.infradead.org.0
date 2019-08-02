Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30B27F5BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 13:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZXvpMWL/pCOO31dZvShDM7J6Qi7obSlxPLBHuXuVqzo=; b=gGC0OMIrnoVRV7KkzrSqlvOAd
	MAEvDVVhSypr5jOjT6BfQ/IpNlBDqRiKXKh5ELS1kIUOt2LW+Z0q+3UFf26RSiYdtMvcSaXrLNPOL
	YspZx8Q+ahJF/WbbUm2r9a/jOSMTXLge/CtcRW72aGBYNyEn7KgPuJhcMcS2XkUQ1BXGMrZ7cTV3o
	e8Tnb8as5DXlJWgaJdDBNIwQKgo7uPIn/MPTH2wy4yOtJbByLizcC5ag2i+jYt5ivDfAYdcD6jVfA
	+pdeTgW37uyhhp9ohTNpiJf5MoqCwO3yu1w6ypL+PymmZRCMPPdCdQIdIzVXsjrTytdWSGW2Arip6
	mkIHnXr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVOs-0007Xu-5f; Fri, 02 Aug 2019 11:07:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htVOl-0007XR-SH
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 11:07:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D939344;
 Fri,  2 Aug 2019 04:06:56 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 534D33F71F;
 Fri,  2 Aug 2019 04:06:55 -0700 (PDT)
Subject: Re: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
To: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-8-julien.grall@arm.com>
 <20190621153316.GC2790@e103592.cambridge.arm.com>
 <20190704141559.GA51773@arrakis.emea.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <b40a2499-945f-c49d-1681-0027d0aa1269@arm.com>
Date: Fri, 2 Aug 2019 12:06:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190704141559.GA51773@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_040700_006276_C4FA0C75 
X-CRM114-Status: GOOD (  31.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, will.deacon@arm.com, oleg@redhat.com,
 zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 04/07/2019 15:15, Catalin Marinas wrote:
> On Fri, Jun 21, 2019 at 04:33:16PM +0100, Dave P Martin wrote:
>> On Thu, Jun 13, 2019 at 05:16:55PM +0100, Julien Grall wrote:
>>> Per the syscalls ABI, SVE registers will be unknown after a syscalls. In
>>
>> This patch is quite hard to understand, though this is more down to the
>> code being modified than the patch itself.  So, I may ask some stupid
>> questions...
>>
>> In particular, we now have up to 8 task states (all the combinations of
>> TIF_FOREIGN_FPSTATE, TIF_SVE and TIF_SVE_NEEDS_FLUSH).  Sketching out
>> the state machine and highlighting any states that we consider invalid
>> may be a useful exercise, but I've not attempted that yes.
> 
> We definitely need a state machine sketched out (and a formal model as I
> can't really get all of it in my head at once). I don't fully understand
> the need for a new TIF_SVE_NEEDS_FLUSH. Maybe it becomes obvious if we
> had a state machine description.
Dave and I drafted a state machine on a whiteboard recently. I will clean it up 
and send it on the ML. But I am not sure the state machine will help to 
understand the approach :/.

I realize that I didn't explain why I chose this approach over another one. See 
more below.

> 
> So, we currently have (IIUC):
> 
> TIF_SVE - tells us whether the user space can access SVE registers
> without a fault (doesn't CPACR_EL1 tell us this already on kernel entry?
> I guess we'd need to store it in a TIF flag anyway for switch_to). The

That's correct CPACR_EL1 will tell us on entry whether SVE has been enabled or 
not. But as you pointed out we need to save on context switch but we may also 
disable/enable it via ptrace.

> implications of TIF_SVE on kernel entry is that the SVE state could have
> been touched by the user. If entering via syscall, we discard this state
> in sve_user_discard().
> 
> TIF_FOREIGN_FPSTATE - tells us whether the hardware state is out of sync
> with the current thread.
Note that in this case, TIF_SVE will indicate where the context has been saved 
(fpsimd_state vs sve_state).

> 
> For flushing the SVE state on return from syscall, can we not handle
> this entirely in el0_svc_handler while enabling the SVE access at the
> same time to avoid a subsequent trap? We need to know whether the SVE
> state is valid when we do the context switching but we have TIF_SVE for
> this, cleared on syscall entry but can be set again on return from
> syscall if we enable access in CPACR_EL1 (sve_user_enable()).

If we were to handle it in el0_svc_handler(), we would need to do a similar job 
as fpsimd_restore_current_state().

Indeed, the task may have been switched out (when using PREEMPT and PREEMPT_RT). 
Above you suggested to clear TIF_SVE on syscall entry, so the state would be 
saved in fpsimd_state. We would need to convert the state back to SVE. Ideally, 
this should be done in hardware (see patch #6) as this is likely going to be 
faster than the software version (see fpsimd_to_sve()). This means the state 
would need to be loaded by el0_svc_handler().

Furthermore, handling everything in el0_svc_handler() means that you are mostly 
optimizing for fully preemptible kernel (PREEMPT_RT) and preemptible kernel 
(PREEMPT). Although, you have the risk to get the kernel preempted after you 
return from the el0_svc_handler() and before you return to userspace. So you 
would end up to save the full SVE context (even the zeroed bits) which takes 
longer than just saving the first 128-bits. I will admit, I haven't really 
looked how often this condition can happen.

For voluntary preemptible kernel, they will suffer the same problem when as the 
PREEMPT_RT and PREEMPT when rescheduled in do_notify_resume().

So it feels to me that do_notify_resume() is a better fit to handle the flush 
(i.e zeroing all SVE state but the first 128-bits of each vector). This would 
have the advantage to use the optimize other places (such as the trap to enable 
SVE as done by patch #8).

Handling in do_notify_resume() will require an extra flag because we need to 
know when to flush the SVE state.

To summarize, el0_svc_handler() is a possibility but result to leave some cases 
unoptimized. I don't have any numbers to back this yet, so I don't know whether 
this is a major concerns.

> 
> It probably needs some more thinking on signal handling.

The signal handling is quite tricky in all the cases :). We need to ensure the 
SVE state is not flushed.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
