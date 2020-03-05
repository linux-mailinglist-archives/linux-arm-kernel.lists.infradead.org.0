Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C76017AD49
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaO75Hyw2vZHIo4fI/CG/GjhwlVZgN21Yr1/6nMyMkQ=; b=F5V7DlMHq0nIDT
	dannzb0AYElJlpEyl+czLW1UGU1/WJ5bvqmcC/DvsGCwstuZ1yJyxpcUeYXGLao5i0Q5XDUsgmI4k
	ja7iNwL5s55rdcd3RTL54gwg/VIfmHvG64pT4wEg9f+6TZH9KUwYzBjfHPbgqiUv9w2Ga9P3kMa2D
	A1aAMBSMge9Y8cit+K0fcesSnh580pZx98Cv+4K6nHdNxL1spPBfJze7xQYg9TflwRiC60toetcuE
	J7E4t4WXWIfkYsrZdAh6fbdUMO+hufsZNYdXsEXYR2ToGFZOrr58sLcFyDLg85rsScEl/toakWWi3
	Q6/IqWJwequjb8Cm21sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9uKZ-00041J-CR; Thu, 05 Mar 2020 17:30:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9uKP-00040E-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:30:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id d9so2909650plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 09:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vNeh9Pd7A3jC+lAiG1qDL0YXo2Ve7XhmxDKrJcovXSc=;
 b=V9Jf9RHYfTaKoPNwyR/ZqRpbM7++EFV5M3l+Gb/M27xCKeKa5UfNPXd7ILib0b9rj8
 o9F/ruICOhsODIsR0A/Q2YZg92Xq9vGb2p4CcW/m18OrDJuMw93FvtM51DwX9UWV+4EZ
 KNIVHrWBxHtZSlBbLeFKGo9A7LW5zUuFm9oP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vNeh9Pd7A3jC+lAiG1qDL0YXo2Ve7XhmxDKrJcovXSc=;
 b=DHBfUrwO3tpUyyhVYW5xbt7Hd5AjviJtcYoOJmJVU3jQtwFW9jnzxTLSH+/c22tD2B
 B5sGrWxVbp0RIUzBkZaaa+NYOrZyMtldgI/ETz3qonQvByBCXELCUuAtf0kXt3tnhiMD
 wi+PF9JzNyqgJuH/fYJt8UOV/wCkyvf8/LA7HRI1kOnPBdzCkxzw2Mrtc2JA/6Skyrvt
 AYF6E3da3bZHyJ5wVlajSGf791pk/nfUEeJ9E4VQ48psQqY+oa3f5jQfNaPch1/koFPO
 wWCf8Czm5jPbJlrSI9eh60qDQMiZC1jq1kGzERejf9bBaIKPReUIxBUNJgOuMuk1uoBY
 P+rQ==
X-Gm-Message-State: ANhLgQ26Gz4OwBP1/YORlV4rYhMoh8ZAWgs8ypVNZiGsicAoRX1ktIWE
 bS7igw5AvL9N+MsYzPf6mlZ1Kw==
X-Google-Smtp-Source: ADFU+vvughyancsaR9TzogY7vXckHLfAnPZ1i0WoVQgLJT88RNnb2tQAJymwgzJlaU0Xk4wC9no7Jw==
X-Received: by 2002:a17:902:bb83:: with SMTP id
 m3mr9365462pls.258.1583429432492; 
 Thu, 05 Mar 2020 09:30:32 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o12sm6747925pjs.6.2020.03.05.09.30.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 09:30:31 -0800 (PST)
Date: Thu, 5 Mar 2020 09:30:30 -0800
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003050929.DD4DB3529@keescook>
References: <20200305081611.29323-1-cl@rock-chips.com>
 <20200305081611.29323-2-cl@rock-chips.com>
 <20200305095803.GW2596@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305095803.GW2596@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_093033_146804_AE3896B1 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 geert+renesas@glider.be, catalin.marinas@arm.com, bsegall@google.com,
 will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 cl@rock-chips.com, huangtao@rock-chips.com, anshuman.khandual@arm.com,
 rostedt@goodmis.org, tglx@linutronix.de, surenb@google.com, mingo@redhat.com,
 allison@lohutok.net, linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 10:58:03AM +0100, Peter Zijlstra wrote:
> On Thu, Mar 05, 2020 at 04:16:11PM +0800, cl@rock-chips.com wrote:
> > From: Liang Chen <cl@rock-chips.com>
> > 
> > when we create a kthread with ktrhead_create_on_cpu(),the child thread
> > entry is ktread.c:ktrhead() which will be preempted by the parent after
> > call complete(done) while schedule() is not called yet,then the parent
> > will call wait_task_inactive(child) but the child is still on the runqueue,
> > so the parent will schedule_hrtimeout() for 1 jiffy,it will waste a lot of
> > time,especially on startup.
> > 
> >   parent                             child
> > ktrhead_create_on_cpu()
> >   wait_fo_completion(&done) -----> ktread.c:ktrhead()
> >                              |----- complete(done);--wakeup and preempted by parent
> >  kthread_bind() <------------|  |-> schedule();--dequeue here
> >   wait_task_inactive(child)     |
> >    schedule_hrtimeout(1 jiffy) -|
> > 
> > So we hope the child just wakeup parent but not preempted by parent, and the
> > child is going to call schedule() soon,then the parent will not call
> > schedule_hrtimeout(1 jiffy) as the child is already dequeue.
> > 
> > The same issue for ktrhead_park()&&kthread_parkme().
> > This patch can save 120ms on rk312x startup with CONFIG_HZ=300.
> 
> > diff --git a/kernel/kthread.c b/kernel/kthread.c
> > index b262f47046ca..8a4e4c9cdc22 100644
> > --- a/kernel/kthread.c
> > +++ b/kernel/kthread.c
> > @@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
> >  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
> >  			break;
> >  
> > +		set_tsk_going_to_sched(current);
> >  		complete(&self->parked);
> >  		schedule();
> > +		clear_tsk_going_to_sched(current);
> >  	}
> >  	__set_current_state(TASK_RUNNING);
> >  }
> > @@ -245,8 +247,10 @@ static int kthread(void *_create)
> >  	/* OK, tell user we're spawned, wait for stop or wakeup */
> >  	__set_current_state(TASK_UNINTERRUPTIBLE);
> >  	create->result = current;
> > +	set_tsk_going_to_sched(current);
> >  	complete(done);
> >  	schedule();
> > +	clear_tsk_going_to_sched(current);
> >  
> >  	ret = -EINTR;
> >  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
> 
> Were you looking for this? I think it does the same without having
> fallen from the ugly tree...
> 
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index b262f47046ca..62699ff414f4 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
>  		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
>  			break;
>  
> +		preempt_disable()
>  		complete(&self->parked);
> -		schedule();
> +		schedule_preempt_disabled();
> +		preempt_enable();
>  	}
>  	__set_current_state(TASK_RUNNING);
>  }
> @@ -245,8 +247,10 @@ static int kthread(void *_create)
>  	/* OK, tell user we're spawned, wait for stop or wakeup */
>  	__set_current_state(TASK_UNINTERRUPTIBLE);
>  	create->result = current;
> +	preempt_disable()
>  	complete(done);
> -	schedule();
> +	schedule_preempt_disabled();
> +	preempt_enable();
>  
>  	ret = -EINTR;
>  	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {

That's much nicer, yes! :) As I said, I don't know much about the
scheduler. ;)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
