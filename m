Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C137EC07B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 16:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vsGMq8faZ9KFyCLyi7GKc1395/IDKhnWuWmRs3jSzc=; b=S459ZMgBYxECD2
	gY6kCbtcf48QDOQcFLzAk4A8PRZlgRlmpHC8sWfGTK0MreTTjhXEuMtDgI9fvP3BtvoLDDtflH/wE
	eoLlHESlkZG5p9UHq+igTtbiYNdacsrcsThYLkcSUnyII08CVYlSUNwC0rfpgKRiyqPLvEeDqGC6h
	e1nRVCATmleW7ng9cWlRSEWdX72OIzxK9tNq4x+wE2wvdgUF3HR/Fg27ZOYKtB/+FR+WMkC/ddtca
	HoOKLqD3McgIhRe2UymxsFa9+6HvBfSJaWHsGHMmHqJiFipCPWjIr1Soq/EDaJkD6a7wnrJBccPYB
	4rZ93wKRz74kyOwgDItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDrO3-00026f-Vg; Fri, 27 Sep 2019 14:38:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDrNt-00025f-NZ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 14:38:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id 3so7580661qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 07:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jrHNI3Ce7FmUodhQRVtGcsJ0pLEFaGdjrMz0TSMeI14=;
 b=gdy6bBkyFWrJRqDzxuj+ffl+TWf+KxxDcRTg5xzkSVSYhacNEPDUFs7hf1Z7k9nbiP
 t1P4TsWUMzn64nL99YhMJ9SDZ3K7B4zfF2XYp2fG85Mhb9y7GkL8GRpW/d+iGxxBDX7t
 y9/mZU/5nGtaVppi4vtaQJ3OadRWElWKzFBcugEnQanr0QTUD9LrgRMawTuFFmglBhKd
 QVCmF9xDk7nwIW5Ifh9dSCQc/eg1uiSzeeQcOKt2UddDj1WWdhvg8KJFBTxfNkPDpd/R
 UGlMdJHd4yFmjvjUH9kLkKzC+5Xvmp5Jc4sj1aUiaGbd/zltG/tszxTLdbIgOGwQ5354
 mLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jrHNI3Ce7FmUodhQRVtGcsJ0pLEFaGdjrMz0TSMeI14=;
 b=fiB55TrX0lbaV4D3pxWQLPR7QlpcBUR2fRc6dOf1fmCBCxCxj7GL0szRj6zVcIVp89
 5ttlkE2GcpFeLjYxnKRD0ECUfsNahpUouD3r9HuPlrTidpo4hOSuY/DRFAUst2Y5cNXv
 yF1GSRZKT0JedxEOjRLyCr0I+ZKxuvp/Nae2qYGx+LGj465/Zw12ulNWEiK0f4JLLW7Z
 74JFHZAhaT6xhfzpGt2VHNX5CZ+sLrwYPH1Dzw6gdTcsrwuAEg34uQqVVHdlWLLEo7ZY
 OPEcLzt3RQOCTlplpRiJJqgqB9Xx6nb+a4jkrItl80W85ptnoNgPqPIQ8uT6U0TdSOrJ
 Bblw==
X-Gm-Message-State: APjAAAUZ9LLePHqfESxiAYH8ouIEUxugi0vnwfewzbWIUXiy/1w16Go7
 irBvAz7sIb+BtXI2NELrBQ==
X-Google-Smtp-Source: APXvYqwwoge698F5Xxzui1cLXlPOYUFc3RNCieXrSeJ6XQEv0O7SxcSD9y+NxTVpeNlpmhRZtzCRDg==
X-Received: by 2002:ac8:1288:: with SMTP id y8mr10189488qti.243.1569595092630; 
 Fri, 27 Sep 2019 07:38:12 -0700 (PDT)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 207sm1320331qkh.33.2019.09.27.07.38.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Sep 2019 07:38:12 -0700 (PDT)
Date: Fri, 27 Sep 2019 10:38:02 -0400
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 1/1] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190927143801.tpaohgbuzdheiwp3@gabell>
References: <20190926190846.3072-1-msys.mizuma@gmail.com>
 <20190926190846.3072-2-msys.mizuma@gmail.com>
 <20190927125228.GQ27757@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927125228.GQ27757@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_073813_801553_C7ED70EE 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien and Dave,

Thank you for your comments!
Dave's suggestion looks good for me, many thanks!
I'll post it as v2.

- Masa

