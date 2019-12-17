Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B594512355B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 20:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YJ0Ckq1XfRs45iPcX+9e1ErUdqIH6NZmBBK14oda438=; b=dKL+eTBZ+hXki4+b0rQSi56sO
	YRLpYe4Cz0fXB/nsSgwic6k+ILNYCvPRjIVNBx8GfC1xxbjuOfV4o1H5UJxJNuAUKemN3ei0gT7Dr
	oBy0aUJyYSUoL4z1Wj98g4EWxc5Qop6yp4q2697sItcVgqgWLaoYn6L6FHn67dmPCG0JGebBCsL7C
	Rpq/NBqNyTPk3ItnxRhCFdAhNmAHn2ZzHnMH2FGhUYRl89t6kqwhII59ObAodf0DhfFN2ELa6rxzT
	UpoQ8XRfHuQJy5If7NqU5I7f9rFtPu16eimTXsEBWroQLgbHMiDrhwkKDE74EmNiOkpaBq5RGwrVe
	AT3oNUtoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihIAL-0006jt-4E; Tue, 17 Dec 2019 19:05:53 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihIAD-0006j0-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 19:05:46 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihIA9-0004hk-CM; Tue, 17 Dec 2019 20:05:41 +0100
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle =?UTF-8?Q?TIF=5FFOREIG?=
 =?UTF-8?Q?N=5FFPSTATE=20flag=20cleanly?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 17 Dec 2019 19:05:41 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191217183402.2259904-8-suzuki.poulose@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
Message-ID: <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, mark.rutland@arm.com,
 dave.martin@arm.com, catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 christoffer.dall@arm.com, marc.zyngier@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_110545_405961_82F2DBD6 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 2019-12-17 18:34, Suzuki K Poulose wrote:
> We detect the absence of FP/SIMD after an incapable CPU is brought 
> up,
> and by then we have kernel threads running already with
> TIF_FOREIGN_FPSTATE set
> which could be set for early userspace applications (e.g, modprobe 
> triggered
> from initramfs) and init. This could cause the applications to loop
> forever in
> do_nofity_resume() as we never clear the TIF flag, once we now know 
> that
> we don't support FP.
>
> Fix this by making sure that we clear the TIF_FOREIGN_FPSTATE flag
> for tasks which may have them set, as we would have done in the 
> normal
> case, but avoiding touching the hardware state (since we don't 
> support any).
>
> Also to make sure we handle the cases seemlessly we categorise the
> helper functions to two :
>  1) Helpers for common core code, which calls into take appropriate
>     actions without knowing the current FPSIMD state of the CPU/task.
>
>     e.g fpsimd_restore_current_state(), fpsimd_flush_task_state(),
>         fpsimd_save_and_flush_cpu_state().
>
>     We bail out early for these functions, taking any appropriate 
> actions
>     (e.g, clearing the TIF flag) where necessary to hide the handling
>     from core code.
>
>  2) Helpers used when the presence of FP/SIMD is apparent.
>     i.e, save/restore the FP/SIMD register state, modify the CPU/task
>     FP/SIMD state.
>     e.g,
>
>     fpsimd_save(), task_fpsimd_load() - save/restore task FP/SIMD 
> registers
>
>     fpsimd_bind_task_to_cpu()  \
>                                 - Update the "state" metadata for 
> CPU/task.
>     fpsimd_bind_state_to_cpu() /
>
>     fpsimd_update_current_state() - Update the fp/simd state for the 
> current
>                                     task from memory.
>
>     These must not be called in the absence of FP/SIMD. Put in a 
> WARNING
>     to make sure they are not invoked in the absence of FP/SIMD.
>
> KVM also uses the TIF_FOREIGN_FPSTATE flag to manage the FP/SIMD 
> state
> on the CPU. However, without FP/SIMD support we trap all accesses and
> inject undefined instruction. Thus we should never "load" guest 
> state.
> Add a sanity check to make sure this is valid.

Yes, but no, see below.

>
> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>

No idea who that guy is. It's a fake! ;-)

> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/kernel/fpsimd.c  | 31 +++++++++++++++++++++++++++----
>  arch/arm64/kvm/hyp/switch.c |  9 +++++++++
>  2 files changed, 36 insertions(+), 4 deletions(-)
>

[...]

> diff --git a/arch/arm64/kvm/hyp/switch.c 
> b/arch/arm64/kvm/hyp/switch.c
> index 72fbbd86eb5e..9696ebb5c13a 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -28,10 +28,19 @@
>  /* Check whether the FP regs were dirtied while in the host-side run
> loop: */
>  static bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
>  {
> +	/*
> +	 * When the system doesn't support FP/SIMD, we cannot rely on
> +	 * the state of _TIF_FOREIGN_FPSTATE. However, we will never
> +	 * set the KVM_ARM64_FP_ENABLED, as the FP/SIMD accesses always
> +	 * inject an abort into the guest. Thus we always trap the
> +	 * accesses.
> +	 */
>  	if (vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
>  		vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
>  				      KVM_ARM64_FP_HOST);
>
> +	WARN_ON(!system_supports_fpsimd() &&
> +		(vcpu->arch.flags & KVM_ARM64_FP_ENABLED));

Careful, this will panic the host if it happens on a !VHE host
(calling non-inline stuff from a __hyp_text function is usually
not a good idea).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
