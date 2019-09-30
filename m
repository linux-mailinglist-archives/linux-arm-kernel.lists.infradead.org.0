Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84467C2122
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R41MNDDq+yKVGAf/hV4+j9V+6fiUjEacDIzjeQYqZwU=; b=NiHX9VuYYgyU6W
	cLSlZM8ZyTXIndFoQutH+dnDGAPS6eyeamJYD0Maez6d/uJtg4rjGOkmXh5kNrL2UU6f9KqT3AekH
	rSMGtQDv1Bd8ZueiUTOT9xZgVKc267G9G49ZVIzlV+Wdn/hrquEeLg1AGbUyRLUB+G8b2JjPuZTAI
	pHjnhzehbbkCiUez1NWLBntJE5sIllOJDIi9Pcj2vmeLKIeWdvB1ZArTAuwUDMV5BJqkmwGgOLrRT
	DkRj8T/Ia3qpm6mUpsTSHTxncLxbIbQOfSG6ZvicEeJWO1pDjmlAOMo5TCVbh7vB0l3n6Rp+mCefk
	biqSzmqEmDmrHNguErrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvKR-0001Xl-G9; Mon, 30 Sep 2019 13:03:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvKF-0001WW-P5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:02:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E9751000;
 Mon, 30 Sep 2019 06:02:49 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C1FF3F706;
 Mon, 30 Sep 2019 06:02:48 -0700 (PDT)
Date: Mon, 30 Sep 2019 14:02:46 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190930130244.GT27757@arm.com>
References: <20190927153949.29870-1-msys.mizuma@gmail.com>
 <b3dba44e-216c-f060-be8e-1c44bdc61576@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3dba44e-216c-f060-be8e-1c44bdc61576@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_060251_898324_AB5B212B 
X-CRM114-Status: GOOD (  27.69  )
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
 Masayoshi Mizuma <msys.mizuma@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 01:23:18PM +0100, Julien Grall wrote:
> Hi,
> 
> On 27/09/2019 16:39, Masayoshi Mizuma wrote:
> >From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> >
> >The system which has SVE feature crashed because of
> >the memory pointed by task->thread.sve_state was destroyed
> >by someone.
> >
> >That is because sve_state is freed while the forking the
> >child process. The child process has the pointer of sve_state
> >which is same as the parent's because the child's task_struct
> >is copied from the parent's one. If the copy_process()
> >fails as an error on somewhere, for example, copy_creds(),
> >then the sve_state is freed even if the parent is alive.
> >The flow is as follows.
> >
> >copy_process
> >         p = dup_task_struct
> >             => arch_dup_task_struct
> >                 *dst = *src;  // copy the entire region.
> >:
> >         retval = copy_creds
> >         if (retval < 0)
> >                 goto bad_fork_free;
> >:
> >bad_fork_free:
> >...
> >         delayed_free_task(p);
> >           => free_task
> >              => arch_release_task_struct
> >                 => fpsimd_release_task
> >                    => __sve_free
> >                       => kfree(task->thread.sve_state);
> >                          // free the parent's sve_state
> >
> >Move child's sve_state = NULL and clearing TIF_SVE flag
> >to arch_dup_task_struct() so that the child doesn't free the
> >parent's one.
> >
> >Cc: stable@vger.kernel.org
> >Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> 
> Looking at the log, it looks like THREAD_INFO_IN_TASK was selected before
> the bc0ee4760364. So it should be fine to backport for all the Linux tree
> contain this commit.
> 
> >Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> >Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> >Suggested-by: Dave Martin <Dave.Martin@arm.com>
> 
> I have tested the patch and can confirm that double-free disappeared after
> the patch is applied:
> 
> Tested-by: Julien Grall <julien.grall@arm.com>

Good to have that confirmed -- thanks for verifying.

[...]

> >---
> >  arch/arm64/kernel/process.c | 21 ++++-----------------
> >  1 file changed, 4 insertions(+), 17 deletions(-)
> >
> >diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> >index f674f28df..6937f5935 100644
> >--- a/arch/arm64/kernel/process.c
> >+++ b/arch/arm64/kernel/process.c
> >@@ -323,22 +323,16 @@ void arch_release_task_struct(struct task_struct *tsk)
> >  	fpsimd_release_task(tsk);
> >  }
> >-/*
> >- * src and dst may temporarily have aliased sve_state after task_struct
> >- * is copied.  We cannot fix this properly here, because src may have
> >- * live SVE state and dst's thread_info may not exist yet, so tweaking
> >- * either src's or dst's TIF_SVE is not safe.
> >- *
> >- * The unaliasing is done in copy_thread() instead.  This works because
> >- * dst is not schedulable or traceable until both of these functions
> >- * have been called.
> >- */
> 
> It would be good to explain in the commit message why tweaking "dst" in
> arch_dup_task_struct() is fine.
> 
> From my understanding, Arm64 used to have thread_info on the stack. So it
> would not be possible to clear TIF_SVE until the stack is initialized.
> 
> Now that the thread_info is part of the task, it should be valid to modify
> the flag from arch_dup_task_struct().
> 
> Note that technically, TIF_SVE does not need to be cleared from
> arch_dup_task_struct(). It could also be done from copy_thread(). But it is
> easier to keep the both changes together.
> 
> >  int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
> >  {
> >  	if (current->mm)
> >  		fpsimd_preserve_current_state();
> >  	*dst = *src;

Ack, some more explanation would be a good idea here.

Maybe the following comments are sufficient?

	/* We rely on the above assingment to initialise dst's thread_flags: */

> >+	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
> 

and

	/*
	 * Detach src's sve_state (if any) from dst so that it does not
	 * get erroneously used or freed prematurely.  dst's sve_state
	 * will be allocated on demand later on if dst uses SVE.
	 * For consistency, also clear TIF_SVE here: this could be done
	 * later in copy_process(), but to avoid tripping up future
	 * maintainers it is best not to leave TIF_SVE and sve_state in
	 * an inconsistent state, even temporarily.
	 */

> >+	dst->thread.sve_state = NULL;
> >+	clear_tsk_thread_flag(dst, TIF_SVE);

(TIF_SVE should not usually be set in the first place of course, since
we are in a fork() or clone() syscall in src.  This may not be true if
a task is created using kernel_thread() while running in the context of
some user task that entered the kernel due to a trap or syscall --
though probably nobody should be doing that.)

[...]

Cheers
---DavE

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