On Fri, Sep 27, 2019 at 01:52:30PM +0100, Dave Martin wrote:
> On Thu, Sep 26, 2019 at 03:08:46PM -0400, Masayoshi Mizuma wrote:
> > From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > 
> > The system which has SVE feature crashed because of
> > the memory pointed by task->thread.sve_state was destroyed
> > by someone.
> > 
> > That is because sve_state is freed while the forking the
> > child process. The child process has the pointer of sve_state
> > which is same as the parent's because the child's task_struct
> > is copied from the parent's one. If the copy_process()
> > fails as an error on somewhere, for example, copy_creds(),
> > then the sve_state is freed even if the parent is alive.
> > The flow is as follows.
> > 
> > copy_process
> >         p = dup_task_struct
> >             => arch_dup_task_struct
> >                 *dst = *src;  // copy the entire region.
> > :
> >         retval = copy_creds
> >         if (retval < 0)
> >                 goto bad_fork_free;
> > :
> > bad_fork_free:
> > ...
> >         delayed_free_task(p);
> >           => free_task
> >              => arch_release_task_struct
> >                 => fpsimd_release_task
> >                    => __sve_free
> >                       => kfree(task->thread.sve_state);
> >                          // free the parent's sve_state
> > 
> > Add a flag in task->thread which shows the fork is in progress.
> > If the fork is in progress, that means the child has the pointer
> > to the parent's sve_state, doesn't free the sve_state.
> > 
> > Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> > ---
> >  arch/arm64/include/asm/processor.h | 1 +
> >  arch/arm64/kernel/fpsimd.c         | 6 ++++--
> >  arch/arm64/kernel/process.c        | 2 ++
> >  3 files changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> > index 5623685c7d13..3ca3e350145a 100644
> > --- a/arch/arm64/include/asm/processor.h
> > +++ b/arch/arm64/include/asm/processor.h
> > @@ -143,6 +143,7 @@ struct thread_struct {
> >  	unsigned long		fault_address;	/* fault info */
> >  	unsigned long		fault_code;	/* ESR_EL1 value */
> >  	struct debug_info	debug;		/* debugging */
> > +	unsigned int		fork_in_progress;
> >  #ifdef CONFIG_ARM64_PTR_AUTH
> >  	struct ptrauth_keys	keys_user;
> >  #endif
> > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > index 37d3912cfe06..8641db4cb062 100644
> > --- a/arch/arm64/kernel/fpsimd.c
> > +++ b/arch/arm64/kernel/fpsimd.c
> > @@ -202,8 +202,10 @@ static bool have_cpu_fpsimd_context(void)
> >   */
> >  static void __sve_free(struct task_struct *task)
> >  {
> > -	kfree(task->thread.sve_state);
> > -	task->thread.sve_state = NULL;
> > +	if (!task->thread.fork_in_progress) {
> > +		kfree(task->thread.sve_state);
> > +		task->thread.sve_state = NULL;
> > +	}
> >  }
> >  
> >  static void sve_free(struct task_struct *task)
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index a47462def04b..8ac0ee4e5f76 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -347,6 +347,7 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
> >  	if (current->mm)
> >  		fpsimd_preserve_current_state();
> >  	*dst = *src;
> > +	dst->thread.fork_in_progress = 1;
> >  
> >  	return 0;
> >  }
> > @@ -365,6 +366,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
> >  	 * and disable discard SVE state for p:
> >  	 */
> >  	clear_tsk_thread_flag(p, TIF_SVE);
> > +	p->thread.fork_in_progress = 0;
> >  	p->thread.sve_state = NULL;
> 
> There's definitely a problem here, but a simpler fix is probably to
> NULL sve_state and clear TIF_SVE for dst at the same time.
> 
> Once upon a time, I had to cope with the thread_flags not being copied
> as part of task_struct here, which is one reason why the code is the
> (broken) way it is, but this is ancient history...
> 
> Commit c02433dd6de3 ("arm64: split thread_info from task stack") was
> merged in v4.10 and predates SVE support anyway.
> 
> 
> So can just do the following (untested) and delete the confusing
> comments?
> 
> Cheers
> ---Dave
> 
> --8<--
> 
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index f674f28..6937f59 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -323,22 +323,16 @@ void arch_release_task_struct(struct task_struct *tsk)
>  	fpsimd_release_task(tsk);
>  }
>  
> -/*
> - * src and dst may temporarily have aliased sve_state after task_struct
> - * is copied.  We cannot fix this properly here, because src may have
> - * live SVE state and dst's thread_info may not exist yet, so tweaking
> - * either src's or dst's TIF_SVE is not safe.
> - *
> - * The unaliasing is done in copy_thread() instead.  This works because
> - * dst is not schedulable or traceable until both of these functions
> - * have been called.
> - */
>  int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
>  {
>  	if (current->mm)
>  		fpsimd_preserve_current_state();
>  	*dst = *src;
>  
> +	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
> +	dst->thread.sve_state = NULL;
> +	clear_tsk_thread_flag(dst, TIF_SVE);
> +
>  	return 0;
>  }
>  
> @@ -352,13 +346,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  	memset(&p->thread.cpu_context, 0, sizeof(struct cpu_context));
>  
>  	/*
> -	 * Unalias p->thread.sve_state (if any) from the parent task
> -	 * and disable discard SVE state for p:
> -	 */
> -	clear_tsk_thread_flag(p, TIF_SVE);
> -	p->thread.sve_state = NULL;
> -
> -	/*
>  	 * In case p was allocated the same task_struct pointer as some
>  	 * other recently-exited task, make sure p is disassociated from
>  	 * any cpu that may have run that now-exited task recently.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
