Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6F17C3EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIhswX0uAKO3sgh6PBgqhErhbIEFMGCiUfn7MJx+bX8=; b=sdZZ87vXawn5Hf
	DA/arqzdvVb2L4XPd9865o5APTw9YLzLNLuDeF2Rj7B/ODNR8btwjNCXOOiiSSuhy66hl5JrjM+9M
	aTeR4R7A8udWJCHmsH6g+RBrpdbWXpJcdUaTJH0WQO0qZ2QA/ICBiaTK1HBhKDEy8d8JlHU/ICzNT
	DU4mgpRDa3WY5a/hL+N2jqSps8jOaw4tlt90BuSje8QoupnutDvaFh/9c0ue0D1hoWq5GwT7symCL
	zTDPNt+oPs48U8lVWMd9aCzC3XEJxpaCOtDRC3dST9kNUhyWRcRarU9omFT7Ol7j61USi0hq0P0mB
	40ZImu8TEzYoqhRuEZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAGVl-0005xq-CL; Fri, 06 Mar 2020 17:11:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAGTw-0003Q5-4b
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 17:09:54 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCF7020658;
 Fri,  6 Mar 2020 17:09:46 +0000 (UTC)
Date: Fri, 6 Mar 2020 12:09:45 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: <cl@rock-chips.com>
Subject: Re: [PATCH v3 1/1] kthread: do not preempt current task if it is
 going to call schedule()
Message-ID: <20200306120945.6a197172@gandalf.local.home>
In-Reply-To: <20200306070133.18335-2-cl@rock-chips.com>
References: <20200306070133.18335-1-cl@rock-chips.com>
 <20200306070133.18335-2-cl@rock-chips.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_090952_366184_6769C25D 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: juri.lelli@redhat.com, mark.rutland@arm.com, heiko@sntech.de,
 geert+renesas@glider.be, peterz@infradead.org, catalin.marinas@arm.com,
 bsegall@google.com, will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 huangtao@rock-chips.com, keescook@chromium.org, anshuman.khandual@arm.com,
 tglx@linutronix.de, surenb@google.com, mingo@redhat.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  6 Mar 2020 15:01:33 +0800
<cl@rock-chips.com> wrote:

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
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  kernel/kthread.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index b262f47046ca..bfbfa481be3a 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -199,8 +199,15 @@ static void __kthread_parkme(struct kthread *self)
>  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
>  			break;
>  
> +		/*
> +		 * Thread is going to call schedule(), do not preempt it,
> +		 * or the caller of kthread_park() may spend more time in
> +		 * wait_task_inactive().
> +		 */
> +		preempt_disable();
>  		complete(&self->parked);

I first was concerned that this could break PREEMPT_RT, as complete() calls
spin_locks() which are turned into sleeping locks when PREEMPT_RT is
enabled. But looking at the latest PREEMPT_RT patch, it appears that it
converts the locks in complete() into raw_spin_locks (and using swake).

I don't see any other issue with this patch.

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> -		schedule();
> +		schedule_preempt_disabled();
> +		preempt_enable();
>  	}
>  	__set_current_state(TASK_RUNNING);
>  }
> @@ -245,8 +252,14 @@ static int kthread(void *_create)
>  	/* OK, tell user we're spawned, wait for stop or wakeup */
>  	__set_current_state(TASK_UNINTERRUPTIBLE);
>  	create->result = current;
> +	/*
> +	 * Thread is going to call schedule(), do not preempt it,
> +	 * or the creator may spend more time in wait_task_inactive().
> +	 */
> +	preempt_disable();
>  	complete(done);
> -	schedule();
> +	schedule_preempt_disabled();
> +	preempt_enable();
>  
>  	ret = -EINTR;
>  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
