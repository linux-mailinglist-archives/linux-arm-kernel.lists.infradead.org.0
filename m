Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1BC3185
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YZT7h9uaIae+woXq6grFYcHnt5PEHQRqJraPBwLHv0=; b=lIQnVy/6WfKynM
	S23/JV5VVyR2nmd7fk2HzXnxLzXTXto5oz4/f6REBEx1QpGNsXdxCQcyS5/4FWwIF5kG4psibsVq1
	CPgeI9ebfNw9x0dk6LgsBmxmlUp/eBJALRx00Kp39TkzozlxTEbDB4M2Fl2UuLFc9evSTLitskP05
	EZKuenOusXlWcO5SwLmiqkkt9lcZ/p8IR6wAvpntLkrda3bBU66dKEeFWMfc0MnFE9LQlRgO+QFbN
	plzRAhaSx35zo1crOgNREGyfrTI96D9oOMpzbk0+CnJn75yhN8v9vKQw5y6XVt1aCnQD0FpkyIZSs
	p2vybm96k5aj8g8mGWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFTJ-0006P5-2a; Tue, 01 Oct 2019 10:33:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFTA-0006OH-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:33:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81F3A1000;
 Tue,  1 Oct 2019 03:33:23 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E8923F739;
 Tue,  1 Oct 2019 03:33:22 -0700 (PDT)
Date: Tue, 1 Oct 2019 11:33:20 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH v3] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20191001103317.GV27757@arm.com>
References: <20190930205600.25542-1-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930205600.25542-1-msys.mizuma@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_033324_933869_47014555 
X-CRM114-Status: GOOD (  29.40  )
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 04:56:00PM -0400, Masayoshi Mizuma wrote:
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> 
> The system which has SVE feature crashed because of
> the memory pointed by task->thread.sve_state was destroyed
> by someone.
> 
> That is because sve_state is freed while the forking the
> child process. The child process has the pointer of sve_state
> which is same as the parent's because the child's task_struct
> is copied from the parent's one. If the copy_process()
> fails as an error on somewhere, for example, copy_creds(),
> then the sve_state is freed even if the parent is alive.
> The flow is as follows.
> 
> copy_process
>         p = dup_task_struct
>             => arch_dup_task_struct
>                 *dst = *src;  // copy the entire region.
> :
>         retval = copy_creds
>         if (retval < 0)
>                 goto bad_fork_free;
> :
> bad_fork_free:
> ...
>         delayed_free_task(p);
>           => free_task
>              => arch_release_task_struct
>                 => fpsimd_release_task
>                    => __sve_free
>                       => kfree(task->thread.sve_state);
>                          // free the parent's sve_state
> 
> Move child's sve_state = NULL and clearing TIF_SVE flag
> to arch_dup_task_struct() so that the child doesn't free the
> parent's one.
> There is no need to wait until copy_process() to clear TIF_SVE for
> dst, because the thread flags for dst are initialized already by
> copying the src task_struct.
> This change simplifies the code, so get rid of comments that are no
> longer needed.
> 
> As a note, arm64 used to have thread_info on the stack. So it
> would not be possible to clear TIF_SVE until the stack is initialized.
> From commit c02433dd6de3 ("arm64: split thread_info from task stack"),
> the thread_info is part of the task, so it should be valid to modify
> the flag from arch_dup_task_struct().
> 
> Cc: stable@vger.kernel.org # 4.15.x-
> Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> Suggested-by: Dave Martin <Dave.Martin@arm.com>
> Tested-by: Julien Grall <julien.grall@arm.com>

Looks OK to me:

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

> ---
>  arch/arm64/kernel/process.c | 32 +++++++++++++++-----------------
>  1 file changed, 15 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index a47462def04b..ef7aa909bfda 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -332,22 +332,27 @@ void arch_release_task_struct(struct task_struct *tsk)
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
> +	/* We rely on the above assignment to initialize dst's thread_flags: */
> +	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
> +
> +	/*
> +	 * Detach src's sve_state (if any) from dst so that it does not
> +	 * get erroneously used or freed prematurely.  dst's sve_state
> +	 * will be allocated on demand later on if dst uses SVE.
> +	 * For consistency, also clear TIF_SVE here: this could be done
> +	 * later in copy_process(), but to avoid tripping up future
> +	 * maintainers it is best not to leave TIF_SVE and sve_state in
> +	 * an inconsistent state, even temporarily.
> +	 */
> +	dst->thread.sve_state = NULL;
> +	clear_tsk_thread_flag(dst, TIF_SVE);
> +
>  	return 0;
>  }
>  
> @@ -360,13 +365,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  
>  	memset(&p->thread.cpu_context, 0, sizeof(struct cpu_context));
>  
> -	/*
> -	 * Unalias p->thread.sve_state (if any) from the parent task
> -	 * and disable discard SVE state for p:
> -	 */
> -	clear_tsk_thread_flag(p, TIF_SVE);
> -	p->thread.sve_state = NULL;
> -
>  	/*
>  	 * In case p was allocated the same task_struct pointer as some
>  	 * other recently-exited task, make sure p is disassociated from
> -- 
> 2.18.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
