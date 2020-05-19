Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D801D9789
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRO+SPXTDGcY6TKDh6JyEn9ZcuwFBKCmJbterx2zC2s=; b=u7IOjFAaTbnJo1
	oNt0LdBwn19gpQH+ZvdtH/v7hExgFDbGkGLBlpNGkZZVprQkH8O4Yr9La365tWTlCEFdlydZXfMu5
	kBhrx+9i/TOnZLS8b4k5tNQYXw1RMFwNTYMJxY6emB8sEKqvKPEY55xoqwuncTuUNfCwkZigOjIqH
	39Bh8Hmu+zh+UJLiHld5a++CO02X1vyDkShJLC8SgI7LpNyQhKt0qzEM4J4oRdMYUKZIo/ukXyXea
	OfDrRJrMzCye2XKp7/TTyydgy/9HavXgiZ8jxPJxvb/Sr5LA05v7t3+yfBOycuOz5Uf/R/wrOeIMb
	P+LZRBNjP4B5sNAAbUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2BM-0003EP-D9; Tue, 19 May 2020 13:21:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2B9-0003Df-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:21:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EE5530E;
 Tue, 19 May 2020 06:21:04 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 685D73F52E;
 Tue, 19 May 2020 06:21:03 -0700 (PDT)
Date: Tue, 19 May 2020 14:21:01 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519132100.GD5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519121818.14511-2-will@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_062107_705638_E28850C8 
X-CRM114-Status: GOOD (  17.49  )
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

On Tue, May 19, 2020 at 01:18:16PM +0100, Will Deacon wrote:
> For better or worse, GDB relies on the exact instruction sequence in the
> VDSO sigreturn trampoline in order to unwind from signals correctly.

Are you sure?  I'm struggling to find the relevant code in gdb.

> Commit 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building
> the kernel with BTI") unfortunately added a BTI C instruction to the
> start of __kernel_rt_sigreturn, which breaks this check. Thankfully,
> it's also not required, since the trampoline is called from a RET
> instruction when returning from the signal handler
> 
> Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn.
> 
> Cc: Dave Martin <dave.martin@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
> Fixes: 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building the kernel with BTI")
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/vdso/sigreturn.S | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> index 3fb13b81f780..83ac284dae79 100644
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
> +SYM_START(__kernel_rt_sigreturn, SYM_L_GLOBAL, SYM_A_ALIGN)
>  	.cfi_startproc
>  	.cfi_signal_frame
>  	.cfi_def_cfa	x29, 0
> -- 
> 2.26.2.761.g0e0b3e54be-goog
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
