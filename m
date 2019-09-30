Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50DC234A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opwLOnBKpP2O8W2g6HGoYickSKOVIeHmSXTx5lwQC1M=; b=Y6Xh0rofHFA9H+
	91YsxUQi9yJYiCM+58xx8Hd1k/x0ciagW7nGcztb8bzSONvpgVq5k3kX+i3Re/hLsSeYpPEGg37jD
	rQcfJBSWh7YHqUcPHOPG2ZwVfQbXTwVvjDhfg+xSI0ah3jy6oG5YuLb94gVvux0sv565Cc26GlAA2
	jUiloDqMpQbc8lMGfN95E988UMIP1Qz3eVZGcRQX6VTqqwJ59zcHrMtJVK2Y7bLv+KkkNTbKBEFYn
	hBcZUCm4WH5OZWOfGI8gr/2al6H2opNrOL0cIzW3XqKKOFwsiC1dCkg+7wVhcZZJADC8s7v3eOjfU
	w2kVBeIWUSmXOUf/gEfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwgp-00044c-5j; Mon, 30 Sep 2019 14:30:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwga-0003zo-O0
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:30:02 +0000
Received: by mail-qt1-x841.google.com with SMTP id f7so17274814qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 07:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sjn2J1X49Pi46tSFkNPgKivYUAqzgU4dvUWvnLT/A+k=;
 b=l1I5R6RItUb8JBSLMy2KjEKywL+N5KRy2KecVolnRM5Ue9kSrk+uZPBKH3waMz9HZC
 FaAcBM16VuGym3aAiw4UIxd6i/mG2L4vbxAekrkhGm4MeFvH/hxGLuCOsFKSE0Uh2Dtn
 XP+TMDF8+ggFz3idHPkP3Alr5WbqAQCWHQdDhC8m4Mz4bf4wgFu5iGFhbwu+qeLUMCjG
 i+hi3oZFSLmCZyZYXIxRoLn9eLh0RuZGfeNxxP91Zw69fFfxb2lEc/o7mZ7hBZY/1om8
 XH7AfkwibVGvu/e943yOQ4XYxgwAmYKGL2aralp9u1cFWhrxoqRTusZUfL2taH6zev1r
 vxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sjn2J1X49Pi46tSFkNPgKivYUAqzgU4dvUWvnLT/A+k=;
 b=Ffp+0/W2sMStT4OX4WKI2vf5I1D1CbacJ7x/YyX7PP32HcbIXvv3K/zOdbJS6vbL+d
 8FBpRSSjPqSrX9wx8vevlK1ppYhCmtoVRiup3PMfYlbxahFopM1bDGfjKTHQ4TFxFEE5
 2pt5hFqkO2ec46duJN13QN3ucClmeXNedmgDMxTXpuAzpQe71XHTPd4orkl4Q+5ZJeUb
 INS9dUli4+wqCSjiQfVxHC2mPqM3WiKcCgdvlz0jUvwzcx/0Yz2f+lcBQY6G3DJlQBU/
 pzKcTXfbaHyLPHKjlEQ1ui/IjYYbm+BuToAC8IMDthl17YhwlfqEgTQcWYsl7tb9cj+J
 1Oag==
X-Gm-Message-State: APjAAAWBoiJxlw+kns6DJ8f2NfBQ9N4ta9LDDQ6E4yXzjwAe85Li9sIj
 PVSXELBjf85dP/8ZeizRVg==
X-Google-Smtp-Source: APXvYqzOU34ghWr479mTCLLTpxF5tE/I2chBuQeakRJgM9cBvbC2TUcba3xwVWC4DZajZd/OTARrzQ==
X-Received: by 2002:a0c:b068:: with SMTP id l37mr20801495qvc.36.1569853799300; 
 Mon, 30 Sep 2019 07:29:59 -0700 (PDT)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id g192sm5504351qke.52.2019.09.30.07.29.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Sep 2019 07:29:58 -0700 (PDT)
Date: Mon, 30 Sep 2019 10:29:53 -0400
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Dave Martin <Dave.Martin@arm.com>, Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190930142952.7zwbucjvh2wxbzis@gabell>
References: <20190927153949.29870-1-msys.mizuma@gmail.com>
 <b3dba44e-216c-f060-be8e-1c44bdc61576@arm.com>
 <20190930130244.GT27757@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930130244.GT27757@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073000_781429_1EAE6841 
