Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF5C05C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+1HSBqge6iicuuvuo6RQnydSylX7rQlDi6kJOo9o48=; b=By927+WV/C+gnm
	UScMHykW5ZAkE/lAEElyZZsZVduqvWIsWPRivSWyxsJyzqOZBcdGrmKcWY/9AY7gL7yPHFeedaSHr
	gi6/HUQPQ9Trj4bcTdoxew5CkZBYIJXvIgpEW6fpp4ivBVPBY4I624xdDgdRuG8fDp9xmBMXv5NfS
	EMtJo/QqXlxT2OcruWU2U5ycHUDPXSCC66ZWuIprTtIOrmpQdp2jek+y5qHvDnKSwQFW3rHGsElFu
	wSjgeOVoMXOM7MOGBc8mg80gQNwzwWSK9Jj4IO5R2xHELfMBCcgjmHTLrbFJXeq7YflDptHKExwQj
	S81j1uH6DyzVL+d9D1kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpjr-0006CG-Cl; Fri, 27 Sep 2019 12:52:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpjg-0006B6-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:52:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E7231000;
 Fri, 27 Sep 2019 05:52:33 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A8853F67D;
 Fri, 27 Sep 2019 05:52:32 -0700 (PDT)
Date: Fri, 27 Sep 2019 13:52:30 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH 1/1] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190927125228.GQ27757@arm.com>
References: <20190926190846.3072-1-msys.mizuma@gmail.com>
 <20190926190846.3072-2-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926190846.3072-2-msys.mizuma@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_055236_520254_73842F9E 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Sep 26, 2019 at 03:08:46PM -0400, Masayoshi Mizuma wrote:
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
> Add a flag in task->thread which shows the fork is in progress.
> If the fork is in progress, that means the child has the pointer
> to the parent's sve_state, doesn't free the sve_state.
> 
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> ---
>  arch/arm64/include/asm/processor.h | 1 +
>  arch/arm64/kernel/fpsimd.c         | 6 ++++--
>  arch/arm64/kernel/process.c        | 2 ++
>  3 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5623685c7d13..3ca3e350145a 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -143,6 +143,7 @@ struct thread_struct {
>  	unsigned long		fault_address;	/* fault info */
>  	unsigned long		fault_code;	/* ESR_EL1 value */
>  	struct debug_info	debug;		/* debugging */
> +	unsigned int		fork_in_progress;
>  #ifdef CONFIG_ARM64_PTR_AUTH
>  	struct ptrauth_keys	keys_user;
>  #endif
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index 37d3912cfe06..8641db4cb062 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -202,8 +202,10 @@ static bool have_cpu_fpsimd_context(void)
>   */
>  static void __sve_free(struct task_struct *task)
>  {
> -	kfree(task->thread.sve_state);
> -	task->thread.sve_state = NULL;
> +	if (!task->thread.fork_in_progress) {
> +		kfree(task->thread.sve_state);
> +		task->thread.sve_state = NULL;
> +	}
>  }
>  
>  static void sve_free(struct task_struct *task)
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index a47462def04b..8ac0ee4e5f76 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -347,6 +347,7 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
>  	if (current->mm)
>  		fpsimd_preserve_current_state();
>  	*dst = *src;
> +	dst->thread.fork_in_progress = 1;
>  
>  	return 0;
>  }
> @@ -365,6 +366,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  	 * and disable discard SVE state for p:
>  	 */
>  	clear_tsk_thread_flag(p, TIF_SVE);
> +	p->thread.fork_in_progress = 0;
>  	p->thread.sve_state = NULL;

There's definitely a problem here, but a simpler fix is probably to
NULL sve_state and clear TIF_SVE for dst at the same time.

Once upon a time, I had to cope with the thread_flags not being copied
as part of task_struct here, which is one reason why the code is the
(broken) way it is, but this is ancient history...

Commit c02433dd6de3 ("arm64: split thread_info from task stack") was
merged in v4.10 and predates SVE support anyway.


So can just do the following (untested) and delete the confusing
comments?

Cheers
---Dave

--8<--


diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index f674f28..6937f59 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -323,22 +323,16 @@ void arch_release_task_struct(struct task_struct *tsk)
 	fpsimd_release_task(tsk);
 }
 
-/*
- * src and dst may temporarily have aliased sve_state after task_struct
- * is copied.  We cannot fix this properly here, because src may have
- * live SVE state and dst's thread_info may not exist yet, so tweaking
- * either src's or dst's TIF_SVE is not safe.
- *
- * The unaliasing is done in copy_thread() instead.  This works because
- * dst is not schedulable or traceable until both of these functions
- * have been called.
- */
 int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 {
 	if (current->mm)
 		fpsimd_preserve_current_state();
 	*dst = *src;
 
+	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
+	dst->thread.sve_state = NULL;
+	clear_tsk_thread_flag(dst, TIF_SVE);
+
 	return 0;
 }
 
@@ -352,13 +346,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 	memset(&p->thread.cpu_context, 0, sizeof(struct cpu_context));
 
 	/*
-	 * Unalias p->thread.sve_state (if any) from the parent task
-	 * and disable discard SVE state for p:
-	 */
-	clear_tsk_thread_flag(p, TIF_SVE);
-	p->thread.sve_state = NULL;
-
-	/*
 	 * In case p was allocated the same task_struct pointer as some
 	 * other recently-exited task, make sure p is disassociated from
 	 * any cpu that may have run that now-exited task recently.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
