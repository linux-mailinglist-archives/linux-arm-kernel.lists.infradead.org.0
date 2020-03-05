Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9467417A293
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 10:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmyngsKxHyHgrRD5PoxAXQU0yFJCHDjkK37VFJh4WYs=; b=BMGqufeGspCS56
	NA/y9VRi20k9Mf/FptrsnPTsd8GrkwasHHzm9QDr5E6mYgMEaZ7rqIWdM7ay4RpbYxYLyrSQ0D8rd
	z0ke7027tVskoN4CrlVEHHLnofkEpn4m2CVmJJCnFXtU2SFEJwiYrFu+CpqG1dm6gZ5KxIZw7Svf+
	LggUPh2MpUOZOXS/uWC5OQWJId4M++9tGEr9D7kg2BPyzl/zlHnsykEoxt2f+JQ9VruQRAReV2eB1
	OIm4Q31qnF2IRrqtw9CBqyqTfvWLft9Z5LI028yiHq5gWaXUKRrkGy1thn3RejacZt/M4Eie7VPaC
	FmuQed+gXSgPDAUpKFmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nGu-00024b-Jm; Thu, 05 Mar 2020 09:58:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nGp-000241-1y
 for linux-arm-kernel@bombadil.infradead.org; Thu, 05 Mar 2020 09:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/JtrFN+p8a3QC10s77+QKXamNutI63FbL9mQ/tVqXtE=; b=AQfv63NYpHw2aIOP1taIlPNfSi
 EvrF/Trq9jXMvnhjumleeMn6ICJcj9JMNmlOpjUJqEWdFXkfeD/vadK32d9AIt0f7rmKAc3hJoT+1
 KyYG4XTDPkT9tR6DTyDa07LQcgHB5uXpPOZ4LoqS9IGNHD3owFIeignrZlFTs5AMVEvMLU6aeYvNG
 MO4KYve2jCoVJd2w6dRDaPbKMG+AOXcONTfYNve6dgm+oMgQ2U9VQfmgy0fYPDfl13idVYnRVI03g
 XFLK0R83bqXmElw8rrJMbF97zOzwZ9nzpBPSUGafNWDwMN1hOC1a0CcJsqt9Y0TZsIhQyWkDbG+a1
 XBMc5URg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nGY-00011M-Sr; Thu, 05 Mar 2020 09:58:07 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 49762303DA3;
 Thu,  5 Mar 2020 10:56:04 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2A95423D4FA17; Thu,  5 Mar 2020 10:58:03 +0100 (CET)
Date: Thu, 5 Mar 2020 10:58:03 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: cl@rock-chips.com
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <20200305095803.GW2596@hirez.programming.kicks-ass.net>
References: <20200305081611.29323-1-cl@rock-chips.com>
 <20200305081611.29323-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305081611.29323-2-cl@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: juri.lelli@redhat.com, mark.rutland@arm.com, heiko@sntech.de,
 geert+renesas@glider.be, catalin.marinas@arm.com, bsegall@google.com,
 will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 huangtao@rock-chips.com, keescook@chromium.org, anshuman.khandual@arm.com,
 rostedt@goodmis.org, tglx@linutronix.de, surenb@google.com, mingo@redhat.com,
 allison@lohutok.net, linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 04:16:11PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> when we create a kthread with ktrhead_create_on_cpu(),the child thread
> entry is ktread.c:ktrhead() which will be preempted by the parent after
> call complete(done) while schedule() is not called yet,then the parent
> will call wait_task_inactive(child) but the child is still on the runqueue,
> so the parent will schedule_hrtimeout() for 1 jiffy,it will waste a lot of
> time,especially on startup.
> 
>   parent                             child
> ktrhead_create_on_cpu()
>   wait_fo_completion(&done) -----> ktread.c:ktrhead()
>                              |----- complete(done);--wakeup and preempted by parent
>  kthread_bind() <------------|  |-> schedule();--dequeue here
>   wait_task_inactive(child)     |
>    schedule_hrtimeout(1 jiffy) -|
> 
> So we hope the child just wakeup parent but not preempted by parent, and the
> child is going to call schedule() soon,then the parent will not call
> schedule_hrtimeout(1 jiffy) as the child is already dequeue.
> 
> The same issue for ktrhead_park()&&kthread_parkme().
> This patch can save 120ms on rk312x startup with CONFIG_HZ=300.

> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index b262f47046ca..8a4e4c9cdc22 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
>  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
>  			break;
>  
> +		set_tsk_going_to_sched(current);
>  		complete(&self->parked);
>  		schedule();
> +		clear_tsk_going_to_sched(current);
>  	}
>  	__set_current_state(TASK_RUNNING);
>  }
> @@ -245,8 +247,10 @@ static int kthread(void *_create)
>  	/* OK, tell user we're spawned, wait for stop or wakeup */
>  	__set_current_state(TASK_UNINTERRUPTIBLE);
>  	create->result = current;
> +	set_tsk_going_to_sched(current);
>  	complete(done);
>  	schedule();
> +	clear_tsk_going_to_sched(current);
>  
>  	ret = -EINTR;
>  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {

Were you looking for this? I think it does the same without having
fallen from the ugly tree...

diff --git a/kernel/kthread.c b/kernel/kthread.c
index b262f47046ca..62699ff414f4 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
 		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
 			break;
 
+		preempt_disable()
 		complete(&self->parked);
-		schedule();
+		schedule_preempt_disabled();
+		preempt_enable();
 	}
 	__set_current_state(TASK_RUNNING);
 }
@@ -245,8 +247,10 @@ static int kthread(void *_create)
 	/* OK, tell user we're spawned, wait for stop or wakeup */
 	__set_current_state(TASK_UNINTERRUPTIBLE);
 	create->result = current;
+	preempt_disable()
 	complete(done);
-	schedule();
+	schedule_preempt_disabled();
+	preempt_enable();
 
 	ret = -EINTR;
 	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