X-CRM114-Status: GOOD (  36.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien and Dave,

On Mon, Sep 30, 2019 at 02:02:46PM +0100, Dave Martin wrote:
> On Mon, Sep 30, 2019 at 01:23:18PM +0100, Julien Grall wrote:
> > Hi,
> > 
> > On 27/09/2019 16:39, Masayoshi Mizuma wrote:
> > >From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > >
> > >The system which has SVE feature crashed because of
> > >the memory pointed by task->thread.sve_state was destroyed
> > >by someone.
> > >
> > >That is because sve_state is freed while the forking the
> > >child process. The child process has the pointer of sve_state
> > >which is same as the parent's because the child's task_struct
> > >is copied from the parent's one. If the copy_process()
> > >fails as an error on somewhere, for example, copy_creds(),
> > >then the sve_state is freed even if the parent is alive.
> > >The flow is as follows.
> > >
> > >copy_process
> > >         p = dup_task_struct
> > >             => arch_dup_task_struct
> > >                 *dst = *src;  // copy the entire region.
> > >:
> > >         retval = copy_creds
> > >         if (retval < 0)
> > >                 goto bad_fork_free;
> > >:
> > >bad_fork_free:
> > >...
> > >         delayed_free_task(p);
> > >           => free_task
> > >              => arch_release_task_struct
> > >                 => fpsimd_release_task
> > >                    => __sve_free
> > >                       => kfree(task->thread.sve_state);
> > >                          // free the parent's sve_state
> > >
> > >Move child's sve_state = NULL and clearing TIF_SVE flag
> > >to arch_dup_task_struct() so that the child doesn't free the
> > >parent's one.
> > >
> > >Cc: stable@vger.kernel.org
> > >Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> > 
> > Looking at the log, it looks like THREAD_INFO_IN_TASK was selected before
> > the bc0ee4760364. So it should be fine to backport for all the Linux tree
> > contain this commit.

I think this patch is needed for the kernel has SVE support.
I'll add the Cc tag as Dave said:

Cc: stable@vger.kernel.org # 4.15+

So, I suppose this patch will be backported to stables 5.3.X,
5.2.X and longterm 4.19.X.
Does this make sense?

> > 
> > >Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > >Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> > >Suggested-by: Dave Martin <Dave.Martin@arm.com>
> > 
> > I have tested the patch and can confirm that double-free disappeared after
> > the patch is applied:
> > 
> > Tested-by: Julien Grall <julien.grall@arm.com>

Thank you so much!

> 
> Good to have that confirmed -- thanks for verifying.
> 
> [...]
> 
> > >---
> > >  arch/arm64/kernel/process.c | 21 ++++-----------------
> > >  1 file changed, 4 insertions(+), 17 deletions(-)
> > >
> > >diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > >index f674f28df..6937f5935 100644
> > >--- a/arch/arm64/kernel/process.c
> > >+++ b/arch/arm64/kernel/process.c
> > >@@ -323,22 +323,16 @@ void arch_release_task_struct(struct task_struct *tsk)
> > >  	fpsimd_release_task(tsk);
> > >  }
> > >-/*
> > >- * src and dst may temporarily have aliased sve_state after task_struct
> > >- * is copied.  We cannot fix this properly here, because src may have
> > >- * live SVE state and dst's thread_info may not exist yet, so tweaking
> > >- * either src's or dst's TIF_SVE is not safe.
> > >- *
> > >- * The unaliasing is done in copy_thread() instead.  This works because
> > >- * dst is not schedulable or traceable until both of these functions
> > >- * have been called.
> > >- */
> > 
> > It would be good to explain in the commit message why tweaking "dst" in
> > arch_dup_task_struct() is fine.
> > 
> > From my understanding, Arm64 used to have thread_info on the stack. So it
> > would not be possible to clear TIF_SVE until the stack is initialized.
> > 
> > Now that the thread_info is part of the task, it should be valid to modify
> > the flag from arch_dup_task_struct().
> > 
> > Note that technically, TIF_SVE does not need to be cleared from
> > arch_dup_task_struct(). It could also be done from copy_thread(). But it is
> > easier to keep the both changes together.

Thanks, let me add some comments to the commit log.

> > 
> > >  int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
> > >  {
> > >  	if (current->mm)
> > >  		fpsimd_preserve_current_state();
> > >  	*dst = *src;
> 
> Ack, some more explanation would be a good idea here.
> 
> Maybe the following comments are sufficient?
> 
> 	/* We rely on the above assingment to initialise dst's thread_flags: */

Thanks, I'll add this comment.

> 
> > >+	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
> > 
> 
> and
> 
> 	/*
> 	 * Detach src's sve_state (if any) from dst so that it does not
> 	 * get erroneously used or freed prematurely.  dst's sve_state
> 	 * will be allocated on demand later on if dst uses SVE.
> 	 * For consistency, also clear TIF_SVE here: this could be done
> 	 * later in copy_process(), but to avoid tripping up future
> 	 * maintainers it is best not to leave TIF_SVE and sve_state in
> 	 * an inconsistent state, even temporarily.
> 	 */

I'll add this comments.

> 
> > >+	dst->thread.sve_state = NULL;
> > >+	clear_tsk_thread_flag(dst, TIF_SVE);
> 
> (TIF_SVE should not usually be set in the first place of course, since
> we are in a fork() or clone() syscall in src.  This may not be true if
> a task is created using kernel_thread() while running in the context of
> some user task that entered the kernel due to a trap or syscall --
> though probably nobody should be doing that.)

Thanks!
Masa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
