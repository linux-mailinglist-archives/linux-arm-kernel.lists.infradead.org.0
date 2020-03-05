Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C4917AD25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhy0k+RHVfoNkgphA2YzC7Wg3nXB7UnkPKTtqBhPdvg=; b=uBAH2OvOItpdZn
	WbBDBORfQCVpotfsmZMMTw1lxhe9hTDUBSNueEW4n9hReitKtbjyJGmzqSRofbMkLK5i5QfDC8z76
	WGjMCAOSui4O2wWnbk4xom0997FafzJuRYiHTAKFXfiDBR4GBR9KqGmO9EfzqITPpGtBV6bzusSMK
	mdNFvSXtlf1y425pGa8RwxJDCQGS9AJoHKjsb2/3e51EooEqrD/iqYsA20YuBxvFVE9lsly50YnhN
	S3j8jacpHTR7KngKC6U4G3b0ncXolaGhCXKwWF6KDdXupT7g7s5tq0gSxRKQxHG8r13/MaDKlQUgG
	VxN/Y6yrWZhWJak/IVsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9uEi-0008Qh-F7; Thu, 05 Mar 2020 17:24:40 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9uEb-0008QL-Ov
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:24:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id u3so2906699plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 09:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mp5fWww43kwzuooPmGWsuVGO+tZOpFhcHE+Owcf1fPw=;
 b=E4Y/lUsmZXp9+AAsZa7Zo5SzTQ9O+aYrU5ndNRs7WiK1c8XxM2exp14Q62BFn1Venr
 djbBK0ms3ZbYweQUswq8VZGv8IkmQJfKAOH17R3IFd7GSLAKiPoGZsGuQ2RF56wnA37c
 sqxdD/b+BVBMNEXe4fDRy18jx9RD6LINy4hrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mp5fWww43kwzuooPmGWsuVGO+tZOpFhcHE+Owcf1fPw=;
 b=rPQiW+omkjWcwfZbfg6EtjksLItzqEtLpMDh03svSzx0VGotXWdUdVGSP83NdVsAZe
 1+Wk/6Y4ZQt0/0Mb6zWk3nrarKuiM760doRAT//Tp7RHxMZbO0elTNgZAR+TiNbBOTMC
 2LXEvpc+SzMbG4wnP0aqXC3jzn0YWSVPWKwJGgk7OnllBvzxLFEhXGcSbdTQrNzFAbOC
 V5lEPwvrgfl2jTqQgtnponE/tKMq0+82OsWSXFBYHduWLHoGpVAuTHRw8XBOtAUKclnP
 pILeEubLrAyIgCS6Z5lE7UO1StcBimvtuvMM9PUgpkvWfV0zsBBzybqfUkVxxGABbp0u
 tFGg==
X-Gm-Message-State: ANhLgQ2hSHHJ+6zqHf6Ktva30ylwm2eKKaRCDpwWfhFJXD87eGlLDWp6
 hATLT2OU6jjCUqUYKalc9NAKNg==
X-Google-Smtp-Source: ADFU+vt9l0oVbJ6VNPpaOLHDblo5TqyZNoJVjyz+Iu+6pL5xZpvRVmjo1V8vi6bgpHk7AmIq2Mfksg==
X-Received: by 2002:a17:90b:1983:: with SMTP id
 mv3mr9946768pjb.86.1583429072818; 
 Thu, 05 Mar 2020 09:24:32 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t4sm10049060pfd.52.2020.03.05.09.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 09:24:31 -0800 (PST)
