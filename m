Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E17D1DAEE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50OtgjpAropGEhmbHMWim+OYXaJFmhi9ULo3rahNLJE=; b=Ws5TUZFyEVPbW5
	vmoA5geDoUVXuhm9bQY89fHgNDtZ447JYhxXu8MBcDPEA+ddp5wvqPflFIXuf63iG7H5pac+B4K3t
	r8mYwfRXT0KnF4sZrhDfNmj1OLP53NKld2sKygmUOvIcI1THm2KF32TTdN3RaWulTe//Prg3zkeur
	mxkBNiJtj4Sr01DEwVR9OOH2GZow1wPFqOackSzAON9tmDAHyUkI6J6d3sY/CmmJX+dCHk3BQ0gKN
	kBujPQR/lGsVhJWg7rfxWDxRy1r1SFRKb9lv1GkX3g7lQ6Iw4blNZAvOILaJaguwmyF0WYPaVfCdC
	zz7r8xgx0DI3m9o2oCfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbL7B-00014N-UX; Wed, 20 May 2020 09:34:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbL6s-00013h-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:34:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37B6430E;
 Wed, 20 May 2020 02:33:58 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5224D3F68F;
 Wed, 20 May 2020 02:33:57 -0700 (PDT)
Date: Wed, 20 May 2020 10:33:55 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: vdso: Don't prefix sigreturn trampoline
 with a BTI C instruction
Message-ID: <20200520093354.GJ5031@arm.com>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-2-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519162821.16857-2-will@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_023358_975949_D57BA11C 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 05:28:20PM +0100, Will Deacon wrote:
> For better or worse, GDB relies on the exact instruction sequence in the
> VDSO sigreturn trampoline in order to unwind from signals correctly.
> Commit c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
> unfortunately added a BTI C instruction to the start of __kernel_rt_sigreturn,
> which breaks this check. Thankfully, it's also not required, since the
> trampoline is called from a RET instruction when returning from the signal
> handler
> 
> Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn,
> and do the same for the 32-bit VDSO as well for good measure.
> 
> Cc: Dave Martin <dave.martin@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
> Fixes: c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/vdso/sigreturn.S   | 11 +++++++++--
>  arch/arm64/kernel/vdso32/sigreturn.S | 16 ++++++++--------
>  2 files changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> index 3fb13b81f780..0c921130002a 100644
> --- a/arch/arm64/kernel/vdso/sigreturn.S
> +++ b/arch/arm64/kernel/vdso/sigreturn.S
> @@ -15,7 +15,14 @@
>  	.text
>  
>  	nop
> -SYM_FUNC_START(__kernel_rt_sigreturn)
> +/*
> + * GDB relies on being able to identify the sigreturn instruction sequence to
> + * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> + * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
> + * this function is only ever called from a RET and so omitting the landing pad
> + * is perfectly fine.
> + */

Can we cross-reference or duplicate (perhaps abridged) this comment for
vdso32?

Can we also fix the comment by the definition of SYM_FUNC_START()?

SYM_FUNC_START() supersedes ENTRY only for PCS-conformant function entry
points.  Any code with a wacky special-case interface should not not be
using this.

[...]

> +SYM_CODE_START(__kernel_rt_sigreturn)
>  	.cfi_startproc
>  	.cfi_signal_frame
>  	.cfi_def_cfa	x29, 0
> @@ -24,6 +31,6 @@ SYM_FUNC_START(__kernel_rt_sigreturn)
>  	mov	x8, #__NR_rt_sigreturn
>  	svc	#0
>  	.cfi_endproc
> -SYM_FUNC_END(__kernel_rt_sigreturn)
> +SYM_CODE_END(__kernel_rt_sigreturn)
>  
>  emit_aarch64_feature_1_and
> diff --git a/arch/arm64/kernel/vdso32/sigreturn.S b/arch/arm64/kernel/vdso32/sigreturn.S
> index 620524969696..b36d4e2267a3 100644
> --- a/arch/arm64/kernel/vdso32/sigreturn.S
> +++ b/arch/arm64/kernel/vdso32/sigreturn.S
> @@ -17,39 +17,39 @@
>  	.save {r0-r15}
>  	.pad #COMPAT_SIGFRAME_REGS_OFFSET
>  	nop
> -SYM_FUNC_START(__kernel_sigreturn_arm)
> +SYM_CODE_START(__kernel_sigreturn_arm)

...although do we actually need this?  32-bit doesn't have BTI.

But for the reasons given above, this is not a "function" and so
SYM_FUNC_START() is trap for future maintenance even if it makes no
difference now.

[...]

Either way,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
