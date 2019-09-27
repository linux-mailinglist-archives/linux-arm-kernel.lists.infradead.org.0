Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2500C03D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lOQh0DOKWwj1Qgb7d8lkp+xAQETK01yMDWb9EKtDlOQ=; b=kx3figbUtfCpOitC3f4UvKbxz
	N3x8/FtWNnjgdqmghVM6UVh0dSD7XqNe15SI/4ZCxaYT+w1PXTY4mf1k/r1+dQnHV07CnIgnzjhdg
	FzhDAATdAk/vaVvwjCVfRI/SKj6qpzaMbMfaZR59icdc2Zw8ioKILJSRXUUOljZf6O0J51d5rY5Zj
	Hsw+S51DLOqvmhyy1CjV31BXpolYqWPcn5HSVBqq+Bi0suMSbK2dpu1A3P7ge6XVwJUZ/4hI2rFWo
	kUarCPlx2Ylmweu/Q80tu9qbJDz8/Qm9jovodG3H3+alhPuEZ1u8JvFPJ4arxFJcIyMv/MgudWBXe
	zxKmLlJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDo3T-0006lz-QC; Fri, 27 Sep 2019 11:04:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDo3I-0006kz-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:04:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EA0928;
 Fri, 27 Sep 2019 04:04:39 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFD8C3F67D;
 Fri, 27 Sep 2019 04:04:38 -0700 (PDT)
Subject: Re: [PATCH 1/1] arm64/sve: Fix wrong free for task->thread.sve_state
To: Masayoshi Mizuma <msys.mizuma@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20190926190846.3072-1-msys.mizuma@gmail.com>
 <20190926190846.3072-2-msys.mizuma@gmail.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <32b59c08-cc59-60d6-16c7-ffb5582c2901@arm.com>
Date: Fri, 27 Sep 2019 12:04:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190926190846.3072-2-msys.mizuma@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_040444_456578_83FD7DA3 
X-CRM114-Status: GOOD (  28.41  )
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, linux-kernel@vger.kernel.org,
 Dave P Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ Dave)

Hi,

Thank you for the patch.

On 26/09/2019 20:08, Masayoshi Mizuma wrote:
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
>          p = dup_task_struct
>              => arch_dup_task_struct
>                  *dst = *src;  // copy the entire region.
> :
>          retval = copy_creds
>          if (retval < 0)
>                  goto bad_fork_free;
> :
> bad_fork_free:
> ...
>          delayed_free_task(p);
>            => free_task
>               => arch_release_task_struct
>                  => fpsimd_release_task
>                     => __sve_free
>                        => kfree(task->thread.sve_state);
>                           // free the parent's sve_state

The flow makes sense to me and I agree you would end up to free the parent's state.

> 
> Add a flag in task->thread which shows the fork is in progress.
> If the fork is in progress, that means the child has the pointer
> to the parent's sve_state, doesn't free the sve_state.

I haven't fully investigate it yet but I was wondering if we could just clear 
task->thread.sve_state for the child in arch_dup_task_struct().

I saw the comment on top of function mentioning potential issue to do it there. 
I understand that you may not be able to clear TIF_SVE in the function, but I 
don't understand why clearing just task->thread.sve_state would be an issue.

The only risk I can see is TIF_SVE may be set with task->thread.sve_state to be 
NULL. But this is a new task, so I don't think there are risk here to have it 
unsync. Dave?

> 
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> ---
>   arch/arm64/include/asm/processor.h | 1 +
>   arch/arm64/kernel/fpsimd.c         | 6 ++++--
>   arch/arm64/kernel/process.c        | 2 ++
>   3 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5623685c7d13..3ca3e350145a 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -143,6 +143,7 @@ struct thread_struct {
>   	unsigned long		fault_address;	/* fault info */
>   	unsigned long		fault_code;	/* ESR_EL1 value */
>   	struct debug_info	debug;		/* debugging */
> +	unsigned int		fork_in_progress;
>   #ifdef CONFIG_ARM64_PTR_AUTH
>   	struct ptrauth_keys	keys_user;
>   #endif
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index 37d3912cfe06..8641db4cb062 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -202,8 +202,10 @@ static bool have_cpu_fpsimd_context(void)
>    */
>   static void __sve_free(struct task_struct *task)
>   {
> -	kfree(task->thread.sve_state);
> -	task->thread.sve_state = NULL;
> +	if (!task->thread.fork_in_progress) {
> +		kfree(task->thread.sve_state);
> +		task->thread.sve_state = NULL;
> +	}
>   }
>   
>   static void sve_free(struct task_struct *task)
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index a47462def04b..8ac0ee4e5f76 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -347,6 +347,7 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
>   	if (current->mm)
>   		fpsimd_preserve_current_state();
>   	*dst = *src;
> +	dst->thread.fork_in_progress = 1;
>   
>   	return 0;
>   }
> @@ -365,6 +366,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>   	 * and disable discard SVE state for p:
>   	 */
>   	clear_tsk_thread_flag(p, TIF_SVE);
> +	p->thread.fork_in_progress = 0;
>   	p->thread.sve_state = NULL;
>   
>   	/*
> 

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