Date: Thu, 5 Mar 2020 09:24:30 -0800
From: Kees Cook <keescook@chromium.org>
To: cl@rock-chips.com
Subject: Re: [PATCH v2 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003050921.5559A8C3@keescook>
References: <20200305095948.10873-1-cl@rock-chips.com>
 <20200305095948.10873-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305095948.10873-2-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_092433_837876_64B88F13 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 huangtao@rock-chips.com, anshuman.khandual@arm.com, rostedt@goodmis.org,
 tglx@linutronix.de, surenb@google.com, mingo@redhat.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 05:59:48PM +0800, cl@rock-chips.com wrote:
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

I'm not familiar with the subtleties of scheduler internals
(e.g. is there a race between the end of "schedule();" and calling
"task_clear_going_to_sched();" that effects the preemption test logic?),
so I'll leave that review to the others. But speaking to the PFA change,
it looks sane to me:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  include/linux/sched.h |  5 +++++
>  kernel/kthread.c      |  4 ++++
>  kernel/sched/fair.c   | 13 +++++++++++++
>  3 files changed, 22 insertions(+)
> 
> diff --git a/include/linux/sched.h b/include/linux/sched.h
> index 04278493bf15..54bf336f5790 100644
> --- a/include/linux/sched.h
> +++ b/include/linux/sched.h
> @@ -1533,6 +1533,7 @@ static inline bool is_percpu_thread(void)
>  #define PFA_SPEC_IB_DISABLE		5	/* Indirect branch speculation restricted */
>  #define PFA_SPEC_IB_FORCE_DISABLE	6	/* Indirect branch speculation permanently restricted */
>  #define PFA_SPEC_SSB_NOEXEC		7	/* Speculative Store Bypass clear on execve() */
> +#define PFA_GOING_TO_SCHED		8	/* task is going to call schedule() */
>  
>  #define TASK_PFA_TEST(name, func)					\
>  	static inline bool task_##func(struct task_struct *p)		\
> @@ -1575,6 +1576,10 @@ TASK_PFA_CLEAR(SPEC_IB_DISABLE, spec_ib_disable)
>  TASK_PFA_TEST(SPEC_IB_FORCE_DISABLE, spec_ib_force_disable)
>  TASK_PFA_SET(SPEC_IB_FORCE_DISABLE, spec_ib_force_disable)
>  
> +TASK_PFA_TEST(GOING_TO_SCHED, going_to_sched)
> +TASK_PFA_SET(GOING_TO_SCHED, going_to_sched)
> +TASK_PFA_CLEAR(GOING_TO_SCHED, going_to_sched)
> +
>  static inline void
>  current_restore_flags(unsigned long orig_flags, unsigned long flags)
>  {
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index b262f47046ca..bc96de2648f6 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
>  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
>  			break;
>  
> +		task_set_going_to_sched(current);
>  		complete(&self->parked);
>  		schedule();
> +		task_clear_going_to_sched(current);
>  	}
>  	__set_current_state(TASK_RUNNING);
>  }
> @@ -245,8 +247,10 @@ static int kthread(void *_create)
>  	/* OK, tell user we're spawned, wait for stop or wakeup */
>  	__set_current_state(TASK_UNINTERRUPTIBLE);
>  	create->result = current;
> +	task_set_going_to_sched(current);
>  	complete(done);
>  	schedule();
> +	task_clear_going_to_sched(current);
>  
>  	ret = -EINTR;
>  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
> diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> index 3c8a379c357e..78666cec794a 100644
> --- a/kernel/sched/fair.c
> +++ b/kernel/sched/fair.c
> @@ -4330,6 +4330,12 @@ entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
>  			hrtimer_active(&rq_of(cfs_rq)->hrtick_timer))
>  		return;
>  #endif
> +	/*
> +	 * current task is going to call schedule(), do not preempt it or
> +	 * it will casue more useless contex_switch().
> +	 */
> +	if (task_going_to_sched(rq_of(cfs_rq)->curr))
> +		return;
>  
>  	if (cfs_rq->nr_running > 1)
>  		check_preempt_tick(cfs_rq, curr);
> @@ -6634,6 +6640,13 @@ static void check_preempt_wakeup(struct rq *rq, struct task_struct *p, int wake_
>  	if (test_tsk_need_resched(curr))
>  		return;
>  
> +	/*
> +	 * current task is going to call schedule(), do not preempt it or
> +	 * it will casue more useless contex_switch().
> +	 */
> +	if (task_going_to_sched(curr))
> +		return;
> +
>  	/* Idle tasks are by definition preempted by non-idle tasks. */
>  	if (unlikely(task_has_idle_policy(curr)) &&
>  	    likely(!task_has_idle_policy(p)))
> -- 
> 2.17.1
> 
> 
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
