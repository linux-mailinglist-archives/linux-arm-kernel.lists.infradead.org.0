Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE174EC1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apSPFrHoQgZVwzZM8nvWYMtCLHxZZuE2gi0OzOH01kw=; b=i0QHjFvttzu5kd
	dX15rS8mf2QeNlfGGBqn4KhTQ2YQ8HwR/k3SI6UJjjaEH5z8Hio3ZmAzbYKtZVF2JvFcdvv/s7cSQ
	oHrK4pvsIFXQ8+ysQws3L6jbur5gL/HLAWHqRNIZ3mmTgW4T0XX3rEpc0jg3GbQCmRk/lSKP0WDWd
	+ZNoD1xqcgvM8aGR/0xfzZvsQcCX8b9k7gz/lUqt9B9qGhg1NSWMzhjvddH3ezZKdlj8p8M0q7AjJ
	j2FbMwkDlQVHyOxVn1xwMsPuh1cbn/pPuU9HpCixjX+bGfUAm4+e1FStK0AtOGIsO0pbAW4GnsNV3
	A14VfXhhrnEXgFVQJ3bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLZJ-0001n6-AO; Fri, 21 Jun 2019 15:35:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLXc-0000fV-9p
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:33:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E7E51509;
 Fri, 21 Jun 2019 08:33:27 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2538A3F575;
 Fri, 21 Jun 2019 08:33:26 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:33:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 8/8] arm64/sve: Rework SVE trap access to use
 TIF_SVE_NEEDS_FLUSH
Message-ID: <20190621153323.GD2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-9-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-9-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083328_573247_A5AF654B 
X-CRM114-Status: GOOD (  30.54  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:56PM +0100, Julien Grall wrote:
> SVE state will be flushed on the first SVE access trap. At the moment,
> the SVE state will be generated from the FPSIMD state in software and
> then loaded in memory.
> 
> It is possible to use the newly introduce flag TIF_SVE_NEEDS_FLUSH to
> avoid a lot of memory access.
> 
> If the FPSIMD state is in memory, the SVE state will be loaded on return
> to userspace from the FPSIMD state.
> 
> If the FPSIMD state is loaded, then we need to set the vector-length before

Nit: long line, please wrap commit messages to <= 72 char where
practical.

Nit: "vector length" could plausibly be hyphenated, but we usually don't
use a hyphen (and the architectural documentation doesn't either).  There
are a couple of instances here.

> relying on return to userspace to flush the SVE registers. This is
> because the vector-length is only set when loading from memory. We also
> need to rebind the task to the CPU so the newly allocated SVE state is
> used when the task is saved.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Changes in v2:
>         - Rebind the task to the CPU if loaded in memory
> ---
>  arch/arm64/include/asm/fpsimd.h  |  2 ++
>  arch/arm64/kernel/entry-fpsimd.S |  5 +++++
>  arch/arm64/kernel/fpsimd.c       | 33 ++++++++++++++++++++++-----------
>  3 files changed, 29 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
> index f07a88552588..200c1fce52b6 100644
> --- a/arch/arm64/include/asm/fpsimd.h
> +++ b/arch/arm64/include/asm/fpsimd.h
> @@ -91,6 +91,8 @@ extern void sve_load_from_fpsimd_state(struct user_fpsimd_state const *state,
>  
>  extern unsigned int sve_get_vl(void);
>  
> +extern void sve_set_vq(unsigned long vq_minus_1);
> +
>  struct arm64_cpu_capabilities;
>  extern void sve_kernel_enable(const struct arm64_cpu_capabilities *__unused);
>  
> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
> index 35c21a707730..e3ec566d7335 100644
> --- a/arch/arm64/kernel/entry-fpsimd.S
> +++ b/arch/arm64/kernel/entry-fpsimd.S
> @@ -58,6 +58,11 @@ ENTRY(sve_get_vl)
>  	ret
>  ENDPROC(sve_get_vl)
>  
> +ENTRY(sve_set_vq)
> +	sve_load_vq x0, x1, x2
> +	ret
> +ENDPROC(sve_set_vq)
> +
>  /*
>   * Load SVE state from FPSIMD state.
>   *
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index 41ab73b12f4a..0a517ee93134 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -869,10 +869,8 @@ void fpsimd_release_task(struct task_struct *dead_task)
>  /*
>   * Trapped SVE access
>   *
> - * Storage is allocated for the full SVE state, the current FPSIMD
> - * register contents are migrated across, and TIF_SVE is set so that
> - * the SVE access trap will be disabled the next time this task
> - * reaches ret_to_user.
> + * Storage is allocated for the full SVE state and rely on the return

Maybe "return" -> "ret_to_user" to be clear about what we mean (though
the original wording was a bit vague in any case).

Since there is no storing done here any more, these two statements are
kind of unrelated now.

We could say

"Storage is allocated here for the full SVE state, so that code running
subsequently has somewhere to save the SVE registers to.  We rely on
the ret_to_user code to convert the FPSIMD registers to full SVE state
by flushing as necessary."

or something like that.

> + * code to actually convert the FPSIMD state to SVE state.
>   *
>   * TIF_SVE should be clear on entry: otherwise, fpsimd_restore_current_state()
>   * would have disabled the SVE access trap for userspace during
> @@ -890,14 +888,24 @@ asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs)
>  
>  	local_bh_disable();
>  
> -	fpsimd_save();
> -
> -	/* Force ret_to_user to reload the registers: */
> -	fpsimd_flush_task_state(current);
> +	set_thread_flag(TIF_SVE_NEEDS_FLUSH);
> +	/*
> +	 * We should not be here with SVE enabled. TIF_SVE will be set
> +	 * before returning to userspace by fpsimd_restore_current_state().
> +	 */
> +	WARN_ON(test_thread_flag(TIF_SVE));
>  
> -	fpsimd_to_sve(current);
> -	if (test_and_set_thread_flag(TIF_SVE))
> -		WARN_ON(1); /* SVE access shouldn't have trapped */
> +	/*
> +	 * When the FPSIMD state is loaded:
> +	 *	- The return path (see fpsimd_restore_current_state) requires
> +	 *	the Vector-Length t be loaded beforehand.
> +	 *	- We need to rebind the task to the CPU so the newly allocated
> +	 *	SVE state is used when the task is saved.
> +	 */
> +	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
> +		sve_set_vq(sve_vq_from_vl(current->thread.sve_vl) - 1);
> +		fpsimd_bind_task_to_cpu();
> +	}
>  
>  	local_bh_enable();
>  }
> @@ -1096,6 +1104,9 @@ void fpsimd_restore_current_state(void)
>  		/*
>  		 * The userspace had SVE enabled on entry to the kernel
>  		 * and requires the state to be flushed.
> +		 *
> +		 * We rely on the Vector-Length to be set correctly before-hand

Nit: "vector length", "beforehand"

> +		 * when converting a loaded FPSIMD state to SVE state.
>  		 */
>  		sve_flush_live();
>  		sve_user_enable();

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
