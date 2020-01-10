Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFB7136D26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:35:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88B/E4W7OMmpUqyDrMKZIJeLT0N18ygtdvmbnmx2t0M=; b=oDXgMnn/u6IXnh
	YkGMGOl9+Ngh22cgBY3IZ7hhjMd41h4fvk7CckyM36gWX3Z+3/Ghg/32l7bysekgC8GBSs+QihkUi
	WoLkT8QqrKvX+2wTIxiEHvywc5Y9ZKnnOF8Cmaz8WkxZ0W4un6TfEedM7GR0EK24p2//CDNpFdOSc
	Omv+Ln1u154yawGWKL6oP6xDQx1zgFKQd4Bws52+nrCHPPC6QP2EXmVbOSLlach3kWAXWsiok/nVk
	IA7iuK2Qj618wr7NYsHKTQ8bB8fCGeabpNAIhqh+F+wsQTfTj9jDcGfaJQGJkWlzSDG2RoWSBs/XP
	XhLx73b9J6BqFsA+h4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptVB-0004BF-4u; Fri, 10 Jan 2020 12:34:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptV1-0004A9-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:34:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D0921063;
 Fri, 10 Jan 2020 04:34:45 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3E2E03F534; Fri, 10 Jan 2020 04:34:44 -0800 (PST)
Date: Fri, 10 Jan 2020 12:34:42 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 6/7] arm64: signal: nofpsimd: Handle fp/simd context
 for signal frames
Message-ID: <20200110123441.GB8786@arrakis.emea.arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-7-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217183402.2259904-7-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_043447_563567_0DD97409 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 06:34:01PM +0000, Suzuki K Poulose wrote:
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index dd2cdc0d5be2..c648f7627035 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -173,6 +173,10 @@ static int preserve_fpsimd_context(struct fpsimd_context __user *ctx)
>  		&current->thread.uw.fpsimd_state;
>  	int err;
>  
> +	/* This must not be called when FP/SIMD support is missing */
> +	if (WARN_ON(!system_supports_fpsimd()))
> +		return -EINVAL;

I'd drop this, see below.

> @@ -191,6 +195,10 @@ static int restore_fpsimd_context(struct fpsimd_context __user *ctx)
>  	__u32 magic, size;
>  	int err = 0;
>  
> +	/* This must not be called when FP/SIMD support is missing */
> +	if (WARN_ON(!system_supports_fpsimd()))
> +		return -EINVAL;
> +
>  	/* check the magic/size information */
>  	__get_user_error(magic, &ctx->head.magic, err);
>  	__get_user_error(size, &ctx->head.size, err);
> @@ -261,6 +269,9 @@ static int restore_sve_fpsimd_context(struct user_ctxs *user)
>  	struct user_fpsimd_state fpsimd;
>  	struct sve_context sve;
>  
> +	if (WARN_ON(!system_supports_fpsimd()))
> +		return -EINVAL;
> +
>  	if (__copy_from_user(&sve, user->sve, sizeof(sve)))
>  		return -EFAULT;
>  
> @@ -371,6 +382,8 @@ static int parse_user_sigframe(struct user_ctxs *user,
>  			goto done;
>  
>  		case FPSIMD_MAGIC:
> +			if (!system_supports_fpsimd())
> +				goto invalid;
>  			if (user->fpsimd)
>  				goto invalid;
>  
> @@ -506,7 +519,7 @@ static int restore_sigframe(struct pt_regs *regs,
>  	if (err == 0)
>  		err = parse_user_sigframe(&user, sf);
>  
> -	if (err == 0) {
> +	if (err == 0 && system_supports_fpsimd()) {
>  		if (!user.fpsimd)
>  			return -EINVAL;

I don't think we need to be over paranoid here and add three/four checks
and two warnings in static functions. parse_user_sigframe() already
returns -EINVAL if SVE or FPSIMD is missing (the latter with your check
above). We don't need this additional check in restore_sigframe() and
restore_{sve_,}fpsimd_context(), the call paths are simple enough.

>  
> @@ -623,7 +636,7 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
>  
>  	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
>  
> -	if (err == 0) {
> +	if (err == 0 && system_supports_fpsimd()) {
>  		struct fpsimd_context __user *fpsimd_ctx =
>  			apply_user_offset(user, user->fpsimd_offset);
>  		err |= preserve_fpsimd_context(fpsimd_ctx);

This check is also sufficient for a static function not to have the
WARN_ON.

> diff --git a/arch/arm64/kernel/signal32.c b/arch/arm64/kernel/signal32.c
> index 12a585386c2f..97ace6919bc2 100644
> --- a/arch/arm64/kernel/signal32.c
> +++ b/arch/arm64/kernel/signal32.c
> @@ -100,6 +100,9 @@ static int compat_preserve_vfp_context(struct compat_vfp_sigframe __user *frame)
>  	compat_ulong_t fpscr, fpexc;
>  	int i, err = 0;
>  
> +	/* This must not be called when the FP/SIMD is missing */
> +	if (WARN_ON(!system_supports_fpsimd()))
> +		return -EINVAL;
>  	/*
>  	 * Save the hardware registers to the fpsimd_state structure.
>  	 * Note that this also saves V16-31, which aren't visible
> @@ -149,6 +152,10 @@ static int compat_restore_vfp_context(struct compat_vfp_sigframe __user *frame)
>  	compat_ulong_t fpscr;
>  	int i, err = 0;
>  
> +	/* This must not be called when the FP/SIMD is missing */
> +	if (WARN_ON(!system_supports_fpsimd()))
> +		return -EINVAL;
> +
>  	__get_user_error(magic, &frame->magic, err);
>  	__get_user_error(size, &frame->size, err);
>  
> @@ -223,7 +230,7 @@ static int compat_restore_sigframe(struct pt_regs *regs,
>  	err |= !valid_user_regs(&regs->user_regs, current);
>  
>  	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
> -	if (err == 0)
> +	if (err == 0 && system_supports_fpsimd())
>  		err |= compat_restore_vfp_context(&aux->vfp);
>  
>  	return err;
> @@ -419,7 +426,7 @@ static int compat_setup_sigframe(struct compat_sigframe __user *sf,
>  
>  	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
>  
> -	if (err == 0)
> +	if (err == 0 && system_supports_fpsimd())
>  		err |= compat_preserve_vfp_context(&aux->vfp);
>  	__put_user_error(0, &aux->end_magic, err);

Same comments as for the native signals.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
