Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E749F17A199
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1xMG5qT8pBb5d4aZVaUNKbo0mi3WGByMvax9cIHvGE=; b=kghr33y9CPJKw0
	K7/BCUGLdoRi6cQACZQzetTLSqu7d50uhbv63O0Cf0daTfAHOQq+dBzGUuRfGISGMaagqzUhj99to
	vp8o6qbEzTbaBz3sHntbO9nAH4JJ+Ly58GxxwjjFSK9FmDqcBeIiEeq6+MfmqZ2YHvV1VPoxPy7et
	XMRJYWFXeCFtvS6Idian1Ezap23k67kTK1ojaOvJrqTqqw2+EHtfRxVoQC+GtMmTLKhhmTb9aBh9h
	ZK1YHOYWawwkD1itI4SaBnjduxYJi30r/a01K503byZM5BdeAGkWZw5wRQ9YJ65snqXWhDofePoqo
	Gj4kE8qNF2G9lbXCWBLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9m6m-00062p-DI; Thu, 05 Mar 2020 08:43:56 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9m6a-00062I-F2
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:43:46 +0000
Received: by mail-pj1-x1043.google.com with SMTP id np16so1616261pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 00:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qLIiVnETYMcqyHUOB6dvtW3Moz4oU4X9cKVTwd3yA8c=;
 b=kKygSQHPXYjoLnwA1ga7lbOBuQ4B3qVXZyngHi+LC2o/VaTyQJhD2EXZzU+PSc4Gea
 K9zNUJb3/BW522ytiVZy8nwiz7YBFZn0khKA7/wpVRIpczVueTClG2kIBR5cd+Hv/RAm
 g5KAEkrBoRpzRyT6cnQHxzoaMdHwGqTmk1oNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qLIiVnETYMcqyHUOB6dvtW3Moz4oU4X9cKVTwd3yA8c=;
 b=gQuRQhOut1gLycvu0ayQE1pUNbaA+2K0d5B0mnKbpB+RjQQPKuELoi2XrYpZfFH7fV
 U7uubm4MoOczaLdtTHw8eD72Sqm5v7hVLtKKw6wfoKkAZN+jZ3tkAvdUWbRFdTL7GUAj
 mjxFEeH8N9oMk+ksTFbNqSXHaXIe7qo6T5obXx+oytpWN9leB6xIwg0F7SKYqTpofn2p
 YXD1XpF+agdm5t8TcmIKTEYZ55O63ADbeU8be0MD96K0mP1NpN5+Wo31AM+SjTAfsqTs
 F6U6xFaT9M3Ty+6rQPL6XT++omsT1s1D7g+4/J9CffQxK/+ovsY6Qcukgv+r/L9IO+Ni
 PlyQ==
X-Gm-Message-State: ANhLgQ1VSXFirYVxhqj8WyVNZF9a1po6r7E/TZyMhQuKzCjYAVJFaxay
 6Xd4afymX2gOr0eBGQ1Ae+4s8A==
X-Google-Smtp-Source: ADFU+vs0xirHyYZLefNjWviL/3XiwrLplDXNizVgNsIp9KLNwQSGoVUke+T4UGkcqzcArx8rmnRr4w==
X-Received: by 2002:a17:902:8f94:: with SMTP id
 z20mr7209601plo.62.1583397823273; 
 Thu, 05 Mar 2020 00:43:43 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r125sm3807907pfc.79.2020.03.05.00.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 00:43:42 -0800 (PST)
Date: Thu, 5 Mar 2020 00:43:41 -0800
From: Kees Cook <keescook@chromium.org>
To: cl@rock-chips.com
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003050031.27889B4@keescook>
References: <20200305081611.29323-1-cl@rock-chips.com>
 <20200305081611.29323-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305081611.29323-2-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_004344_528688_4AA42146 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Interesting improvement!

> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  arch/arm/include/asm/thread_info.h   |  1 +
>  arch/arm64/include/asm/thread_info.h |  1 +
>  include/linux/sched.h                | 15 +++++++++++++++
>  kernel/kthread.c                     |  4 ++++
>  kernel/sched/fair.c                  |  4 ++++
>  5 files changed, 25 insertions(+)
> 
> diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
> index 0d0d5178e2c3..51802991ba1f 100644
> --- a/arch/arm/include/asm/thread_info.h
> +++ b/arch/arm/include/asm/thread_info.h
> @@ -145,6 +145,7 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
>  #define TIF_USING_IWMMXT	17
>  #define TIF_MEMDIE		18	/* is terminating due to OOM killer */
>  #define TIF_RESTORE_SIGMASK	20
> +#define TIF_GOING_TO_SCHED	27	/* task is going to call schedule() */
>  
>  #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
>  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index f0cec4160136..332786f11dc3 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -78,6 +78,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
>  #define TIF_SSBD		25	/* Wants SSB mitigation */
>  #define TIF_TAGGED_ADDR		26	/* Allow tagged user addresses */
> +#define TIF_GOING_TO_SCHED	27	/* task is going to call schedule() */
>  
>  #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
>  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)

I don't think you want a TIF flag for this (they're used in special
places, especially in entry code, etc). Since you're only changing
"normal" C code, I would suggest a atomic_flags addition instead:

#define PFA_GOING_TO_SCHED	8
...
TASK_PFA_TEST(GOING_TO_SCHED, going_to_sched)
TASK_PFA_SET(GOING_TO_SCHED, going_to_sched)
TASK_PFA_CLEAR(GOING_TO_SCHED, going_to_sched)

(Also if you used TIF, you'd need to add the TIF to every architecture
to use it in the common scheduler code, which too much work.)

> diff --git a/include/linux/sched.h b/include/linux/sched.h
> index 04278493bf15..cb9058d2cf0b 100644
> --- a/include/linux/sched.h
> +++ b/include/linux/sched.h
> @@ -1768,6 +1768,21 @@ static inline int test_tsk_need_resched(struct task_struct *tsk)
>  	return unlikely(test_tsk_thread_flag(tsk,TIF_NEED_RESCHED));
>  }
>  
> +static inline void set_tsk_going_to_sched(struct task_struct *tsk)
> +{
> +	set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
> +}
> +
> +static inline void clear_tsk_going_to_sched(struct task_struct *tsk)
> +{
> +	clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
> +}
> +
> +static inline int test_tsk_going_to_sched(struct task_struct *tsk)
> +{
> +	return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
> +}

Then you can drop these wrappers since you'll have the test/set/clear
functions declared above (task_set/clear_going_to_sched(),
task_going_to_sched()) with the TASK_PFA... macros.

> +
>  /*
>   * cond_resched() and cond_resched_lock(): latency reduction via
>   * explicit rescheduling in places that are safe. The return
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index b262f47046ca..8a4e4c9cdc22 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
>  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
>  			break;
>  
> +		set_tsk_going_to_sched(current);

task_set_going_to_sched(current);

>  		complete(&self->parked);
>  		schedule();
> +		clear_tsk_going_to_sched(current);

task_clear_going_to_sched(current);

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

etc.

>  
>  	ret = -EINTR;
>  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
> diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> index 3c8a379c357e..28a308743bf8 100644
> --- a/kernel/sched/fair.c
> +++ b/kernel/sched/fair.c
> @@ -4330,6 +4330,8 @@ entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
>  			hrtimer_active(&rq_of(cfs_rq)->hrtick_timer))
>  		return;
>  #endif
> +	if (test_tsk_going_to_sched(rq_of(cfs_rq)->curr))
> +		return;

if (unlikely(task_going_to_sched(rq_of(cfs_rq)->curr)))
	return;

>  
>  	if (cfs_rq->nr_running > 1)
>  		check_preempt_tick(cfs_rq, curr);
> @@ -6633,6 +6635,8 @@ static void check_preempt_wakeup(struct rq *rq, struct task_struct *p, int wake_
>  	 */
>  	if (test_tsk_need_resched(curr))
>  		return;
> +	if (test_tsk_going_to_sched(curr))
> +		return;

same.

>  
>  	/* Idle tasks are by definition preempted by non-idle tasks. */
>  	if (unlikely(task_has_idle_policy(curr)) &&
> -- 
> 2.17.1
> 
> 
> 

I'd add comments above each of the "return" cases to help people
understand why the test is important.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
