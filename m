Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC8DC0957
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 18:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjtri5ejWb+3iffkC1Hh53dQS9CBi2bwznPYs636Kmo=; b=H+EtFiO69LiBmG
	tFM8l4E6pnObdK+rB2bmEQ/Gkk9gpoI6DW+5lwECUC7icTR4VYwrRyzfol1k76oCG6v8gBo8KB8co
	TzBk6Woi5gw9uzPhiRUzf1eJwarYduLtQcoSHWEykFsfVVztkndZ6LbsL1SwM8GNb0A4LFejx1RlT
	3z9ADWz+jluOwuqPnof9StuG2PQ0TtlF21xGRiPfnHU3jJoVEXQ7VU8Ko38FIDx/9n94kiMg8ZJT5
	mZiGTHb0ycc1z2/o0Vri+kOFrU1HABXTNnVlq608+tmcYczwhH10VL06SZ0N+j46PjYbSYFD5EnJy
	a/l2dMjBRyectgOmC0Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDsuQ-00031Z-6E; Fri, 27 Sep 2019 16:15:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDsuE-00030a-00
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 16:15:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32B2A1000;
 Fri, 27 Sep 2019 09:15:39 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F5BC3F534;
 Fri, 27 Sep 2019 09:15:38 -0700 (PDT)
Date: Fri, 27 Sep 2019 17:15:36 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190927161535.GS27757@arm.com>
References: <20190927153949.29870-1-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927153949.29870-1-msys.mizuma@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_091542_127132_99D2E9B8 
X-CRM114-Status: GOOD (  23.57  )
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

On Fri, Sep 27, 2019 at 11:39:49AM -0400, Masayoshi Mizuma wrote:
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

You could also add:

--8<--
There is no need to wait until copy_process() to clear TIF_SVE for
dst, becuase the thread flags for dst are initialized already by
copying the src task_struct.

This change simplifies the code, so get rid of comments that are no
longer needed.
-->8--

> 
> Cc: stable@vger.kernel.org

Since SVE only exists from v4.15, it may be helpful to specify that,
i.e., replace that Cc line with:

Cc: <stable@vger.kernel.org> # 4.15.x-


Otherwise, I'm happy to see this applied, but I'd like somebody to
confirm that this change definitely fixes the bug.

Cheers
---Dave

[...]

> Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> Suggested-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  arch/arm64/kernel/process.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index f674f28df..6937f5935 100644
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
> @@ -351,13 +345,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
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
